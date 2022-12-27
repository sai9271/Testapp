CREATE TABLE dbo.student  
(  
Roll_No Int ,
First_Name Varchar (20) ,    
Last_Name Varchar (20) ,    
Age Int ,  
Marks Int    
) ;
INSERT into  dbo.student(Roll_No,First_Name,Last_Name,Age,Marks)
VALUES(101,'Sahithi','Mammula',20,100);
INSERT into  dbo.student(Roll_No,First_Name,Last_Name,Age,Marks)
VALUES(101,'Sahi','Mam',50,200);
INSERT into  dbo.student(Roll_No,First_Name,Last_Name,Age,Marks)
VALUES(101,'Sahi','Mam',50,200);

ALTER TABLE dbo.student ADD shoppingmall VARCHAR(50);
SELECT * FROM dbo.student