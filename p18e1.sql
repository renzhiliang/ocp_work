declare
  v_deptno number(2);
  v_loc varchar2(15);
begin
  select deptno,loc
  into v_deptno,v_loc
  from dept
  where dname='SALES';
end;
/
