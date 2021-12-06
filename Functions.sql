----FUNCTIONS------

-----add customer------

create or Replace FUNCTION add_customer (
    customer INTEGER,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
)
RETURNS void
AS
$MAIN$
BEGIN
insert into dealership_customer(customer_id, first_name, last_name)
values (customer, first_name, last_name);
end;
$MAIN$
language plpgsql;

 add_customer(10,'Joey', 'Gemelli')
 
 select * from dealership_customer

------Update part price-------

CREATE PROCEDURE update_part_price(
    part INTEGER,
    new_price NUMERIC(6,2)
)

LANGUAGE plpgsql
AS $$ 
BEGIN

    update parts
    set price = new_price
    where part_id = part;

    commit;

end
$$
;

call update_part_price(1, 2500.00)

select * from parts

