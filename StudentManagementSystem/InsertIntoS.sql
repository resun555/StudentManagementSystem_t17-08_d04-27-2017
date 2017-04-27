CREATE FUNCTION [dbo].[InsertIntoS]
(
)
RETURNS @returntable TABLE
(
	Sno VARCHAR(10) NOT NULL PRIMARY KEY,
    Sname VARCHAR(20) NULL,
	Sdept VARCHAR(20) NULL,
    Ssex CHAR(1) NULL,
    Sage SMALLINT NULL,
    Snation VARCHAR(20) NULL
)
AS
BEGIN
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('801', 'Srinivasan', 'Comp. Sci.', 'm', 19, 'Taylor')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('802', 'Wu', 'Finance', 'f', 22, 'Painter')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('803', 'Mozart', 'Music', 'm', 21, 'Packard')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('804', 'Einstein', 'Physics', 'm', 25, 'Watson')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('805', 'El Said', 'History', 'f', 16, 'Painter')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('806', 'Gold', 'Physics', 'm', 20, 'Watson')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('807', 'Katz', 'Comp. Sci.', 'm', 20, 'Taylor')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('808', 'Califieri', 'History', 'm', 30, 'Painter')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('809', 'Singh', 'Finance', 'f', 25, 'Painter')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('810', 'Crick', 'Biology', 'm', 22, 'Watson')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('811', 'Brandt', 'Comp. Sci.', 'm', 24, 'Taylor')
	INSERT INTO [dbo].[S](Sno, Sname, Sdept, Ssex, Sage, Snation)
	VALUES ('812', 'Kim', 'Elec. Eng. ', 'f', 20, 'Taylor')
	COMMIT
	INSERT @returntable
	SELECT *
	FROM [dbo].[S]
	RETURN
END
