DECLARE
	maxdno NUMBER(2);
BEGIN
	FOR i IN 1..5 LOOP
	  SELECT max(deptno) INTO maxdno FROM dept;      
	  maxdno:=maxdno+1;
	  insert into dept(deptno,dname,loc) 
	  values(maxdno,'education'||to_char(i),NULL);
	END LOOP;
END;
/
