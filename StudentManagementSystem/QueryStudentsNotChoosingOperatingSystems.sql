CREATE FUNCTION [dbo].[QueryStudentsNotChoosingOperatingSystems]
(
)
RETURNS @returntable TABLE
(
	Sno VARCHAR(10) NOT NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT DISTINCT Sno
	FROM [dbo].[SC]
	WHERE Sno NOT IN
	(
		SELECT DISTINCT Sno
		FROM [dbo].[SC]
		WHERE Cno = '02' AND Cname = 'Operating Systems'
	)
	RETURN
END
