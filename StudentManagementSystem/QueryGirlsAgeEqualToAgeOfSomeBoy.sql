CREATE FUNCTION [dbo].[QueryGirlsAgeEqualToAgeOfSomeBoy]
(
)
RETURNS @returntable TABLE
(
	 Sname VARCHAR(20) NULL
)
AS
BEGIN
	INSERT @returntable
	SELECT Sname
	FROM [dbo].[S]
	WHERE Ssex = 'f' AND Sage = SOME
	(
		SELECT Sage
		FROM [dbo].[S]
		WHERE Ssex = 'm'
	)
	RETURN
END
