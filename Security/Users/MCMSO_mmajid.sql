IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'MCMSO\mmajid')
CREATE LOGIN [MCMSO\mmajid] FROM WINDOWS
GO
CREATE USER [MCMSO\mmajid] FOR LOGIN [MCMSO\mmajid]
GO
