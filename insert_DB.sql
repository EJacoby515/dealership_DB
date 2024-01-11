CREATE OR REPLACE FUNCTION add_sales_ppl(salesperson_id INTEGER, first_name VARCHAR(20), last_name VARCHAR(20))
RETURNS VOID 
AS $MAIN$
BEGIN
	INSERT INTO sales_person(salesperson_id, first_name, last_name)
	VALUES (salesperson_id, first_name, last_name);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_sales_ppl (1,'Ethan','Florito')

SELECT add_sales_ppl (2,'Tyler','Nickels')

SELECT  ADD_sales_ppl (3,'Ariel','Jacoby')

SELECT * FROM sales_person 

--DELETE FROM sales_person

CREATE FUNCTION add_cust (customer_id INTEGER, first_name VARCHAR(20), last_name VARCHAR(20), email VARCHAR(50), phone_num VARCHAR(20), address VARCHAR(255))
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id, first_name, last_name, email, phone_num, address)
	VALUES (customer_id,first_name, last_name, email, phone_num,  address);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_cust (1,'Erlich','Batchman','EBach@pied.org','828-222-2822','1800 silkon ridge, FL, 33333')

SELECT add_cust (2,'Gary','Yakobitch','GYbtz@he.brew','305-333-3533','917 ghetto st, FL 33009')

SELECT add_cust (3,'Eliam','Yakovy','tooyung4skool@imma.baby','000-000-0000','mom and dads bed 87878')

SELECT * FROM  customer

--DELETE FROM customer;

CREATE FUNCTION add_car (serial_num VARCHAR(20), customer_id INTEGER, year_ INTEGER, make VARCHAR(20), model VARCHAR(20), color VARCHAR(20))
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO car(serial_num, customer_id, year_, make, model, color)
	VALUES (serial_num, customer_id, year_, make, model, color);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_car ('a-002-001-01', 1, 2024,'Audi','r8','Argus Brown Matte')

SELECT add_car ('t-054-010-01', 2, 2024,'Toyota','Rav4','Silver Sky  Metallic')

SELECT add_car ('t-11-02-2022', 3, 2023,'TinyTykes','Coupe','Red and Yellow')

--DELETE   FROM car;

SELECT * FROM car


CREATE FUNCTION add_invoice (invoice_id INTEGER, salesperson_id INTEGER, serial_num VARCHAR(20), purchase_date DATE, amount DECIMAL(10,2))
RETURNS VOID
AS  $MAIN$
BEGIN
	INSERT INTO invoice (invoice_id, salesperson_id, serial_num, purchase_date,amount)
	VALUES (invoice_id, salesperson_id, serial_num, purchase_date, amount);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_invoice (001,1,'t-11-02-2022','2024-01-10','45.97')

SELECT add_invoice (002,2,'a-002-001-01','2024-01-01','150600.00') 

SELECT add_invoice (003,3,'t-054-010-01','2023-12-31','38180.00')


SELECT * FROM invoice

CREATE  FUNCTION add_service_tik  (ticket_id INTEGER, customer_id INTEGER, serial_num VARCHAR(20), date_ DATE, mechanic_id INTEGER)
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO service_ticket(ticket_id, customer_id,  serial_num, date_, mechanic_id)
	VALUES (ticket_id, customer_id,  serial_num, date_, mechanic_id);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_service_tik (001,2,'t-054-010-01','2024-01-05',54)

SELECT add_service_tik (002,3,'t-11-02-2022','2024-01-10',8008)

SELECT add_service_tik (003,1,'a-002-001-01','2024-01-09', 69) 

SELECT * FROM service_ticket

CREATE FUNCTION add_service_rec (record_id INTEGER, serial_num VARCHAR(20), ticket_id INTEGER, service_date DATE, reason_for_service TEXT, parts VARCHAR(255))
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO service_record (record_id, serial_num, ticket_id, service_date, reason_for_service, parts)
	VALUES (record_id, serial_num, ticket_id, service_date, reason_for_service, parts);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_service_rec (00001,'t-054-010-01',001,'2024-01-05','oil change_','oil (7quarts), oil filter_, clean  up')

SELECT add_service_rec (00002, 't-11-02-2022', 002, '2024-01-10','alignment','alignment rack')

SELECT add_service_rec (000003, 'a-002-001-01', 003, '2024-01-09','clutch replacment','clutch, pressure plate, throw out bearing')


SELECT * FROM service_record



);