create database Payroll_Details_WebForm

Create Table Employee_Details( Emp_Id int primary key identity(1,1),
Name varchar(max), Profile_Image varchar(max), Gender char, 
Department varchar(max), Salary bigint, Start_Date varchar(max), Notes varchar(max))

select * from Employee_Details

truncate table Employee_Details

Create Table Registration_Details( Reg_Id int primary key identity(1,1),
First_Name varchar(max), Last_Name varchar(max), E_Mail varchar(max), 
Phone bigint, Password varchar(max), Confirm_Password varchar(max))

select * from Registration_Details

truncate table Registration_Details

drop table Registration_Details

Create Table Login_Details( login_Id int primary key identity(1,1),
E_Mail varchar(max), Password varchar(max))

select * from Login_Details