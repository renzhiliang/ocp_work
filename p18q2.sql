declare
  v_max_deptno dept.deptno%TYPE;
begin
  select max(deptno)+10
  into:v_max_deptno
  from dept;  
  insert into dept(deptno,dname,loc)
  values(v_max_deptno, &dname,'');
end;
/
