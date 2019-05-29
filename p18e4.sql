declare
  v_sal_increase emp.sal%TYPE:=2000;
begin
  update emp
  set sal= sal+v_sal_increase
  where job='ANALYST';
  commit;
end;
/
