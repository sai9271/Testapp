CREATE TABLE trandetails
    (   
     tnumber VARCHAR(6),
     acnumber VARCHAR(6),
     dot DATE,
     medium_of_transaction VARCHAR(20),
     transaction_type VARCHAR(20),
     transaction_amount INT(7),    
     CONSTRAINT trandetails_tnumber_pk PRIMARY KEY(tnumber),
     CONSTRAINT trandetails_acnumber_fk FOREIGN KEY(acnumber) REFERENCES account(acnumber)  
    );
    
    SELECT * FROM trandetails

INSERT INTO trandetails VALUES('T00001','A00001','2013-01-01','Cheque','Deposit',2000);
INSERT INTO trandetails VALUES('T00002','A00001','2013-02-01','Cash','Withdrawal',1000);
INSERT INTO trandetails VALUES('T00003','A00002','2013-01-01','Cash','Deposit',2000);
INSERT INTO trandetails VALUES('T00004','A00002','2013-02-01','Cash','Deposit',3000);
INSERT INTO trandetails VALUES('T00005','A00007','2013-01-11','Cash','Deposit',7000);
INSERT INTO trandetails VALUES('T00006','A00007','2013-01-13','Cash','Deposit',9000);
INSERT INTO trandetails VALUES('T00007','A00001','2013-03-13','Cash','Deposit',4000);
INSERT INTO trandetails VALUES('T00008','A00001','2013-03-14','Cheque','Deposit',3000);
INSERT INTO trandetails VALUES('T00009','A00001','2013-03-21','Cash','Withdrawal',9000);
INSERT INTO trandetails VALUES('T00010','A00001','2013-03-22','Cash','Withdrawal',2000);
INSERT INTO trandetails VALUES('T00011','A00002','2013-03-25','Cash','Withdrawal',7000);
INSERT INTO trandetails VALUES('T00012','A00007','2013-03-26','Cash','Withdrawal',2000);