declare
  cursor c is select p.ename,p.sal from (select * from emp order by sal desc) p where rownum<4;
begin
  for v_c in c loop
  insert into top_sales values(v_c.ename,v_c.sal);
  end loop;
end;
/
