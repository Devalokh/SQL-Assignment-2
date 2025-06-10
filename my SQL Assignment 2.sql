# create database
-- create database sales;

use sales;
create table orders(
order_id int auto_increment primary key,
customer_name varchar (50) not null,
product_category varchar( 50) not null,
ordered_item varchar(10) not null,
contact_no varchar(10) unique);

desc orders;

alter table orders
add order_quantity varchar (5);

rename table orders to sales_order;

insert into sales_order(customer_name,product_category,ordered_item,contact_no,order_quantity)
values
('arun','electronics','2','999233311','5'),
('manu','toys','5','123456780','6'),
('chandru','mobile','10','222555999','1'),
('hari','furniture','8','774466622','3'),
('tintu','medicine','1','661199922','9'),
('dev','electronics','4','884416699','2'),
('mick','mobile','6','661245632','8'),
('lok','diaryproduct','9','55556666','4'),
('chinnu','mobile','3','12452546','7');

select * from sales_order; 
select customer_name,ordered_item from sales_order;
# update sales_order
rename product_category= 'toys' to 'electronics',
where order_id= 116;
select *from sales_order;

truncate table sales_order;





