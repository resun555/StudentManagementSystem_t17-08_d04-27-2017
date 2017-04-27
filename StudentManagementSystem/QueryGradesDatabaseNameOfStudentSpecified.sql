CREATE FUNCTION [dbo].[QueryGradesDatabaseNameOfStudentSpecified]
(
)
RETURNS @returntable TABLE
(
	SCgrade NUMERIC(4, 1) NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT DBCONCEPTS.SCgrade
	FROM
	(
		SELECT ALL *
		FROM [dbo].[S]
		WHERE Sname = 'Einstein'
	)
	AS EINSTEIN
	INNER JOIN
	(
		SELECT ALL *
		FROM [dbo].[SC]
		WHERE Cno = '01' AND Cname = 'Database Concepts'
	)
	AS DBCONCEPTS
	ON EINSTEIN.Sno = DBCONCEPTS.Sno
	RETURN
END
