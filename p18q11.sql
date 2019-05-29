var g_max_deptno number
begin
  select max(deptno) 
  into:g_max_deptno 
  from dept;
end;
/
print g_max_deptno;
