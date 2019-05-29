declare
  v_deptno dept.deptno%type;
begin
  select max(deptno) into v_deptno
  from dept;
  dbms_output.put_line('v_deptno:'||v_deptno);
end;
/

