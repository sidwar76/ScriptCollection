
DECLARE @QUERY VARCHAR(8000)

SET @QUERY = ''
SET @QUERY = @QUERY + ' bcp "SELECT * FROM [PREPAID_MIGRACAO].[dbo].[CDR] WHERE [ARRIVEDTIME] BETWEEN ''2006-02-03 00:00:00'' AND ''2006-02-15 23:59:59''"'
SET @QUERY = @QUERY + ' queryout "C:\TEMP\TESTE123.txt" -c'
SET @QUERY = @QUERY + ' -S"SQL-DESENV" -Usa -P'

EXEC MASTER..xp_cmdshell @QUERY

