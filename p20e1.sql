declare
  type e_table_type is table of emp.ename%type index by binary_integer;
  e_tab e_table_type;
begin
  e_tab(1):='SMITH';
  update emp set sal=sal*1.1 where ename=e_tab(1);
  commit;
end;
/
