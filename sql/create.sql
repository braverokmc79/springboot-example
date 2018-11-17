create user `example`@`localhost` identified by 'example123';
create user `example`@`%` identified by 'example123';

create database example character set=utf8;

grant all privileges on example.* to `example`@`localhost` ;
grant all privileges on example.* to `example`@`%` ;


create table tbl_member (
   `eno` int auto_increment primary key,
   `from` varchar(255) ,
   `to` varchar(255),
   `sub` text,
   `body` text,
   `inbox_date` datetime
);


insert into tbl_member (eno,`from` ,`to`
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

insert into tbl_member (
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

insert into tbl_member (
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

insert into tbl_member (
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


insert into tbl_member (
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


