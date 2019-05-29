accept deptno prompt 'Provide the department number:'
accept dept loc 'Provide the department location:'
declare
  v_deptno dept.deptno%type;
  v_loc dept.loc%type;
begin
  v_deptno:=&deptno;
  v_loc:='&loc';
  update dept set loc=v_loc
  where deptno=v_deptno;
  commit;
  select deptno,loc into v_deptno,v_loc
  from dept where deptno=v_deptno;
  DBMS_OUTPUT.PUT_LINE ('deptno'||'      loc');	
  DBMS_OUTPUT.PUT_LINE (to_char(v_deptno)||'     '||v_loc);
end;
/
