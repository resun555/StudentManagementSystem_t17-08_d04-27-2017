CREATE FUNCTION [dbo].[QueryCurriculumsCreditLessThanFour]
(
)
RETURNS @returntable TABLE
(
	Cname VARCHAR(20) NOT NULL PRIMARY KEY
)
AS
BEGIN
	INSERT @returntable
	SELECT Cname
	FROM [dbo].[C]
	WHERE Ccredit < 4
	RETURN
END
