DECLARE
  CURSOR emp_cursor IS 
    select * from (select ename,sal 
                   from emp order by sal desc) 
    where rownum<=&rownumber;
  top_emp emp_cursor%ROWTYPE;
BEGIN
  OPEN emp_cursor;
  LOOP 
	FETCH emp_cursor INTO top_emp;
        EXIT WHEN emp_cursor%NOTFOUND;
        insert into top_sales(name,salary) 
		values (top_emp.ename,top_emp.sal);
   END LOOP;
   CLOSE emp_cursor;
END;
/
