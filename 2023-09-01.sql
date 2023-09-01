select sum(saleprice) as 총판매금액 from orders;

select sum(saleprice) as 총판매량 from orders where custid = 1;

select sum(saleprice) as 총판매금액, avg(saleprice) as 판매액평균, min(saleprice) as 최저가, max(saleprice) as 최대가 from orders;

select count(bookid) as 판매도서개수 from orders;

select count(*) as "13000원 이상 판매도서개수" from orders where saleprice >= 13000;

select count(*) as "고객번호" from orders where custid in(1,3);

select custid, count(*) as 주문수량, sum(saleprice) 주문총액 from orders group by custid order by custid;

select custid, count(*) as 도서수량 from orders where saleprice >= 8000 group by custid having count(*) >= 2;