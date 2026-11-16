-- Q1
SELECT DISTINCT
    (orderNumber)
FROM
    `orderdetails`
WHERE
    productCode LIKE "S18%"
    AND priceEach > 100;

---------------------------------------
-- Q2
SELECT
    *
FROM
    `payments`
WHERE
    paymentDate LIKE "%-%-05"
    OR paymentDate LIKE "%-%-06";

---------------------------------------
-- Q3
SELECT
    customerName,
    country,
    phone,
    creditLimit
FROM
    `customers`
WHERE
    country = "USA"
    AND phone LIKE "%5555%"
ORDER BY
    creditLimit DESC
LIMIT
    1
OFFSET
    4;

---------------------------------------
--Q4
SELECT
    e.firstName,
    e.lastName,
    o.officeCode,
    o.city
FROM
    `employees` e
    JOIN `offices` o on e.officeCode = o.officeCode;

---------------------------------------
--Q5
SELECT
    e.firstName,
    e.lastName,
    o.officeCode,
    o.city
FROM
    `employees` e
    JOIN `offices` o on e.officeCode = o.officeCode
WHERE
    e.officeCode IN (4, 6);