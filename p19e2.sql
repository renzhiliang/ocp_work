declare
  v_maxdeptno number(2);
begin
  select max(deptno) into v_maxdeptno from dept;
  for i in 1..5 loop
    v_maxdeptno:=v_maxdeptno+i;
  insert into dept(deptno,dname)
    values(v_maxdeptno,'document'||v_maxdeptno);
  end loop;
end;
/
