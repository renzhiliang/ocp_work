declare
  v_sum_sal emp.sal%TYPE;
  v_deptno number not null:=10;
begin
  select sum(sal)
  into v_sum_sal
  from emp
  where deptno=v_deptno;
  dbms_output.put_line('-----------'||v_sum_sal||'-------------');
end;
/
