CREATE FUNCTION [dbo].[InsertIntoC]
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
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('01', 'Database Concepts', 3.0)
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('02', 'Operating Systems', 4.0)
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('03', 'Object Oriented Programming', 2.0)
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('04', 'Java', 3.0)
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('05', 'Python', 3.0)
	INSERT INTO [dbo].[C](Cno, Cname, Ccredit)
	VALUES ('06', 'D Lectures', 2.0)
	COMMIT
	INSERT @returntable
	SELECT *
	FROM [dbo].[C]
	RETURN
END
