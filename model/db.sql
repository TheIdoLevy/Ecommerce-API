CREATE TABLE customers (
  id serial PRIMARY KEY,
  username varchar(20) UNIQUE NOT NULL,
  password varchar(100) UNIQUE NOT NULL,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30)
);


CREATE TABLE products(
  id serial PRIMARY KEY,
  name varchar(20) UNIQUE NOT NULL,
  category varchar(20),
  price integer,
  price_per_kilo integer,
  discount integer,
  amount_in_stock varchar(20),
  img varchar(60)
);


CREATE TABLE carts(
  id serial,
  customer_id integer REFERENCES customers(id),
  product_id integer REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,
);


CREATE TABLE checked_out_carts(
  customer_id integer REFERENCES customers(id),
  total_price integer,
  date date,
  time time,
  payment_method varchar(20)
);
