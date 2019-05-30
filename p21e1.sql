DECLARE
   CURSOR c1 IS SELECT ename, sal FROM emp WHERE rownum<11;
   v_ename  emp.ename%TYPE;
   v_sal      emp.sal%TYPE;
BEGIN
OPEN c1;
FETCH c1 INTO v_ename, v_sal;
WHILE c1%FOUND LOOP
   DBMS_OUTPUT.PUT_LINE(v_ename||'---'||to_char(v_sal) );
   FETCH c1 INTO v_ename, v_sal;
END LOOP;
CLOSE c1;
END;
/
