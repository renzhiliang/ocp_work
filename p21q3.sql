 DECLARE
  CURSOR emp_cursor IS 
          select * from (select ename,sal 
          from emp order by sal desc) 
          where rownum<=&rownumber;
  top_emp emp_cursor%ROWTYPE;
  same_sal emp.sal%TYPE;
  same_ename emp.ename%TYPE;
  CURSOR same_emp_cursor IS select ename,sal from emp 
          where sal=same_sal and ename<>same_ename;
  same_emp same_emp_cursor%ROWTYPE;
 BEGIN
   OPEN emp_cursor;
   LOOP 
	FETCH emp_cursor INTO top_emp;
        EXIT WHEN emp_cursor%NOTFOUND;
        insert into top_sales(name,salary) 
		values (top_emp.ename,top_emp.sal);
	same_sal:=top_emp.sal;
        same_ename:=top_emp.ename;
   END LOOP;
   CLOSE emp_cursor;
   OPEN same_emp_cursor;
   LOOP 
	FETCH same_emp_cursor INTO same_emp;
        EXIT WHEN same_emp_cursor%NOTFOUND;
        insert into top_sales(name,salary) 
		values (same_emp.ename,same_emp.sal);
   END LOOP;
   CLOSE same_emp_cursor;   

  END;
/
