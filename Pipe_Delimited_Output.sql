--Create a pipe delimited output file with special formatting
  SELECT  CONCAT(Right('0000000000' + Cast(TransactionID as Varchar(10)),10),
	' | ' , Cast(ProductID As Varchar(5)), ' | ', Right('XXXXX' + Cast(TransactionType as Varchar(5)),5),
	' | ', Right('00000000' + Cast(ActualCost as Varchar(8)),8), ' | ',
	Convert(Varchar(10),TransactionDate,101)) Field_Contents
	  FROM Production.TransactionHistory