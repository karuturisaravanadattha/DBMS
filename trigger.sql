drop table customers;

create table customers
(
    c_id NUMBER PRIMARY KEY,
    c_name VARCHAR2(50) unique,
    email varchar2(100) not null
);

insert into customers values(1,'Alice','alice@gmail.com');
insert into customers values(2,'Bob','bob@gmail.com');
insert into customers values(3,'Charlie','charlie@gmail.com');
insert into customers values(4,'Diana','diana@gmail.com');
select * from customers;


drop table products;

CREATE TABLE products (
p_id NUMBER PRIMARY KEY,
p_name VARCHAR2(50) not null,
price NUMBER not null
);

INSERT INTO products VALUES(1,'Laptop',60000);
INSERT INTO products VALUES(2,'Table',8000);
INSERT INTO products VALUES(3,'Mouse',1000);
INSERT INTO products VALUES(4,'Keyboard',3000);
INSERT INTO products VALUES(5,'Tablet',36000);

select * from products;

truncate TABLE orders;
drop table orders;

create table orders(
    ord_id number primary key,
    customer_id number REFERENCES customers(c_id),
    product_id number references products(p_id),
    quantity number not null
);

insert into orders values(101,1,3,10); 
insert into orders values(102,4,1,5); 
insert into orders values(103,3,4,100); 

select * from orders;

truncate table invoices;
create table invoices(
    inv_id VARCHAR2(20) primary key,
    order_id number REFERENCEs orders(ord_id),
    invoice_date date default current_date,
    total_amount number not null
);


select * from invoices;

create sequence inv_seq start with 1 increment by 1;


create or replace  function 
getinvoiceid return varchar2 
is
begin
    return 'INV-' || LPAD(inv_seq.nextval, 5, 0);
end;
/


create or replace trigger inv_generator
after insert on orders
for each row
begin
    insert into invoices
    (inv_id,order_id,total_amount) 
    values(getinvoiceid(),
        :NEW.ord_id,
        :NEW.quantity * (SELECT price FROM products WHERE p_id = :NEW.product_id));
end;
/






