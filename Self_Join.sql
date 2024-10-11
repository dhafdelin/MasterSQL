--Self-Join Example used to obtain each employee's manager's name, which is stored in the same column as the employee's name
SELECT  Top 10 CONCAT(ED1.First_Name,' ', ED1.LAST_Name) Manager_Name
		,ED1.[Title] As Manager_Title
		,CONCAT(ED2.First_Name,' ', ED2.LAST_Name) Employee_Name
		,ED2.[Title] As Employee_Title
FROM [EmployeeDirectory] ED1
		INNER JOIN EmployeeDirectory ED2 ON
		ED1.EmployeeID = ED2.Manager
/*
Manager_Name		Manager_Title				Employee_Name		Employee_Title
Amaya Witt			Customer Service Manager	Ainsley Barnett		Customer Service Representative
Davis Lang			Lead Product Manager		Dominic Buchanan	Product Manager
Davis Lang			Lead Product Manager		Hermione Lane		Product Manager
Mary Small			Manager UI/UX	Quincy		Lindsay				Designer
Samuel Brooks		Manager of Communications	Lewis Rivas			Senior Writer
Mary Small			Manager UI/UX				Deanna Rowland		Designer
Amaya Witt			Customer Service Manager	Julie Davenport		Customer Service Representative
Devin David			CFO							Scarlet Mccoy		Accountant
Gavin Medina		Chief Technology Officer	Dolan York			Server Adminstrator
Mary Small			Manager UI/UX				Zahir Pickett		Web Designer
*/