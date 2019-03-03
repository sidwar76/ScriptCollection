USE [master]
GO

SELECT 
'
ALTER DATABASE [' + name + '] SET ANSI_NULLS ON WITH NO_WAIT;
ALTER DATABASE [' + name + '] SET ANSI_PADDING ON WITH NO_WAIT;
ALTER DATABASE [' + name + '] SET CONCAT_NULL_YIELDS_NULL ON WITH NO_WAIT;
'
FROM sys.databases WHERE database_id = 3 --model
OR database_id > 4


GO
