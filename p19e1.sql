declare
  v_commit number(10);
begin
  for i in 1..10000000 loop
    insert into emp values(i,'cuug'||i,'PRESIDENT',7833,sysdate,2975,null,20);
    v_commit:=mod(i,1000);
    if v_commit=0 then
    commit;
    end if;
  end loop;
end;
/
