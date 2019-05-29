accept deptno prompt 'Please enter the department number:';
begin
  delete from dept
  where deptno=&deptno;
  commit;
  DBMS_OUTPUT.PUT_LINE ('G_RESULT');	
  DBMS_OUTPUT.PUT_LINE (SQL%ROWCOUNT);
end;
/
