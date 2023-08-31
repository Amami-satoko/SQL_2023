create table book (
bookid int not null,
bookname varchar(40),
publisher varchar(20),
price int,
primary key(bookid));

create table customer (
custid int not null,
name varchar(40),
address varchar(40),
phone varchar(20),
primary key(custid));

create table imported_book (
bookid int not null,
bookname varchar(20),
publisher varchar(20),
price int,
primary key(bookid));

create table orders (
orderid int not null,
custid int,
bookid int,
saleprice int,
orderdate date,
primary key(orderid));

drop table orders;

insert into book values(1, '축구의 역사', '굿스포츠', 7000);
insert into book values(2, '해리포터 죽음의 성물', '좋은책', 7000);
insert into book values(3, '최소한의 한국사', '프런트페이지', 7000);
insert into book values(4, '위기의 역사', '굿스포츠', 7000);
insert into book values(5, '세미노의 가르침', '데이원', 7000);
insert into book values(6, '도둑맞은 집중력', '어크로스', 7000);
insert into book values(7, '문과남자의 과학 공부', '돌배개', 15000);
insert into book values(8, '일론머스크', '21세기북스', 34000);
insert into book values(9, '파친코1', '인플루엔셜', 7000);
insert into book values(10, '안녕, 메리한정판', '굿스포츠', 7000);

select bookid, bookname, publisher, price from book;

insert into customer values(1, '박지성', '영국 맨처스터', '000-5000-001');
insert into customer values(2, '김연아', '서울 동작구 흑석동', '02-333-5555');
insert into customer values(3, '장미란', '서울 용산구 보광동', '02-555-7777');
insert into customer values(4, '추신수', '인천광역시 연수구', '032-233-5656');
insert into customer values(5, '박세리', '대전광역시 유성구', '042-322-1237');

select * from customer;

insert into orders VALUES(2, 1, 3, 21000, TO_DATE('2023-01-10','yyyy-mm-dd'));
insert into orders VALUES(10, 3, 8, 13000, TO_DATE('2023-07-03','yyyy-mm-dd'));
insert into orders VALUES(1, 1, 1, 6000, TO_DATE('2023-07-10','yyyy-mm-dd'));
insert into orders VALUES(3, 2, 5, 8000, TO_DATE('2023-08-10','yyyy-mm-dd'));
insert into orders VALUES(4, 3, 6, 6000, TO_DATE('2023-09-10','yyyy-mm-dd'));
insert into orders VALUES(5, 4, 7, 20000, TO_DATE('2023-10-10','yyyy-mm-dd'));
insert into orders VALUES(6, 1, 2, 12000, TO_DATE('2023-06-10','yyyy-mm-dd'));
insert into orders VALUES(7, 4, 8, 13000, TO_DATE('2023-07-27','yyyy-mm-dd'));
insert into orders VALUES(8, 3, 10, 12000, TO_DATE('2023-07-20','yyyy-mm-dd'));
insert into orders VALUES(9, 2, 10, 7000, TO_DATE('2023-08-20','yyyy-mm-dd'));

select * from orders;



INSERT INTO imported_book VALUES(21, 'Zen Golf', 'Person', 12000);
INSERT INTO imported_book VALUES(22, 'Soccer Skills', 'Human Kinetics',15000);

select * from imported_book;

SELECT publisher, price FROM book where bookname like '축구의역사';

SELECT name, phone FROM customer where name ='김연아';

SELECT * FROM customer where name ='김연아';

SELECT custid , address, phone FROM customer where name ='박지성';

SELECT price, bookname FROM book;

SELECT * FROM book;

SELECT publisher FROM book;

SELECT DISTINCT publisher FROM book;

SELECT * FROM book where price < 10000;

SELECT * FROM book WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM book WHERE price >= 7000 AND price <=20000;

SELECT * from book where publisher in ('굿스포츠','네이버웹툰');

select * from book where publisher ='굿스포츠' or publisher= '대한미디어';

SELECT * FROM book WHERE publisher not in ('e스포츠','해냄','웅진지식하우스');

select * from book where publisher <>'굿스포츠' and publisher <>'해냄';

SELECT * FROM book WHERE bookname LIKE '%과학%';

SELECT * FROM book WHERE bookname LIKE '%과학';

SELECT * FROM book where bookname like '___의%';