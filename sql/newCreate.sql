
create table USER(
user_no int primary key auto_increment,
user_id varchar(20) not null unique,
user_pw varchar(20) not null,
user_email varchar(100) not null UNIQUE);

CREATE TABLE keyword_zabbix(
keyword_no INT PRIMARY KEY AUTO_INCREMENT,
user_id VARCHAR(20),
keyword_01 INT,
keyword_02 INT,
keyword_03 INT,
keyword_04 INT,
keyword_05 INT,
keyword_06 INT,
keyword_07 INT,
keyword_08 INT,
keyword_09 INT,
keyword_10 INT,
keyword_11 INT,
keyword_12 INT,
keyword_13 INT,
keyword_14 INT,
keyword_15 INT,
keyword_16 INT,
keyword_17 INT,
keyword_18 INT,
keyword_19 INT,
keyword_20 INT,
keyword_21 INT,
keyword_22 INT,
keyword_23 INT,
keyword_24 INT,
keyword_25 INT,
FOREIGN KEY(user_id) REFERENCES USER(user_id)
);

CREATE TABLE keyword_checkserver(
keyword_no INT PRIMARY KEY AUTO_INCREMENT,
user_id VARCHAR(20),
keyword_01 INT,
keyword_02 INT,
keyword_03 INT,
keyword_04 INT,
keyword_05 INT,
keyword_06 INT,
keyword_07 INT,
keyword_08 INT,
keyword_09 INT,
keyword_10 INT,
keyword_11 INT,
keyword_12 INT,
keyword_13 INT,
keyword_14 INT,
keyword_15 INT,
keyword_16 INT,
keyword_17 INT,
keyword_18 INT,
keyword_19 INT,
keyword_20 INT,
keyword_21 INT,
keyword_22 INT,
keyword_23 INT,
keyword_24 INT,
keyword_25 INT,
FOREIGN KEY(user_id) REFERENCES USER(user_id)
);

CREATE TABLE keyword_crash(
keyword_no INT PRIMARY KEY AUTO_INCREMENT,
user_id VARCHAR(20),
keyword_01 INT,
keyword_02 INT,
keyword_03 INT,
keyword_04 INT,
keyword_05 INT,
keyword_06 INT,
keyword_07 INT,
keyword_08 INT,
keyword_09 INT,
keyword_10 INT,
keyword_11 INT,
keyword_12 INT,
keyword_13 INT,
keyword_14 INT,
keyword_15 INT,
keyword_16 INT,
keyword_17 INT,
keyword_18 INT,
keyword_19 INT,
keyword_20 INT,
keyword_21 INT,
keyword_22 INT,
keyword_23 INT,
keyword_24 INT,
keyword_25 INT,
FOREIGN KEY(user_id) REFERENCES USER(user_id)
);


CREATE TABLE message( 
  eno INT PRIMARY KEY AUTO_INCREMENT, 
  sender VARCHAR(255), 
  taker VARCHAR(255), 
  sub VARCHAR(255), 
  body TEXT, 
  received_date DATETIME, 
  grade VARCHAR(20) 
  
);

insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'1-sender','t-1-abker','1-sub','werody',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'2-sender','t-afd-abker','afdub','rweody',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'3-sender','t-2af-abker','1af-safdub','1-body',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'4-sender','t-2sfs-abker','df','1rw-body',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'5-sender','erre2-abker','adf-af','1-wer',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'6-sender','t-2-abker','1afd-sub','er-body',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'7-sender','t-2-abker','1afssub','sdgwdy',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'8-sender','t-2-abker','dfsf','sfddy',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'9-sender','t-4-abker','1asdf','1-body',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'10-sender','t-3-abker','rtasdf','errdy',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'11-sender','3-4-abker','hr','rbody',now(),'fatal');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'12-sender','fdsf3-abker','1gasdf','g',now(),'fatal');


insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'1-sender','t-1-abker','1-sub','werody',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'2-sender','t-afd-abker','afdub','rweody',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'3-sender','t-2af-abker','1af-safdub','1-body',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'4-sender','t-2sfs-abker','df','1rw-body',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'5-sender','erre2-abker','adf-af','1-wer',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'6-sender','t-2-abker','1afd-sub','er-body',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'7-sender','t-2-abker','1afssub','sdgwdy',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'8-sender','t-2-abker','dfsf','sfddy',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'9-sender','t-4-abker','1asdf','1-body',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'10-sender','t-3-abker','rtasdf','errdy',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'11-sender','3-4-abker','hr','rbody',now(),'error');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'12-sender','fdsf3-abker','1gasdf','g',now(),'error');


insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'1-sender','t-1-abker','1-sub','werody',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'2-sender','t-afd-abker','afdub','rweody',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'3-sender','t-2af-abker','1af-safdub','1-body',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'4-sender','t-2sfs-abker','df','1rw-body',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'5-sender','erre2-abker','adf-af','1-wer',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'6-sender','t-2-abker','1afd-sub','er-body',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'7-sender','t-2-abker','1afssub','sdgwdy',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'8-sender','t-2-abker','dfsf','sfddy',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'9-sender','t-4-abker','1asdf','1-body',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'10-sender','t-3-abker','rtasdf','errdy',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'11-sender','3-4-abker','hr','rbody',now(),'warn');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'12-sender','fdsf3-abker','1gasdf','g',now(),'warn');

insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'1-sender','t-1-abker','1-sub','werody',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'2-sender','t-afd-abker','afdub','rweody',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'3-sender','t-2af-abker','1af-safdub','1-body',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'4-sender','t-2sfs-abker','df','1rw-body',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'5-sender','erre2-abker','adf-af','1-wer',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'6-sender','t-2-abker','1afd-sub','er-body',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'7-sender','t-2-abker','1afssub','sdgwdy',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'8-sender','t-2-abker','dfsf','sfddy',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'9-sender','t-4-abker','1asdf','1-body',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'10-sender','t-3-abker','rtasdf','errdy',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'11-sender','3-4-abker','hr','rbody',now(),'info');
insert into message(eno,sender,taker,sub,body,received_date,grade) VALUES (NULL,'12-sender','fdsf3-abker','1gasdf','g',now(),'info');
