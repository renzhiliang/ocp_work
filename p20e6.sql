declare 
  type emp_table_type is table of exam%rowtype
    INDEX BY BINARY_INTEGER;
  emp_table emp_table_type;
begin
  for i in 1..4 loop
  select * 
  into emp_table(i)
  from exam
  where a=i;
  dbms_output.put_line(emp_table(i).a||' '||emp_table(i).b);
  end loop;
end;
/
