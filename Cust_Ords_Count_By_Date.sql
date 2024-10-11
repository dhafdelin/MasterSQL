--Display all products and # ordered by date for each customer in a single column
Select Top 5 CustName,OrderDate,
		Sum(Quantity) As Tot_Ord,
		STRING_AGG(Concat(ProdName, ' ( ', Quantity, ' )'),',')
		WITHIN GROUP (Order by ProdName) Product
FROM [RedTech30Tech].[dbo].[OnlineRetailSales]
	group by CustName,OrderDate
	Having Count(1) > 1
/*
CustName			OrderDate	Tot_Ord		Product
Baumbach Security	2017-10-26		32		Articulated Robots ( 9 ),Fixed Wing Drones ( 1 ),Panda Robot Blueprint ( 8 ),RCB-889 Robot ( 7 ),Understanding Arduino ( 3 ),Upside Down Robot Blueprint ( 4 )
McKenzie Inc..		2017-10-26		10		Bsquare Robot Blueprint ( 1 ),Hexacopter Drone Blueprint ( 1 ),Robotic Essentials ( 8 )
McKenzie Inc..		2017-11-05		52		BYOR-1500 ( 5 ),Photograph Drones ( 47 )
O'Kon Inc.			2017-11-29		18		DX-145 Drone ( 11 ),Understanding Automation ( 7 )
Moore LLC			2017-12-04		15		Building Your First Robot ( 6 ),BYOD-500 ( 9 )
*/