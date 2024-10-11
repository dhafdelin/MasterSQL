--Self-Join Example used to obtain each employee's manager's name, which is stored in the same column as the employee's name
SELECT  Top 10 CONCAT(ED1.First_Name,' ', ED1.LAST_Name) Manager_Name
		,ED1.[Title] As Manager_Title
		,CONCAT(ED2.First_Name,' ', ED2.LAST_Name) Employee_Name
		,ED2.[Title] As Employee_Title
FROM [EmployeeDirectory] ED1
		INNER JOIN EmployeeDirectory ED2 ON
		ED1.EmployeeID = ED2.Manager
Order by Manager_Name,Employee_Name
/*
Manager_Name		Manager_Title				Employee_Name			Employee_Title
Amaya Witt		Customer Service Manager		Ainsley Barnett			Customer Service Representative
Amaya Witt		Customer Service Manager		Amelia Mcfadden			Customer Service Representative
Amaya Witt		Customer Service Manager		Jemima Mccormick		Customer Service Representative
Amaya Witt		Customer Service Manager		Julie Davenport			Customer Service Representative
Amaya Witt		Customer Service Manager		Medge Rollins			Customer Service Representative
Amaya Witt		Customer Service Manager		Thor Watson			Customer Service Representative
Amethyst Ashley		VP Customer Service			Amaya Witt			Customer Service Manager
Amethyst Ashley		VP Customer Service			Guinevere Banks			Engineer
Amethyst Ashley		VP Customer Service			Isabella Bauer			Customer Service Representative
Amethyst Ashley		VP Customer Service			Kiona Hancock			Customer Service Manager
*/
