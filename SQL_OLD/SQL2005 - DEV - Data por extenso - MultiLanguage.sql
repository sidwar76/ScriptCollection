
SET LANGUAGE Portuguese
GO
SELECT DATENAME(dd,GETDATE()) + ' de ' + DATENAME(mm,GETDATE()) + ' de ' + CAST(YEAR(GETDATE()) AS CHAR(4))


SET LANGUAGE English
GO
SELECT DATENAME(dd,GETDATE()) + ' de ' + DATENAME(mm,GETDATE()) + ' de ' + CAST(YEAR(GETDATE()) AS CHAR(4))
