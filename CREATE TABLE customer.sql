CREATE TABLE customer
   (
       custid VARCHAR(6),
       fname VARCHAR(30),
       mname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE,
      CONSTRAINT customer_custid_pk PRIMARY KEY(custid)   
   );
   select * FROM customer
   INSERT INTO customer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06');
INSERT INTO customer VALUES('C00002','Avinash','Sunder','Minha','Delhi','9876532109','Service','1974-10-16');
INSERT INTO customer VALUES('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26');
INSERT INTO customer VALUES('C00004','Parul',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03');
INSERT INTO customer VALUES('C00005','Naveen','Chandra','Aedekar','Mumbai','8976523190','Service','1976-09-19');
INSERT INTO customer VALUES('C00006','Chitresh',null,'Barwe','Mumbai','7651298321','Student','1992-11-06');
INSERT INTO customer VALUES('C00007','Amit','Kumar','Borkar','Mumbai','9875189761','Student','1981-09-06');
INSERT INTO customer VALUES('C00008','Nisha',null,'Damle','Mumbai','7954198761','Service','1975-12-03');
INSERT INTO customer VALUES('C00009','Abhishek',null,'Dutta','Kolkata','9856198761','Service','1973-05-22');
INSERT INTO customer  VALUES('C00010','Shankar',null,'Nair','Chennai','8765489076','Service','1976-07-12');

Write a query to display the customer number, firstname, customer’s date of birth. Display in sorted order of date of birth year and within that sort by firstname.
Solution:  

SELECT custid, fname, mname,dob 
FROM customer 
ORDER BY EXTRACT(year FROM dob), fname ASC;

Write a query to display the customer’s number, first name, and middle name. The customer’s who don’t have a middle name, for them display the last name. Give the alias name as Cust_Name.
Solution:

SELECT custid, fname, IF(mname IS NOT NULL, mname, ltname)
AS Cust_Name
FROM customer;


Problem#3:

Write a query to display account number, customer’s number, customer’s firstname,lastname,account opening date.
Solution:

SELECT account.acnumber, customer.custid, customer.fname, customer.ltname, account.aod
FROM account
INNER JOIN customer 
ON account.custid = customer.custid;


Problem # 4:

Write a query to display the number of customer’s from Delhi. Give the count an alias name of Cust_Count.
Solution:

SELECT 
		(SELECT COUNT(city)
		FROM customer
		WHERE city=’Delhi’)
AS Cust_Count;


Problem # 5:

Write a query to display  the customer number, customer firstname,account number for the customer’s whose accounts were created after 15th of any month.
Solution:

SELECT account.custid, customer.fname, account.acnumber
FROM account, customer
WHERE account.custid = customer.custid
AND day(aod) > 15;
 


Problem # 6:

Write a query to display the female customers firstname, city and account number who are not into business, service or studies.
Solution:

SELECT DISTINCT customer.fname, customer.city, account.acnumber
FROM account, customer
WHERE account.custid = customer.custid
AND NOT(occupation=”business” or occupation=”service” or occupation=”student”);


Problem # 7:

Write a query to display city name and count of branches in that city. Give the count of branches an alias name of Count_Branch.
Solution:

SELECT bcity, count(*)
AS Count_Branch 
FROM branch
Group By bcity;


Problem # 8:

Write a query to display account id, customer’s firstname, customer’s lastname for the customer’s whose account is Active.
Solution:

SELECT account.acnumber, customer.fname, customer.ltname
FROM account, customer
WHERE account.custid = customer.custid
AND astatus = “Active”;


Problem # 9:

Write a query to display the customer’s number, customer’s firstname, branch id and loan amount for people who have taken loans.
Solution:

SELECT customer.custid, customer.fname, branch.bid, loan.loan_amount
FROM ((loan
INNER JOIN customer ON loan.custid=customer.custid)
INNER JOIN branch ON loan.bid=branch.bid);


Problem # 10:

Write a query to display customer number, customer name, account number where the account status is terminated.
Solution:

SELECT customer.custid, customer.fname, account.acnumber
FROM account, customer
WHERE account.custid = customer.custid
AND astatus = “Terminated”;