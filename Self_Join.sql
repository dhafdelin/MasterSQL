--Self-Join Example used to obtain each employee's manager's name, which is stored in the same column as the employee's name
SELECT   CONCAT(ED1.First_Name,' ', ED1.LAST_Name) Manager_Name
		,ED1.[Title] As Manager_Title
		,CONCAT(ED2.First_Name,' ', ED2.LAST_Name) Employee_Name
		,ED2.[Title] As Employee_Title
FROM [EmployeeDirectory] ED1
		INNER JOIN EmployeeDirectory ED2 ON
		ED1.EmployeeID = ED2.Manager




