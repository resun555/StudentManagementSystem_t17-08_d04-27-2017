CREATE FUNCTION [dbo].[QueryStudentsChoosingDatabaseConceptsAndOperatingSystems]
(
)
RETURNS @returntable TABLE
(
	Sno VARCHAR(10) NOT NULL,
	Sname VARCHAR(20) NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT CSPECIFIED.Sno, [dbo].[S].Sname
	FROM [dbo].[S] INNER JOIN
	(
		(
			SELECT DISTINCT Sno
			FROM [dbo].[SC]
			WHERE Cno = '01' AND Cname = 'Database Concepts'
		)
		INTERSECT
		(
			SELECT DISTINCT Sno
			FROM [dbo].[SC]
			WHERE Cno = '02' AND Cname = 'Operating Systems'
		)
	)
	AS CSPECIFIED
	ON [dbo].[S].Sno = CSPECIFIED.Sno
	RETURN
END
