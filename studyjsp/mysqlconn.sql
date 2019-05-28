show databases;

create table member(
	id varchar(50) not null primary key,
	passwd varchar(16) not null,
	name varchar(10) not null,
	reg_date datetime not null
);

desc member;

create table test (
	num_id int not null primary key auto_increment,
	title varchar(50) not null,
	content text not null
);

desc test;

alter table member
	add (address varchar(100) not null,
			tel varchar(20) not null);
			
desc member;

drop table test;

desc test;

show databases;

insert into member(id, passwd, name, reg_date, address, tel)
	values('kingdora@dragon.com', '1234', '김개똥', now(), '서울시', '010-1111-1111');

select * from member;

insert into member(id, passwd, name, reg_date, address, tel)
	values('hongkd@aaa.com')
	
select passwd from member where id='kjs100184@gmail.com';

alter table member modify column passwd varchar(200) NOT NULL; 
