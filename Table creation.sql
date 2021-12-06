CREATE table dealership_customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
)

create table car (
    vin_num SERIAL PRIMARY KEY,
    year NUMERIC(4),
    make VARCHAR(25),
    model VARCHAR(25),
    used BOOLEAN,
    sold BOOLEAN
)

CREATE table dealership_mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
)

CREATE table parts (
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(25),
    price NUMERIC (6,2)
)

CREATE table deaelership_salesperson (
    sales_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
)

CREATE table dealership_invoice (
    PO_id SERIAL PRIMARY KEY,
    price VARCHAR(10),
    vin_num INTEGER,
    FOREIGN KEY(vin_num) REFERENCES car(vin_num),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES dealership_customer(customer_id),
    sales_id INTEGER,
    FOREIGN KEY (sales_id) REFERENCES deaelership_salesperson(sales_id),
    purchase_date date
)

CREATE table dealership_service_ticket (
    st_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES dealership_customer(customer_id),
    vin_num INTEGER,
    FOREIGN KEY (vin_num) REFERENCES car (vin_num),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES dealership_mechanic (mechanic_id),
    part_id INTEGER,
    FOREIGN KEY (part_id) REFERENCES parts (part_id),
    order_date date,
    total_cost NUMERIC,
    service_type VARCHAR(30)
)

CREATE table service_record (
    record_id SERIAL PRIMARY KEY,
    st_id INTEGER,
    FOREIGN KEY (st_id) REFERENCES dealership_service_ticket(st_id)
)



