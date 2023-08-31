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

insert into book values(1, '�౸�� ����', '�½�����', 7000);
insert into book values(2, '�ظ����� ������ ����', '����å', 7000);
insert into book values(3, '�ּ����� �ѱ���', '����Ʈ������', 7000);
insert into book values(4, '������ ����', '�½�����', 7000);
insert into book values(5, '���̳��� ����ħ', '���̿�', 7000);
insert into book values(6, '���ϸ��� ���߷�', '��ũ�ν�', 7000);
insert into book values(7, '���������� ���� ����', '���谳', 15000);
insert into book values(8, '�Ϸиӽ�ũ', '21����Ͻ�', 34000);
insert into book values(9, '��ģ��1', '���÷翣��', 7000);
insert into book values(10, '�ȳ�, �޸�������', '�½�����', 7000);

select bookid, bookname, publisher, price from book;

insert into customer values(1, '������', '���� ��ó����', '000-5000-001');
insert into customer values(2, '�迬��', '���� ���۱� �漮��', '02-333-5555');
insert into customer values(3, '��̶�', '���� ��걸 ������', '02-555-7777');
insert into customer values(4, '�߽ż�', '��õ������ ������', '032-233-5656');
insert into customer values(5, '�ڼ���', '���������� ������', '042-322-1237');

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

SELECT publisher, price FROM book where bookname like '�౸�ǿ���';

SELECT name, phone FROM customer where name ='�迬��';

SELECT * FROM customer where name ='�迬��';

SELECT custid , address, phone FROM customer where name ='������';

SELECT price, bookname FROM book;

SELECT * FROM book;

SELECT publisher FROM book;

SELECT DISTINCT publisher FROM book;

SELECT * FROM book where price < 10000;

SELECT * FROM book WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM book WHERE price >= 7000 AND price <=20000;

SELECT * from book where publisher in ('�½�����','���̹�����');

select * from book where publisher ='�½�����' or publisher= '���ѹ̵��';

SELECT * FROM book WHERE publisher not in ('e������','�س�','���������Ͽ콺');

select * from book where publisher <>'�½�����' and publisher <>'�س�';

SELECT * FROM book WHERE bookname LIKE '%����%';

SELECT * FROM book WHERE bookname LIKE '%����';

SELECT * FROM book where bookname like '___��%';