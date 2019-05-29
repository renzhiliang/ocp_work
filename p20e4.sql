DECLARE 
   TYPE test_rec IS RECORD(
         Code VARCHAR2(10),
         Name VARCHAR2(30) NOT NULL :='a book');
   V_book test_rec;
BEGIN
   V_book.code :='123';
--   V_book.name :='C++ Programming';
   DBMS_OUTPUT.PUT_LINE(v_book.code||v_book.name);
END;
/
