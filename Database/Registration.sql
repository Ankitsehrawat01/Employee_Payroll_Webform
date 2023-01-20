Create or alter procedure sp_AddregistrationDetails
(@First_Name varchar(max), @Last_Name varchar(max), @E_Mail varchar(max), 
@Phone bigint, @Password varchar(max), @Confirm_Password varchar(max))
as
begin try
declare @Count int
declare @ReturnCode int
select @Count = count(E_Mail) from Registration_Details where E_Mail = @E_Mail
if(@Count>0)
begin
set @ReturnCode = -1
end
else
begin
set @ReturnCode = 1
insert into Registration_Details(First_Name,Last_Name,E_Mail,Phone,Password, Confirm_Password) values ( @First_Name, @Last_Name , @E_Mail, @Phone, @Password, @Confirm_Password)
end
select @ReturnCode as ReturnValue
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
End catch