create database hospitalbill;
create table bill(
billno int identity,
billdate date,
patient varchar(250),
Gender varchar(10),
birthday date not null,
Address varchar(500),
EmailId varchar(30),
mobile bigint,
investigation varchar(500),
fee bigint
);
select*from bill
insert into bill values ('01/01/2022','qwerty','Male','01/01/2022','123','qwerty@gmail.com','1234567891','abc','1500');
/*.....................................................................................................................*/
create procedure sp_Add(
@billdate date,
@patient varchar(250),
@Gender varchar(10),
@birthday date,
@Address varchar(500),
@EmailId varchar(30),
@mobile bigint,
@investigation varchar(500),
@fee bigint
)
as
begin
insert into bill(billdate,patient,Gender,birthday,Address,EmailId,mobile,investigation,fee)
values (@billdate,@patient,@Gender,@birthday,@Address,@EmailId,@mobile,@investigation,@fee)
end;
exec sp_Add '2022/02/02','test','Male','2022/02/02','321','test@gmail.com','9874561239','qwerty',1500;
/*....................................................................................................*/
create procedure sp_Edit( 
@billno int,      
@billdate date,
@patient varchar(250),
@Gender varchar(10),
@birthday date,
@Address varchar(500),
@EmailId varchar(30),
@mobile bigint,
@investigation varchar(500),
@fee bigint     
)        
as
begin
update bill set 
billdate=@billdate,
patient=@patient,
Gender=@Gender,
birthday=@birthday,
Address=@Address,
EmailId=@EmailId,
mobile=@mobile,
investigation=@investigation,
fee=@fee 
where billno=@billno;
end;
/*.............................*/
create procedure sp_GETALL
as
begin
select * from bill
end;
exec sp_GETALL;
/*.............................*/
create procedure sp_Delete(
@billno Int
)
as
begin
delete from bill where billno=@billno /* where is the clouse to check the condition */
end;
exec sp_Delete '2';
