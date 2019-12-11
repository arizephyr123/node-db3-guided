-- inner join from one table to two others by using two foreign keys in the Order Table
-- first and last name's concatenated
SELECT (e.firstName || ' ' || e.lastName) as purchasingAgent
    , o.id
    , o.CustomerId
    , o.ShipCountry as shippedTo
    , c.CompanyName as orderedBy
FROM [Order] AS o
JOIN Employee AS e
ON o.EmployeeId = e.id
JOIN Customer AS c
ON o.CustomerId = c.id;

-- joining orders to order detail to product to get information from all tables
-- * means the rest after the columns specified
select o.id as OrderNumber
    , p.ProductName
    , od.Quantity
    , p.UnitPrice
    , *     
from [order] as o
join orderdetail as od
    on o.id = od.OrderId
join product as p
    on od.productId = p.id;


-- 4 tables joined
-- quantity times unitPrice as lineTotal
select o.id as OrderNumber
, p.ProductName
, od.quantity
, p.unitPrice
,(od.quantity * p.UnitPrice) as lineTotal
, s.companyName
 from [order] as o
join orderdetail as od
on o.Id = od.OrderId
join product as p on od.ProductId = p.Id
join supplier as s 
on s.id = p.SupplierId;

-- a join is the same as an "inner join"
-- distinct means do not repeat or only list once
select distinct c.id, c.CompanyName
from customer as c 
join [order] as o on c.id = o.customerId
order by c.id; -- 16589 orders (90 unique customers)

-- all the customer, even if they have no orders
select c.id, c.companyName as Customer, o.Id 
from customer as c
left join [order] as o on c.id = o.customerId
order by c.id;

-- Luis writes it this way so no accidental delete. He sees that correct data to be deleted displayed then highlights the "delete" and "where" lines to run delete 
select * from [order]
-- delete from [order]
where customerId = 'ALFKI';