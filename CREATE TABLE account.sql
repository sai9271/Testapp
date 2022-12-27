CREATE TABLE account
   (
      acnumber VARCHAR(6),
      custid  VARCHAR(6),
      bid VARCHAR(6),
      opening_balance INT(7),
      aod DATE,
      atype VARCHAR(10),
      astatus VARCHAR(10),
      CONSTRAINT account_acnumber_pk PRIMARY KEY(acnumber),
      CONSTRAINT account_custid_fk FOREIGN KEY(custid) REFERENCES customer(custid),
      CONSTRAINT account_bid_fk FOREIGN KEY(bid) REFERENCES branch(bid) 
    );
 
  SELECT * FROM account

INSERT INTO account VALUES('A00001','C00001','B00001',1000,'2012-12-15','Saving','Active');
INSERT INTO account VALUES('A00002','C00002','B00001',1000,'2012-06-12','Saving','Active');
INSERT INTO account VALUES('A00003','C00003','B00002',1000,'2012-05-17','Saving','Active');
INSERT INTO account VALUES('A00004','C00002','B00005',1000,'2013-01-27','Saving','Active');
INSERT INTO account VALUES('A00005','C00006','B00006',1000,'2012-12-17','Saving','Active');
INSERT INTO account VALUES('A00006','C00007','B00007',1000,'2010-08-12','Saving','Suspended');
INSERT INTO account VALUES('A00007','C00007','B00001',1000,'2012-10-02','Saving','Active');
INSERT INTO account VALUES('A00008','C00001','B00003',1000,'2009-11-09','Saving','Terminated');
INSERT INTO account VALUES('A00009','C00003','B00007',1000,'2008-11-30','Saving','Terminated');
INSERT INTO account VALUES('A00010','C00004','B00002',1000,'2013-03-01','Saving','Active');