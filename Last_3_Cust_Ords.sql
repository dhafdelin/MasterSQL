--Obtain information on the last 3 customer orders
  with cte as
  (
  Select OrderNum,OrderDate,CustName,Order_Total,
  ROW_NUMBER() OVER (Partition By CustName
						ORDER BY Order_Total Desc) Ranking
    FROM [OnlineRetailSales]
	)

	Select OrderNum,OrderDate,CustName,Order_Total 
	From CTE
	Where Ranking in (1,2,3) and CustName In ('Abbot Group','Abernathy LLC','Abra Lewis')
	Order by CustName,OrderDate
/*  
OrderNum	OrderDate	CustName		Order_Total
1102395		2018-04-04	Abernathy LLC		194.61
1103850		2018-10-26	Abernathy LLC		5870.20
1104205		2018-12-19	Abernathy LLC		191.11
1102803		2018-06-04	Abra Lewis		24.99
1104454		2019-01-25	Abra Lewis		108.00
1104784		2019-03-14	Abra Lewis		54.00
*/
