DECLARE
  TYPE d_table_type IS TABLE OF dept.dname%Type
       INDEX BY BINARY_INTEGER;
  d_tab d_table_type;
  tempdno number(3):=10;
  recordcount number(3);
BEGIN
     LOOP
	select count(*) into recordcount from dept where deptno=tempdno;
	EXIT when recordcount=0;
	select dname into d_tab(tempdno/10) from dept where deptno=tempdno;
        DBMS_OUTPUT.PUT_LINE(d_tab(tempdno/10));
	tempdno:=tempdno+10;
     END LOOP;
END;
/
