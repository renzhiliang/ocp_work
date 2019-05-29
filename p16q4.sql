DECLARE
  v_empno NUMBER(4);
BEGIN
  SELECT empno
  INTO v_empno
  FROM emp
  WHERE ename = 'SMITH';
  DBMS_OUTPUT.PUT_LINE ('The employee is ' || TO_CHAR(v_empno));
END;
/
