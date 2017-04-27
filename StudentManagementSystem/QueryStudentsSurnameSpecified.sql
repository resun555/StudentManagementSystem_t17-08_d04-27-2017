CREATE FUNCTION [dbo].[QueryStudentsSurnameSpecified]
(
)
RETURNS @returntable TABLE
(
	Sno VARCHAR(10) NOT NULL PRIMARY KEY,
	Sname VARCHAR(20) NULL,
	Sage SMALLINT NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT Sno, Sname, Sage
	FROM [dbo].[S]
	WHERE Sname LIKE '%Said%' OR Sname LIKE 'Said%' OR Sname LIKE '%Said'
	RETURN
END
