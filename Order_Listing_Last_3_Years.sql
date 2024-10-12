--Lists employees, managers, and category names for orders placed in the last 3 years.
Select Ord.OrderDate,ord.OrderID,Concat(E1.FirstName, ' ', E1.LastName) Employee_Name,E1.Title Employee_Title,
Concat(E2.FirstName, ' ', E2.LastName) Manager_Name ,E2.Title Manager_Title,Cat.CategoryName
From Employees E1 Inner Join
	 Employees E2 on E1.ReportsTo = E2.EmployeeID
INNER JOIN ORDERS ORD ON
	E1.EmployeeID = ORD.EmployeeID
INNER JOIN OrderDetails Ord_Det ON
	Ord.OrderID = ord_det.OrderID
Inner JOIN Products Prod ON
	Ord_Det.ProductID = Prod.ProductID
Inner Join Categories Cat ON
	Prod.CategoryID = Cat.CategoryID
where DateDiff(Year,OrderDate,Getdate()) BETWEEN 1 AND 3

