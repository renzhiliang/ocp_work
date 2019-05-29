accept dname prompt 'Provide the department name:'
declare
  v_deptno dept.deptno%type;
  v_dname dept.dname%type;
begin
  select max(deptno)+10 into v_deptno from dept;
  v_dname:='&dname';
  insert into dept(deptno,dname,loc)
  values(v_deptno,v_dname,null);
end;
/
