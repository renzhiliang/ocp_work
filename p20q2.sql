declare
  type dept_table_type is table of dept%rowtype index by binary_integer;
  dept_table dept_table_type;
  v_count integer:=10;
  v_cnt integer;
begin
  loop
  select count(*) into v_cnt from dept where deptno=v_count;
  exit when v_cnt=0;
  select deptno,dname,loc into dept_table(v_count/10) 
  from dept where deptno=v_count;
  dbms_output.put_line(dept_table(v_count/10).deptno||'*'||dept_table(v_count/10).dname||'*'||dept_table(v_count/10).loc); 
  v_count:=v_count+10;
  end loop;
end;
/
