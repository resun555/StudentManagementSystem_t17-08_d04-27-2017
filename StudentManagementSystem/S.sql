CREATE TABLE [dbo].[S]
(
	[Sno] VARCHAR(10) NOT NULL PRIMARY KEY DEFAULT '000', 
    [Sname] VARCHAR(20) NULL DEFAULT 'sname', 
	[Sdept] VARCHAR(20) NULL DEFAULT 'sdept', 
    [Ssex] CHAR(1) NULL DEFAULT 'm', 
    [Sage] SMALLINT NULL DEFAULT 0, 
    [Snation] VARCHAR(20) NULL DEFAULT 'snation', 
	CONSTRAINT S_Ssex CHECK (Ssex = 'm' OR Ssex = 'f' OR Ssex IS NULL), 
	CONSTRAINT S_Sage CHECK (Sage >= 0 OR Sage IS NULL)
)
