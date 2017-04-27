CREATE FUNCTION [dbo].[QueryStudentsChoosingObjectOrientedProgramming]
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
	SELECT OOP.Sno, [dbo].[S].Sname
	FROM [dbo].[S] INNER JOIN
	(
		SELECT DISTINCT Sno
		FROM [dbo].[SC]
		WHERE Cno = '03' AND Cname = 'Object Oriented Programming'
	)
	AS OOP
	ON [dbo].[S].Sno = OOP.Sno
	RETURN
END
