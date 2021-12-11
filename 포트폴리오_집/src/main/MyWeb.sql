use myweb;

create table member(
	customerNum int primary key AUTO_INCREMENT,
	id char(20) not null,
	pw varchar(30) not null,
	name varchar(10) not null,
	year varchar(4) not null,
	month varchar(4) not null,
	day varchar(4) not null,
	gender varchar(4) not null,
	email varchar(50) not null,
	phone varchar(15) not null,
	joinDate datetime
);
drop table member;


select * from member;

select id from member;
select * from member where id='asdf' or email='qwer@naver.com' and name='삭제용';
select * from member where id='' and name='홍길동' and email='qwer@naver.com';
select * from member where  name='삭제용';

insert into member values(null,'qwer','1234','김진호','2010','10','10','남','abc@abc.com','010-1111-2222',now());

update member set id='com' where id='';

delete from member where customerNum='14';

alter table member change mail email varchar(50) not null;
alter table member add joinDate varchar(20) not null;

ALTER TABLE member AUTO_INCREMENT=1;
-- auto_increment값을 1로 초기화 한다.
select * from member where id='qwer' and pw='1234';

show table;

select customerNum, id, pw, name, concat(year, month, day) as birth, gender, email, phone, joinDate from member;

update member set pw='qwer!!' where id='asdf';

-- -----------------------------------------------------
create table booking(
	id varchar(30) not null primary key,
	roomId varchar(20) not null,
	checkinDate date,
	checkoutDate date,
	totalAdult varchar(4) not null,
	totalChild varchar(4),
	totalAmount int,
	bookingDate datetime
);
-------------------------
drop table booking;
-------------------------

select * from booking;

insert into booking values('qwer','럭셔리 호텔','2000-1-5','2000-1-8','2','0',null,now());

delete from booking where id='zxcv';

update reservation set roomId='롯데', totalAdult='3', totalChild='1', checkinDate='2000-10-10', checkoutDate='2000-10-12' where id='qwer';


create view reservation as
	select a.customerNum, a.id, a.name, a.year, a.month, a.day, a.gender, a.email, a.phone,
			b.roomId, b.checkinDate, b.checkoutDate, b.totalAdult, b.totalChild, checkoutDate-checkinDate as stayDate, (checkoutDate-checkinDate)*100000 as totalAmount, b.bookingDate
		from member a
			join booking b where a.id=b.id;
---------------------------
drop view reservation;
---------------------------

select * from reservation;

----------------------------------------
delete from reservation where id='qwer';
----------------------------------------안먹힘


