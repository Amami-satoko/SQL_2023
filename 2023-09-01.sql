select sum(saleprice) as ���Ǹűݾ� from orders;

select sum(saleprice) as ���Ǹŷ� from orders where custid = 1;

select sum(saleprice) as ���Ǹűݾ�, avg(saleprice) as �Ǹž����, min(saleprice) as ������, max(saleprice) as �ִ밡 from orders;

select count(bookid) as �Ǹŵ������� from orders;

select count(*) as "13000�� �̻� �Ǹŵ�������" from orders where saleprice >= 13000;

select count(*) as "����ȣ" from orders where custid in(1,3);

select custid, count(*) as �ֹ�����, sum(saleprice) �ֹ��Ѿ� from orders group by custid order by custid;

select custid, count(*) as �������� from orders where saleprice >= 8000 group by custid having count(*) >= 2;