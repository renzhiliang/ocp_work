declare
  v_count number:=1;
  v_deptno dept.deptno%type;
  v_dname dept.dname%type;
begin
  while v_count<=5 loop
    dbms_output.put_line(v_count);
    select max(deptno)+1 into v_deptno from dept;
    dbms_output.put_line(v_deptno);
    v_dname:='education'||v_count;
    dbms_output.put_line(v_dname);
    insert into dept(deptno,dname,loc)
    values(v_deptno,v_dname,null);
    v_count:=v_count+1;
  end loop;
  commit;
end;
/
