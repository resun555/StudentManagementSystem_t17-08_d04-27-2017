CREATE FUNCTION [dbo].[QueryCurriculumsCreditNotLessThanFour]
(
)
RETURNS @returntable TABLE
(
	Cno VARCHAR(10) NOT NULL PRIMARY KEY,
    Cname VARCHAR(20) NOT NULL,
    Ccredit NUMERIC(4, 1) NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT Cno, Cname, Ccredit
	FROM [dbo].[C]
	WHERE NOT Ccredit < 4  
	RETURN
END
