begin
  delete from dept where loc is null;
  if SQL%ROWCOUNT!=0 then
    dbms_output.put_line(SQL%ROWCOUNT||' record was deleted');
  else
    dbms_output.put_line('no record was deleted');
  end if;
  commit;
end;
/
