USE classicmodels;									#1
SHOW Tables;				
SELECT lastName FROM employees; 					#2
SELECT lastName,firstName,jobTitle FROM employees;	#3
SELECT * FROM employees;							#4
SELECT lastName,firstName,jobTitle FROM employees
	WHERE jobTitle='Sales Rep';						#5
SELECT lastName,firstName,jobTitle,officeCode FROM employees
	WHERE jobTitle='Sales Rep' AND officeCode=1;	#6
SELECT lastName,firstName,jobTitle,officeCode FROM employees
	WHERE jobTitle='Sales Rep' AND officeCode=1;	#7
SELECT lastName,firstName,jobTitle,officeCode FROM employees
	WHERE jobTitle='Sales Rep' 
		AND officeCode IN (1,2,3);					#8
SELECT lastName,firstName,jobTitle FROM employees
	WHERE jobTitle != 'Sales Rep' 					
		AND officeCode IN (1,2,3);					#9
SELECT lastName,firstName,officeCode FROM employees
	WHERE officeCode > 5;							#10
SELECT lastName,firstName,officeCode FROM employees
	WHERE officeCode <= 4;							#11
SELECT customerName, country, state FROM customers
	WHERE country='USA' AND state='CA';				#12
SELECT customerName, country, state, creditLimit FROM customers
	WHERE country='USA' 
		AND state='CA' AND creditlimit > 100000;	#13
SELECT customerName,country FROM customers
	WHERE country IN ('USA', 'France');				#14
SELECT customerName,country,creditLimit FROM customers
	WHERE country IN ('USA', 'France')
		AND creditLimit>10000;						#15
SELECT officeCode,city,phone, country FROM offices
	WHERE country IN ('USA', 'France');				#16
SELECT officeCode,city,phone, country FROM offices
	WHERE country NOT IN ('USA', 'France');			#17
SELECT orderNumber, customerNumber,status,shippedDate  FROM orders
	WHERE orderNumber IN (10165,10287,10310);		#18
SELECT contactLastName,contactFirstName FROM customers
	ORDER BY contactLastName ASC;					#19
SELECT contactLastName,contactFirstName FROM customers
	ORDER BY contactLastName DESC;					#20
SELECT contactLastName,contactFirstName FROM customers
	ORDER BY contactLastName DESC,
    contactFirstName ASC;							#21
SELECT customerNumber, customerName, creditLimit FROM customers
	ORDER BY creditLimit DESC LIMIT 5;				#22
SELECT customerNumber, customerName, creditLimit FROM customers
	ORDER BY creditLimit ASC LIMIT 5;				#23
    

