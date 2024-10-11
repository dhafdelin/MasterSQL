

  WITH CTE as
  (
  SELECT *,
  ROW_NUMBER() OVER (PARTITION BY CUSTNAME
					ORDER BY ORDERDATE DESC) as Ranking
  FROM [OnlineRetailSales]
  )
  Select *
  From CTE
  where Ranking = 1


  with cte as
  (
  Select OrderNum,OrderDate,CustName,ProdCategory,ProdName,Order_Total,
  ROW_NUMBER() OVER (Partition By ProdCategory
						ORDER BY Order_Total Desc) Ranking
    FROM [OnlineRetailSales]
	where Custname = 'Boehm Inc.'
	)

	Select * from CTE
	Where Ranking in (1,2,3)
  
