--- 1-1
select * from book where bookid = 1;
--- 1-2
select * from book where price >= 20000;
--- 1-3
select sum(saleprice) "�������� �� ���ž�" from orders where custid = 1;
--- 1-4
select count(bookid) "�������� ������ ���� ����" from orders where custid = 1;


--- 2-1
select count(bookid) "���� �� ����" from book;
--- 2-2
select count(distinct publisher) "���ǻ� �� ����" from book;
--- 2-3
select name, address from customer;
--- 2-4
select bookid from orders where bookid between 2014-07-04 and 2014-07-07;
--- 2-5
select bookid from orders where bookid not between 2014-07-04 and 2014-07-07;
--- 2-6
select name, address from customer where name like '��%';
--- 2-7
select name, address from customer where name like '��%��';
