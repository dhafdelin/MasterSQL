With Cust
AS
(
	SELECT CustomerID,
			CompanyName,
			Address,
			City,
			Region,
			PostalCode
	From Customers
),
Cust_Ords
AS
(	Select CustomerID,Count(1) Total_Orders, Sum(OD.UnitPrice) Total_Amount
	From Orders Ord Inner Join OrderDetails OD ON
	Ord.OrderID = OD.OrderID
	Group By CustomerID
)
	SELECT Cust.CustomerID,
			Cust.CompanyName,
			Cust.Address,
			Cust.City,
			Cust.Region,
			Cust.PostalCode,
			Cust_Ords.Total_Orders,
			Cust_Ords.Total_Amount
	From Cust Inner Join Cust_Ords ON
		 Cust.CustomerID = Cust_Ords.CustomerID
	Order by Cust.CompanyName



