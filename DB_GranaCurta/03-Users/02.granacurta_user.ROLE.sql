USE [DB_GranaCurta]
GO
CREATE USER [granacurta_user] FOR LOGIN [granacurta_user]
GO
USE [DB_GranaCurta]
GO
ALTER ROLE [db_datareader] ADD MEMBER [granacurta_user]
GO
USE [DB_GranaCurta]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [granacurta_user]
GO
