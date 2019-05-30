declare
  cursor top_sal is 
  select ename,sal from emp where sal >=(select min(sal) from 
  (select sal from emp order by sal desc) where rownum <=3);
begin
  for i in top_sal loop
    insert into top_sales values (i.ename,i.sal);
  end loop;
  commit;
end;
/
