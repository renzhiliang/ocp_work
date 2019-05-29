
 declare
    v_sal number(7,2):=60000;
    v_comm number(7,2):=v_sal*.20;
    v_message varchar(255):='eligible for commission';
  begin
    declare
      v_sal number(7,2):=50000;
      v_comm number(7,2):=0;
      v_total_comp number(7,2):=v_sal+v_comm;
    begin
      v_message:='CLERK NOT'||v_message;
      dbms_output.put_line(v_sal||' '||v_comm||' '||v_message);
    end;
    v_message:='SALESMAN'||v_message;
    dbms_output.put_line(v_sal||' '||v_comm||' '||v_message);
  end;
  /

