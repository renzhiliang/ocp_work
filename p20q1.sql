declare
  type dname_table_type is table of dept.dname%type
       index by binary_integer;
  dname_table dname_table_type;
  v_counter integer:=10;
begin
  loop
    select dname into dname_table(v_counter/10) from dept where deptno=v_counter;
    --exception when no_data_found then
    --raise_application_error(-20012,'error');
    dbms_output.put_line(dname_table(v_counter/10));
    v_counter:= v_counter+10;
  end loop;
end;
/
