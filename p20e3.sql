DECLARE
   -- 用 %TYPE 类型定义与表相配的字段
   TYPE t_Record IS RECORD(
          T_no emp.empno%TYPE,
          T_name emp.ename%TYPE,
          T_sal emp.sal%TYPE );
   -- 声明接收数据的变量
   v_emp t_Record;
BEGIN
   SELECT empno, ename, sal INTO v_emp FROM emp WHERE empno=7788;
   DBMS_OUTPUT.PUT_LINE
(TO_CHAR(v_emp.t_no)||v_emp.t_name||TO_CHAR(v_emp.t_sal));
END;
/
