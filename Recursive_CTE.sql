--Self Join
SELECT  ED1.[First_Name]
      ,ED1.[Last_Name]
      ,ED1.[Title]
      ,ED1.[Department]
      ,ED1.[Email]
      ,ED1.[DepartmentID]
      ,ED1.[EmployeeID]
      ,ED1.[Manager]
	  ,ED2.EmployeeID
	  ,ED2.Manager
  FROM [EmployeeDirectory] ED1
  LEFT OUTER JOIN EmployeeDirectory ED2 ON
  ED1.EmployeeID = ED2.Manager
  where ED2.Manager = 42
  ORDER BY ED2.Manager


  --CTE
  WITH DIRECTREPORTS AS
  (SELECT  EmployeeID,[First_Name]
      ,[Last_Name],MANAGER
    FROM [RedTech30Tech].[dbo].[EmployeeDirectory]
	WHERE EmployeeID = 42 
	UNION ALL
	SELECT  E.EmployeeID,E.[First_Name]
      ,E.[Last_Name],E.MANAGER
	   FROM [RedTech30Tech].[dbo].[EmployeeDirectory] AS E 
	   INNER JOIN DIRECTREPORTS as d on e.Manager = d.EmployeeID
   )

   select COUNT(*) 
   from DIRECTREPORTS AS d
   where d.EmployeeID <> 42


