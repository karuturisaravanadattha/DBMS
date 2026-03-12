--ADOUT TO FIND FACTOS OF 120
DECLARE
   N NUMBER ;
   I NUMBER;
   CNT NUMBER;
BEGIN
   N := 120;
   I := 1;
   CNT := 0;
   WHILE I <= N LOOP
       IF MOD(N, I) = 0 THEN
            DBMS_OUTPUT.PUT(I || ' ');
            CNT := CNT + 1;
       END IF;
       I := I+ 1;
   END LOOP;
   DBMS_OUTPUT.NEW_LINE();
END;
/


--FOR LOOP
BEGIN
    FOR I IN  REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT(I || ' ');
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
END;
/

--NESTED FOR LOOP
BEGIN
    for i in 1..5 loop
        for j in 1..5 loop
            dbms_output.put(j || ' ');
        end loop;
        dbms_output.new_line();
    end loop;
end;
/

BEGIN
    DBMS_OUTPUT.PUT('I AM SHANMUKH');
    DBMS_OUTPUT.PUT('FROM TECHNICAL HUB');
    DBMS_OUTPUT.PUT('WHOCH IS IN ADITYA UNIVERSITY');
    DBMS_OUTPUT.NEW_LINE();
END;
/

SET SERVEROUTPUT ON;


create function addd_two(a number, b number) return
number is
    c number;
begin
    c := a + b;
    return c;
end;
/


create or replace function wish(name varchar2,gender varchar2)
return varchar2 is
    res varchar2(200);
begin
    if gender = 'male' then
        res := 'hi, mr. ' || name;
    else
        res := 'hi, mrs. ' || name;
    end if;
    return res;
end;
/

select wish(name,gender) from employee;
select wish('shannu','male') from dual;
select wish('shannu','female') from dual;

--1 Task 1
--Create and call a PL/SQL function that takes an integer and returns it’s square

create or replace function call(a number) return
number is
    c number;
begin
    c := a*a;
    return c;
end;
/
select call(5) from dual;

--Task 2
--Create and call a PL/SQL function that takes two integers and returns a boolean
--value TRUE if first integer is a factor of second else FALSE



--Task 3
--Create and call a PL/SQL function that takes 3 integers and returns the maximum 
--of them

create or replace function call(a number, b number, c number) return
number is
    max number;
begin
    if a>b and b > c then
        max := a;
    else if  b>c and b>a
    
    return c;
end;
/
select call(5) from dual;


create or replace function
getYears(join_date Date) return 
number is 
    months number;
    exp number;
begin 
    months := months_between(current_date, join_date);
    exp := trunc(months/12);
    return exp;
end;
/
select id, name,date_of_joining,
getYears(date_of_joining) from employee;




    
