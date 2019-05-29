declare
  tmp dept.deptno%TYPE;
  v_deptno dept.deptno%TYPE;
  v_loc dept.loc%TYPE;
begin
  tmp:=&deptno;
  update dept
  set loc='&loc'
  where deptno=tmp;
  select deptno,loc
  into v_deptno,v_loc 
  from dept
  where deptno=tmp;
  DBMS_OUTPUT.PUT_LINE ('deptno'||'      loc');
  DBMS_OUTPUT.PUT_LINE (to_char(v_deptno)||'           '||v_loc);
end;
/
