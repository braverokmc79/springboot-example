create user `example`@`localhost` identified by 'example123';
create user `example`@`%` identified by 'example123';

create database example character set=utf8;

grant all privileges on example.* to `example`@`localhost` ;
grant all privileges on example.* to `example`@`%` ;


create table USER(
user_no int primary key auto_increment,
user_id varchar(20) not null unique,
user_pw varchar(20) not null,
user_email varchar(100) not null UNIQUE);


CREATE TABLE `keyword` (
  `keyword_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `keyword_1` int(11) DEFAULT NULL,
  `keyword_2` int(11) DEFAULT NULL,
  `keyword_3` int(11) DEFAULT NULL,
  `keyword_4` int(11) DEFAULT NULL,
  `keyword_5` int(11) DEFAULT NULL,
  `keyword_6` int(11) DEFAULT NULL,
  `keyword_7` int(11) DEFAULT NULL,
  `keyword_8` int(11) DEFAULT NULL,
  `keyword_9` int(11) DEFAULT NULL,
  `keyword_10` int(11) DEFAULT NULL,
  `keyword_11` int(11) DEFAULT NULL,
  `keyword_12` int(11) DEFAULT NULL,
  `keyword_13` int(11) DEFAULT NULL,
  `keyword_14` int(11) DEFAULT NULL,
  `keyword_15` int(11) DEFAULT NULL,
  `keyword_16` int(11) DEFAULT NULL,
  `keyword_17` int(11) DEFAULT NULL,
  `keyword_18` int(11) DEFAULT NULL,
  `keyword_19` int(11) DEFAULT NULL,
  `keyword_20` int(11) DEFAULT NULL,
  `keyword_21` int(11) DEFAULT NULL,
  `keyword_22` int(11) DEFAULT NULL,
  `keyword_23` int(11) DEFAULT NULL,
  `keyword_24` int(11) DEFAULT NULL,
  `keyword_25` int(11) DEFAULT NULL,
  PRIMARY KEY (`keyword_no`),
  KEY `user_id` (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `USER` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `score` (
  `score_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `score_1` int(11) DEFAULT NULL,
  `score_2` int(11) DEFAULT NULL,
  `score_3` int(11) DEFAULT NULL,
  `score_4` int(11) DEFAULT NULL,
  `score_5` int(11) DEFAULT NULL,
  `score_6` int(11) DEFAULT NULL,
  `score_7` int(11) DEFAULT NULL,
  `score_8` int(11) DEFAULT NULL,
  `score_9` int(11) DEFAULT NULL,
  `score_10` int(11) DEFAULT NULL,
  `score_11` int(11) DEFAULT NULL,
  `score_12` int(11) DEFAULT NULL,
  `score_13` int(11) DEFAULT NULL,
  `score_14` int(11) DEFAULT NULL,
  `score_15` int(11) DEFAULT NULL,
  `score_16` int(11) DEFAULT NULL,
  `score_17` int(11) DEFAULT NULL,
  `score_18` int(11) DEFAULT NULL,
  `score_19` int(11) DEFAULT NULL,
  `score_20` int(11) DEFAULT NULL,
  `score_21` int(11) DEFAULT NULL,
  `score_22` int(11) DEFAULT NULL,
  `score_23` int(11) DEFAULT NULL,
  `score_24` int(11) DEFAULT NULL,
  `score_25` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_no`),
  KEY `user_id` (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `USER` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;








CREATE TABLE message(
num INT PRIMARY KEY AUTO_INCREMENT,
sub text,
body text,
grade VARCHAR(20),
email varchar(100),
regdate datetime 
);








INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test01','test02','fatal','braverokmc79@gmail.com' ,now());

INSERT INTO 
INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test01','test02','fatal','braverokmc79@gmail.com' ,now());

INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test02','asdsaqweqwe','error' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test03','sadadww','warn' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test04','asdsadsadsaq','info' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate)  VALUES ('test05','asdsadsadsdasdfff' , null, 'braverokmc79@gmail.com',now());


message(sub,body,grade,email, regdate) VALUES ('test02','asdsaqweqwe','error' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test03','sadadww','warn' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate) VALUES ('test04','asdsadsadsaq','info' ,'braverokmc79@gmail.com' ,now());
INSERT INTO message(sub,body,grade,email, regdate)  VALUES ('test05','asdsadsadsdasdfff' , null, 'braverokmc79@gmail.com',now());






-----------------------------
create table listeningtest  (
   `eno` int auto_increment primary key,
   `from` varchar(255) ,
   `to` varchar(255),
   `sub` text,
   `body` text,
   `inbox_date` datetime
);


insert into listeningtest  (eno,`from` ,`to`
  ,sub
  ,body
  ,inbox_date
) VALUES (
   NULL -- eno - IN int(11)
  ,'111- from'  -- from - IN varchar(255)
  ,'111--- to'  -- to - IN varchar(255)
  ,'111--- sub '  -- sub - IN text
  ,'111 --- body '  -- body - IN text
  ,now()  -- inbox_date - IN datetime
);

insert into listeningtest  (
   eno
  ,`from`
  ,`to`
  ,sub
  ,body
  ,inbox_date
) VALUES (
   NULL -- eno - IN int(11)
  ,'222- from'  -- from - IN varchar(255)
  ,'222--- to'  -- to - IN varchar(255)
  ,'222--- sub '  -- sub - IN text
  ,'222 --- body '  -- body - IN text
  ,now()  -- inbox_date - IN datetime
);

insert into listeningtest  (
   eno
  ,`from`
  ,`to`
  ,sub
  ,body
  ,inbox_date
) VALUES (
   NULL -- eno - IN int(11)
  ,'333- from'  -- from - IN varchar(255)
  ,'333--- to'  -- to - IN varchar(255)
  ,'333--- sub '  -- sub - IN text
  ,'333 --- body '  -- body - IN text
  ,now()  -- inbox_date - IN datetime
);

insert into listeningtest  (
   eno
  ,`from`
  ,`to`
  ,sub
  ,body
  ,inbox_date
) VALUES (
   NULL -- eno - IN int(11)
  ,'444- from'  -- from - IN varchar(255)
  ,'444--- to'  -- to - IN varchar(255)
  ,'444--- sub '  -- sub - IN text
  ,'444 --- body '  -- body - IN text
  ,now()  -- inbox_date - IN datetime
);


insert into listeningtest  (
   eno
  ,`from`
  ,`to`
  ,sub
  ,body
  ,inbox_date
) VALUES (
   NULL -- eno - IN int(11)
  ,'555- from'  -- from - IN varchar(255)
  ,'555--- to'  -- to - IN varchar(255)
  ,'555--- sub '  -- sub - IN text
  ,'555 --- body '  -- body - IN text
  ,now()  -- inbox_date - IN datetime
);




ALTER TABLE example.listeningtest
 ADD `check` VARCHAR(20) DEFAULT 'no' AFTER inbox_date;

