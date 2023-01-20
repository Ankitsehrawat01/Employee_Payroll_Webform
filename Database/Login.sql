Create or Alter procedure sp_login
(@E_Mail varchar(max), @Password varchar(max))
as
declare @count int
begin try     
select @count = count(E_Mail) from Registration_Details where (E_Mail=@E_Mail and Password=@Password) 
if(@count = 1)
begin
insert into Login_Details (E_Mail,Password) values ( @E_Mail, @Password)
select * from Registration_Details where (E_Mail= @E_Mail and Password= @Password)
select 1 as ReturnCode
end
else
begin
select -1 as ReturnCode
end
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
End catch