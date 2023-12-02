select * from customers;
-----------------------------------------------------------------------
# 1) select all columns from the table
select * From orders;
-------------------------------------------------------------------------
# 2) select single columns from the table employees
SELECT 
    employeeNumber
FROM
    employees;
-------------------------------------------------------------------- 
# 3)select mutiple columns
SELECT 
    employeeNumber, lastName, firstName, extension
FROM
    employees;
--------------------------------------------------------------------------    
#4)sort the customers contactlastname in ascending order
SELECT 
    contactlastname, contactfirstname
FROM
    customers
ORDER BY contactFirstName ASC;
-----------------------------------------------------------------
#5,6)sort in firstName asc and lastName desc order
SELECT 
    contactlastname, contactfirstname
FROM
    customers
ORDER BY contactFirstName ASC, contactLastName desc;
--------------------------------------------------------------------------------------------
# 7)selects the order line items from the orderdeatiaals table, calcuates the subtotal for eachline item and sorts the resuly set based on the subtotal
# Here we are simply taking two columns from tables and mulip to get the subtotal , As help to assign values to a patericular columns u are assigns
select * from orderdetails;
SELECT 
    quantityOrdered * priceEach AS subtotal
FROM
    orderdetails
ORDER BY subtotal ASC;
---------------------------------------------------------------------------
#8)Find all employees whose job titles are sales rep    
SELECT 
    jobTitle
FROM
    employees
WHERE
    jobTitle = 'sales Rep';
------------------------------------------------------------------------------------
#9) Find employees whoes job titles are sales Rep and office rep =1
SELECT 
    jobTitle
FROM
    employees
WHERE
    jobTitle = 'sales Rep'
        or officeCode = 1;
-------------------------------------------------------------------------------------
#10) Finds employees whose last names end with the string "son"
#%means it can be anything in front and if we put befind it can be anything behind after %
SELECT 
    lastname
FROM
    employees
WHERE
    lastname LIKE '%son';
-----------------------------------------------------------------------------------    
 
# if we want both  
SELECT 
    lastname, firstName
FROM
    employees
WHERE
    firstName LIKE '%son' AND
    lastname LIKE '%son';
  ---------------------------------------------------------------------------------
  
#12) To find employees whose first name start with T, end with m and contains any single characters between eg tom,
# underscore only one character if we put two caharcter it will used two underscroe
SELECT 
    firstName
FROM
    employees
WHERE
    firstName LIKE 'T_m'
ORDER BY firstName;
   
#13) Find the employees whose last name contain on  in between 
SELECT 
    lastName
FROM
    employees
WHERE
    lastName LIKE '%on%'
ORDER BY lastName;
   