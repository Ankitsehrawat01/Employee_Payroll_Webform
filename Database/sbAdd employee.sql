Create or alter procedure sp_AddpayrollDetails
(@Name varchar(max), @Profile_Image varchar(max), @Gender char, 
@Department varchar(max), @Salary bigint, @Start_Date varchar(max), @Notes varchar(max))
as
Insert Into Employee_Details Values (@Name, @Profile_Image, @Gender, @Department, @Salary, @Start_Date, @Notes)
go

execute sp_AddDetails "Ankit", 1, M, IT, 30000, '2022-7-04', Hii 

drop procedure sp_AddpayrollDetails