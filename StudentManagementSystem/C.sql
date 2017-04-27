CREATE TABLE [dbo].[C]
(
	[Cno] VARCHAR(10) NOT NULL DEFAULT '00', 
    [Cname] VARCHAR(20) NOT NULL DEFAULT 'cname', 
    [Ccredit] NUMERIC(4, 1) NULL DEFAULT 0.0, 
	CONSTRAINT C_pk PRIMARY KEY (Cno, Cname), 
	CONSTRAINT C_Ccredit CHECK (Ccredit >= 0 OR Ccredit IS NULL)
)
