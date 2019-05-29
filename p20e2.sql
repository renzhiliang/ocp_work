declare
TYPE emp_record_type IS RECORD
    (ename		VARCHAR2(10),
     job 			VARCHAR2(9),
     sal			emp.sal%TYPE);
  emp_record		emp_record_type;
begin
	select ename,job,sal into emp_record
	from emp
	where empno=7369;
	dbms_output.put_line(emp_record.ename||emp_record.job||emp_record.sal);
end; 
/
