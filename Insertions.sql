insert into dealership_customer(first_name, last_name)
values ('John','Brandon'),('Sam','Manning'),('Allan','idk'),('Shoha','Tsuchida'),('Josh','Cunningham');

select * from dealership_customer

insert into car(year, make, model, used, sold)
values (2014, 'Dodge', 'Dart', true, false);

insert into dealership_mechanic(first_name, last_name)
values ('Joe','Dirt'),('Jenny','Manning'),('Allan','Allen'),('Shooha','Tsucara'),('Josh','Carfixer');

select * from dealership_mechanic

insert into parts (part_name, price)
values ('Catalytic Converter',2000.00),('Engine',4000.00),('Spark Plugs',20.00),('Timing Belt',120.00);


select * from parts

insert into deaelership_salesperson(first_name, last_name)
values ('Johnny','Bravo'),('Alex','Spped'),('Ben','Dover'),('Lindsay','Pluta'),('Alyson','Pluta');

insert into dealership_service_ticket(customer_id, vin_num, mechanic_id, part_id, order_date, total_cost, service_type)
values (2,1,3,1,'2020-12-1',2000.00,'installation')

select * from dealership_service_ticket

insert into service_record(st_id)
values(1)


