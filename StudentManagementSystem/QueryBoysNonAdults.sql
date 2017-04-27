CREATE FUNCTION [dbo].[QueryBoysNonAdults]
(
)
RETURNS @returntable TABLE
(
	Sname VARCHAR(20) NULL,
	Sage SMALLINT NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT Sname, Sage
	FROM [dbo].[S]
	WHERE Sage < 18 AND Ssex = 'm'
	RETURN
END
