DECLARE
  TYPE ename_table_type IS TABLE OF emp.ename%TYPE
       INDEX BY BINARY_INTEGER;
  TYPE hiredate_table_type IS TABLE OF DATE
       INDEX BY BINARY_INTEGER;
  ename_table     ename_table_type; 
  hiredate_table  hiredate_table_type;
BEGIN
  ename_table(1) := 'CAMERON';
  ename_table(2) := 'TEST';
  ename_table(3) := 'LLLL';
  hiredate_table(8) := SYSDATE + 7;
    DBMS_OUTPUT.PUT_LINE(ename_table(1)||ename_table(2)||ename_table(3)||hiredate_table(8));
END;
/
