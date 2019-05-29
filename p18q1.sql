declare
  v_max_deptno dept.deptno%TYPE;
begin 
  select deptno
  into v_max_deptno 
  from dept
  where deptno=(select max(deptno) from dept);
  DBMS_OUTPUT.PUT_LINE (v_max_deptno);
end;
/
