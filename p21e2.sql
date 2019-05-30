DECLARE
   CURSOR c2 IS SELECT ename, sal FROM emp WHERE rownum<11;
BEGIN
  FOR v_c2 IN c2 LOOP
   DBMS_OUTPUT.PUT_LINE(v_c2.ename||'---'||to_char(v_c2.sal) );
  END LOOP;
END;
/
