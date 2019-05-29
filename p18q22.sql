DECLARE
  temp dept.deptno%TYPE;
  v_deptno dept.deptno%TYPE;
  v_dname dept.dname%TYPE;
  v_loc dept.loc%TYPE;
BEGIN
  select max(deptno) into temp from scott.dept;
  temp:=temp+5;
  insert into dept(deptno,dname,loc)
  values(temp,'&v_dname',null);
  select deptno,loc into v_deptno,v_loc
  from scott.dept
  where deptno=temp;
END;
/









