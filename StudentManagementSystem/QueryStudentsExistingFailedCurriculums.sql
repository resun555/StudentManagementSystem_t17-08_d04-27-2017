CREATE FUNCTION [dbo].[QueryStudentsExistingFailedCurriculums]
(
)
RETURNS @returntable TABLE
(
	Sno VARCHAR(10) NOT NULL PRIMARY KEY,
    Sname VARCHAR(20) NULL,
	SCgrade NUMERIC(4, 1) NULL
)
AS
BEGIN
	INSERT @returntable
    SELECT FAIL.Sno, [dbo].[S].Sname, FAIL.SCgrade
	FROM [dbo].[S] INNER JOIN
	(
		SELECT ALL *
		FROM [dbo].[SC]
		WHERE Sno IN
		(
			SELECT DISTINCT Sno
			FROM [dbo].[SC]
			WHERE SCgrade < 60
		)
	)
	AS FAIL
	ON [dbo].S.Sno = FAIL.Sno
	RETURN
END
