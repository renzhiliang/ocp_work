declare
  v_empno emp.empno%TYPE:=2296;
begin
  delete from emp
  where empno=v_empno;
end;
/
