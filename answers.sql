/*shows which database to work on */
use salesdb;
    /*Question 1 Achieving 1NF (First Normal Form)

/*split the multivalue column so each product appears in a separate row by craeting two tables
/*creating orders table*/
create table orders2(orderID int primary key, customerName varchar(100));
insert into orders2 
(orderID, customerName) values
(101 ,'John Doe '),(102,'Jane Smith'),(103,'Emily Clark');
/*fetch and visualize the table and data */
select * from orders2;

/*creating products per order table*/
create table orderproducts(
orderID int,
product varchar(100),
foreign key (orderID) references orders2(orderID)
);
insert into  orderproducts 
(orderID, product) values
(101, 'Laptop'),(101, 'Mouse'),
(102, 'Tablet'),(102, 'Keyboard'),(102, 'Mouse'),
(103, 'Phone');
/*fetch and visualize the table and data */
select * from orderproducts;

    /*Question 2 Achieving 2NF (Second Normal Form)*/

/*remove partial depedancie by creating the orders2 table*/
create table orders2(orderID int primary key, customerName varchar(100));
insert into orders2 
(orderID, customerName) values
(101 ,'John Doe '),(102,'Jane Smith'),(103,'Emily Clark');
/**/
create table orderdetails2(orderID int, product varchar(100),
foreign key (orderID) references orders2(orderID));
insert into  orderdetails2 
(orderID, product) values
(101, 'Laptop'),(101, 'Mouse'),
(102, 'Tablet'),(102, 'Keyboard'),(102, 'Mouse'),
(103, 'Phone');
/*fetch and visualize the table and data */
select* from  orderdetails2 ;