SELECT proname, proargtypes
FROM  pg_proc
WHERE pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'public')
ORDER BY proname;



CREATE TABLE sales_person(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20)
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	phone_num VARCHAR(20),
	address VARCHAR(255)
);

CREATE TABLE car(
	serial_num VARCHAR(20) PRIMARY KEY,
	customer_id INTEGER,
	year_ INTEGER,
	make VARCHAR(20),
	model VARCHAR(20),
	color VARCHAR(20),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	salesperson_id INTEGER,
	serial_num VARCHAR(20),
	purchase_date DATE,
	amount DECIMAL(10,2),
	FOREIGN KEY(salesperson_id) REFERENCES sales_person(salesperson_id),
	FOREIGN KEY(serial_num) REFERENCES car(serial_num)
);

CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	serial_num VARCHAR(20),
	date_ DATE,
	mechanic_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(serial_num) REFERENCES car(serial_num)
);

CREATE TABLE service_record(
	record_id SERIAL PRIMARY KEY,
	serial_num VARCHAR(20),
	ticket_id INTEGER,
	service_date DATE,
	reason_for_service TEXT,
	parts VARCHAR(255),
	FOREIGN KEY(serial_num) REFERENCES car(serial_num),
	FOREIGN KEY(ticket_id) REFERENCES service_ticket(ticket_id)
);






SELECT * FROM sales_person




















