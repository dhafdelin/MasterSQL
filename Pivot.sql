--Obtain the total order amount by date for Seafood, Meat/Poultry, and Dairy Products
Select OrderDate,[SeaFood], [Meat/Poultry], [Dairy Products]
FROM
(
	Select Ord.OrderDate,Cat.CategoryName,od.UnitPrice
	From Orders ORD
	INNER JOIN OrderDetails OD ON
	ORD.OrderID = OD.OrderID
	INNER JOIN Products Prod ON
	OD.ProductID = Prod.ProductID
	INNER JOIN Suppliers Sup ON
	Prod.SupplierID = Sup.SupplierID
	Inner Join Categories Cat ON
	Prod.CategoryID = Cat.CategoryID
)  Src
PIVOT
(	SUM(UnitPrice)
	FOR CategoryName in ([SeaFood], [Meat/Poultry], [Dairy Products])
) PIV
