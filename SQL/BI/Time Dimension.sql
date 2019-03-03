﻿SET NOCOUNT ON

TRUNCATE TABLE [dbo].[tData]

DECLARE @DATAINI as DATETIME2(0) = CONVERT(VARCHAR(4), YEAR(SYSDATETIME())) + ‘-01-01′

DECLARE @DATAFIM as DATETIME2(0) = CONVERT(VARCHAR(4), YEAR(SYSDATETIME()) + 0) + ‘-12-31′

DECLARE @DATA as DATETIME2(0) = @DATAINI

WHILE @DATA <= @DATAFIM

BEGIN

INSERT INTO [dbo].[tData]([CollectedDate],[Year],[Month],[Day],[Hour],[Minute],[Second])

-- 1 dia completo de 30 em 30 minutos

SELECT DATEADD(Minute,0,@DATA),DATEPART(Minute,DATEADD(Minute,0,@DATA)),DATEPART(Month,DATEADD(Minute,0,@DATA)),DATEPART(Day,DATEADD(Minute,0,@DATA)),DATEPART(Hour,DATEADD(Minute,0,@DATA)),DATEPART(Minute,DATEADD(Minute,0,@DATA)),DATEPART(Second,DATEADD(Minute,0,@DATA)) UNION ALL

SELECT DATEADD(Minute,30,@DATA),DATEPART(Minute,DATEADD(Minute,30,@DATA)),DATEPART(Month,DATEADD(Minute,30,@DATA)),DATEPART(Day,DATEADD(Minute,30,@DATA)),DATEPART(Hour,DATEADD(Minute,30,@DATA)),DATEPART(Minute,DATEADD(Minute,30,@DATA)),DATEPART(Second,DATEADD(Minute,30,@DATA)) UNION ALL

SELECT DATEADD(Minute,60,@DATA),DATEPART(Minute,DATEADD(Minute,60,@DATA)),DATEPART(Month,DATEADD(Minute,60,@DATA)),DATEPART(Day,DATEADD(Minute,60,@DATA)),DATEPART(Hour,DATEADD(Minute,60,@DATA)),DATEPART(Minute,DATEADD(Minute,60,@DATA)),DATEPART(Second,DATEADD(Minute,60,@DATA)) UNION ALL

SELECT DATEADD(Minute,90,@DATA),DATEPART(Minute,DATEADD(Minute,90,@DATA)),DATEPART(Month,DATEADD(Minute,90,@DATA)),DATEPART(Day,DATEADD(Minute,90,@DATA)),DATEPART(Hour,DATEADD(Minute,90,@DATA)),DATEPART(Minute,DATEADD(Minute,90,@DATA)),DATEPART(Second,DATEADD(Minute,90,@DATA)) UNION ALL

SELECT DATEADD(Minute,120,@DATA),DATEPART(Minute,DATEADD(Minute,120,@DATA)),DATEPART(Month,DATEADD(Minute,120,@DATA)),DATEPART(Day,DATEADD(Minute,120,@DATA)),DATEPART(Hour,DATEADD(Minute,120,@DATA)),DATEPART(Minute,DATEADD(Minute,120,@DATA)),DATEPART(Second,DATEADD(Minute,120,@DATA)) UNION ALL

SELECT DATEADD(Minute,150,@DATA),DATEPART(Minute,DATEADD(Minute,150,@DATA)),DATEPART(Month,DATEADD(Minute,150,@DATA)),DATEPART(Day,DATEADD(Minute,150,@DATA)),DATEPART(Hour,DATEADD(Minute,150,@DATA)),DATEPART(Minute,DATEADD(Minute,150,@DATA)),DATEPART(Second,DATEADD(Minute,150,@DATA)) UNION ALL

SELECT DATEADD(Minute,180,@DATA),DATEPART(Minute,DATEADD(Minute,180,@DATA)),DATEPART(Month,DATEADD(Minute,180,@DATA)),DATEPART(Day,DATEADD(Minute,180,@DATA)),DATEPART(Hour,DATEADD(Minute,180,@DATA)),DATEPART(Minute,DATEADD(Minute,180,@DATA)),DATEPART(Second,DATEADD(Minute,180,@DATA)) UNION ALL

SELECT DATEADD(Minute,210,@DATA),DATEPART(Minute,DATEADD(Minute,210,@DATA)),DATEPART(Month,DATEADD(Minute,210,@DATA)),DATEPART(Day,DATEADD(Minute,210,@DATA)),DATEPART(Hour,DATEADD(Minute,210,@DATA)),DATEPART(Minute,DATEADD(Minute,210,@DATA)),DATEPART(Second,DATEADD(Minute,210,@DATA)) UNION ALL

SELECT DATEADD(Minute,240,@DATA),DATEPART(Minute,DATEADD(Minute,240,@DATA)),DATEPART(Month,DATEADD(Minute,240,@DATA)),DATEPART(Day,DATEADD(Minute,240,@DATA)),DATEPART(Hour,DATEADD(Minute,240,@DATA)),DATEPART(Minute,DATEADD(Minute,240,@DATA)),DATEPART(Second,DATEADD(Minute,240,@DATA)) UNION ALL

SELECT DATEADD(Minute,270,@DATA),DATEPART(Minute,DATEADD(Minute,270,@DATA)),DATEPART(Month,DATEADD(Minute,270,@DATA)),DATEPART(Day,DATEADD(Minute,270,@DATA)),DATEPART(Hour,DATEADD(Minute,270,@DATA)),DATEPART(Minute,DATEADD(Minute,270,@DATA)),DATEPART(Second,DATEADD(Minute,270,@DATA)) UNION ALL

SELECT DATEADD(Minute,300,@DATA),DATEPART(Minute,DATEADD(Minute,300,@DATA)),DATEPART(Month,DATEADD(Minute,300,@DATA)),DATEPART(Day,DATEADD(Minute,300,@DATA)),DATEPART(Hour,DATEADD(Minute,300,@DATA)),DATEPART(Minute,DATEADD(Minute,300,@DATA)),DATEPART(Second,DATEADD(Minute,300,@DATA)) UNION ALL

SELECT DATEADD(Minute,330,@DATA),DATEPART(Minute,DATEADD(Minute,330,@DATA)),DATEPART(Month,DATEADD(Minute,330,@DATA)),DATEPART(Day,DATEADD(Minute,330,@DATA)),DATEPART(Hour,DATEADD(Minute,330,@DATA)),DATEPART(Minute,DATEADD(Minute,330,@DATA)),DATEPART(Second,DATEADD(Minute,330,@DATA)) UNION ALL

SELECT DATEADD(Minute,360,@DATA),DATEPART(Minute,DATEADD(Minute,360,@DATA)),DATEPART(Month,DATEADD(Minute,360,@DATA)),DATEPART(Day,DATEADD(Minute,360,@DATA)),DATEPART(Hour,DATEADD(Minute,360,@DATA)),DATEPART(Minute,DATEADD(Minute,360,@DATA)),DATEPART(Second,DATEADD(Minute,360,@DATA)) UNION ALL

SELECT DATEADD(Minute,390,@DATA),DATEPART(Minute,DATEADD(Minute,390,@DATA)),DATEPART(Month,DATEADD(Minute,390,@DATA)),DATEPART(Day,DATEADD(Minute,390,@DATA)),DATEPART(Hour,DATEADD(Minute,390,@DATA)),DATEPART(Minute,DATEADD(Minute,390,@DATA)),DATEPART(Second,DATEADD(Minute,390,@DATA)) UNION ALL

SELECT DATEADD(Minute,420,@DATA),DATEPART(Minute,DATEADD(Minute,420,@DATA)),DATEPART(Month,DATEADD(Minute,420,@DATA)),DATEPART(Day,DATEADD(Minute,420,@DATA)),DATEPART(Hour,DATEADD(Minute,420,@DATA)),DATEPART(Minute,DATEADD(Minute,420,@DATA)),DATEPART(Second,DATEADD(Minute,420,@DATA)) UNION ALL

SELECT DATEADD(Minute,450,@DATA),DATEPART(Minute,DATEADD(Minute,450,@DATA)),DATEPART(Month,DATEADD(Minute,450,@DATA)),DATEPART(Day,DATEADD(Minute,450,@DATA)),DATEPART(Hour,DATEADD(Minute,450,@DATA)),DATEPART(Minute,DATEADD(Minute,450,@DATA)),DATEPART(Second,DATEADD(Minute,450,@DATA)) UNION ALL

SELECT DATEADD(Minute,480,@DATA),DATEPART(Minute,DATEADD(Minute,480,@DATA)),DATEPART(Month,DATEADD(Minute,480,@DATA)),DATEPART(Day,DATEADD(Minute,480,@DATA)),DATEPART(Hour,DATEADD(Minute,480,@DATA)),DATEPART(Minute,DATEADD(Minute,480,@DATA)),DATEPART(Second,DATEADD(Minute,480,@DATA)) UNION ALL

SELECT DATEADD(Minute,510,@DATA),DATEPART(Minute,DATEADD(Minute,510,@DATA)),DATEPART(Month,DATEADD(Minute,510,@DATA)),DATEPART(Day,DATEADD(Minute,510,@DATA)),DATEPART(Hour,DATEADD(Minute,510,@DATA)),DATEPART(Minute,DATEADD(Minute,510,@DATA)),DATEPART(Second,DATEADD(Minute,510,@DATA)) UNION ALL

SELECT DATEADD(Minute,540,@DATA),DATEPART(Minute,DATEADD(Minute,540,@DATA)),DATEPART(Month,DATEADD(Minute,540,@DATA)),DATEPART(Day,DATEADD(Minute,540,@DATA)),DATEPART(Hour,DATEADD(Minute,540,@DATA)),DATEPART(Minute,DATEADD(Minute,540,@DATA)),DATEPART(Second,DATEADD(Minute,540,@DATA)) UNION ALL

SELECT DATEADD(Minute,570,@DATA),DATEPART(Minute,DATEADD(Minute,570,@DATA)),DATEPART(Month,DATEADD(Minute,570,@DATA)),DATEPART(Day,DATEADD(Minute,570,@DATA)),DATEPART(Hour,DATEADD(Minute,570,@DATA)),DATEPART(Minute,DATEADD(Minute,570,@DATA)),DATEPART(Second,DATEADD(Minute,570,@DATA)) UNION ALL

SELECT DATEADD(Minute,600,@DATA),DATEPART(Minute,DATEADD(Minute,600,@DATA)),DATEPART(Month,DATEADD(Minute,600,@DATA)),DATEPART(Day,DATEADD(Minute,600,@DATA)),DATEPART(Hour,DATEADD(Minute,600,@DATA)),DATEPART(Minute,DATEADD(Minute,600,@DATA)),DATEPART(Second,DATEADD(Minute,600,@DATA)) UNION ALL

SELECT DATEADD(Minute,630,@DATA),DATEPART(Minute,DATEADD(Minute,630,@DATA)),DATEPART(Month,DATEADD(Minute,630,@DATA)),DATEPART(Day,DATEADD(Minute,630,@DATA)),DATEPART(Hour,DATEADD(Minute,630,@DATA)),DATEPART(Minute,DATEADD(Minute,630,@DATA)),DATEPART(Second,DATEADD(Minute,630,@DATA)) UNION ALL

SELECT DATEADD(Minute,660,@DATA),DATEPART(Minute,DATEADD(Minute,660,@DATA)),DATEPART(Month,DATEADD(Minute,660,@DATA)),DATEPART(Day,DATEADD(Minute,660,@DATA)),DATEPART(Hour,DATEADD(Minute,660,@DATA)),DATEPART(Minute,DATEADD(Minute,660,@DATA)),DATEPART(Second,DATEADD(Minute,660,@DATA)) UNION ALL

SELECT DATEADD(Minute,690,@DATA),DATEPART(Minute,DATEADD(Minute,690,@DATA)),DATEPART(Month,DATEADD(Minute,690,@DATA)),DATEPART(Day,DATEADD(Minute,690,@DATA)),DATEPART(Hour,DATEADD(Minute,690,@DATA)),DATEPART(Minute,DATEADD(Minute,690,@DATA)),DATEPART(Second,DATEADD(Minute,690,@DATA)) UNION ALL

SELECT DATEADD(Minute,720,@DATA),DATEPART(Minute,DATEADD(Minute,720,@DATA)),DATEPART(Month,DATEADD(Minute,720,@DATA)),DATEPART(Day,DATEADD(Minute,720,@DATA)),DATEPART(Hour,DATEADD(Minute,720,@DATA)),DATEPART(Minute,DATEADD(Minute,720,@DATA)),DATEPART(Second,DATEADD(Minute,720,@DATA)) UNION ALL

SELECT DATEADD(Minute,750,@DATA),DATEPART(Minute,DATEADD(Minute,750,@DATA)),DATEPART(Month,DATEADD(Minute,750,@DATA)),DATEPART(Day,DATEADD(Minute,750,@DATA)),DATEPART(Hour,DATEADD(Minute,750,@DATA)),DATEPART(Minute,DATEADD(Minute,750,@DATA)),DATEPART(Second,DATEADD(Minute,750,@DATA)) UNION ALL

SELECT DATEADD(Minute,780,@DATA),DATEPART(Minute,DATEADD(Minute,780,@DATA)),DATEPART(Month,DATEADD(Minute,780,@DATA)),DATEPART(Day,DATEADD(Minute,780,@DATA)),DATEPART(Hour,DATEADD(Minute,780,@DATA)),DATEPART(Minute,DATEADD(Minute,780,@DATA)),DATEPART(Second,DATEADD(Minute,780,@DATA)) UNION ALL

SELECT DATEADD(Minute,810,@DATA),DATEPART(Minute,DATEADD(Minute,810,@DATA)),DATEPART(Month,DATEADD(Minute,810,@DATA)),DATEPART(Day,DATEADD(Minute,810,@DATA)),DATEPART(Hour,DATEADD(Minute,810,@DATA)),DATEPART(Minute,DATEADD(Minute,810,@DATA)),DATEPART(Second,DATEADD(Minute,810,@DATA)) UNION ALL

SELECT DATEADD(Minute,840,@DATA),DATEPART(Minute,DATEADD(Minute,840,@DATA)),DATEPART(Month,DATEADD(Minute,840,@DATA)),DATEPART(Day,DATEADD(Minute,840,@DATA)),DATEPART(Hour,DATEADD(Minute,840,@DATA)),DATEPART(Minute,DATEADD(Minute,840,@DATA)),DATEPART(Second,DATEADD(Minute,840,@DATA)) UNION ALL

SELECT DATEADD(Minute,870,@DATA),DATEPART(Minute,DATEADD(Minute,870,@DATA)),DATEPART(Month,DATEADD(Minute,870,@DATA)),DATEPART(Day,DATEADD(Minute,870,@DATA)),DATEPART(Hour,DATEADD(Minute,870,@DATA)),DATEPART(Minute,DATEADD(Minute,870,@DATA)),DATEPART(Second,DATEADD(Minute,870,@DATA)) UNION ALL

SELECT DATEADD(Minute,900,@DATA),DATEPART(Minute,DATEADD(Minute,900,@DATA)),DATEPART(Month,DATEADD(Minute,900,@DATA)),DATEPART(Day,DATEADD(Minute,900,@DATA)),DATEPART(Hour,DATEADD(Minute,900,@DATA)),DATEPART(Minute,DATEADD(Minute,900,@DATA)),DATEPART(Second,DATEADD(Minute,900,@DATA)) UNION ALL

SELECT DATEADD(Minute,930,@DATA),DATEPART(Minute,DATEADD(Minute,930,@DATA)),DATEPART(Month,DATEADD(Minute,930,@DATA)),DATEPART(Day,DATEADD(Minute,930,@DATA)),DATEPART(Hour,DATEADD(Minute,930,@DATA)),DATEPART(Minute,DATEADD(Minute,930,@DATA)),DATEPART(Second,DATEADD(Minute,930,@DATA)) UNION ALL

SELECT DATEADD(Minute,960,@DATA),DATEPART(Minute,DATEADD(Minute,960,@DATA)),DATEPART(Month,DATEADD(Minute,960,@DATA)),DATEPART(Day,DATEADD(Minute,960,@DATA)),DATEPART(Hour,DATEADD(Minute,960,@DATA)),DATEPART(Minute,DATEADD(Minute,960,@DATA)),DATEPART(Second,DATEADD(Minute,960,@DATA)) UNION ALL

SELECT DATEADD(Minute,990,@DATA),DATEPART(Minute,DATEADD(Minute,990,@DATA)),DATEPART(Month,DATEADD(Minute,990,@DATA)),DATEPART(Day,DATEADD(Minute,990,@DATA)),DATEPART(Hour,DATEADD(Minute,990,@DATA)),DATEPART(Minute,DATEADD(Minute,990,@DATA)),DATEPART(Second,DATEADD(Minute,990,@DATA)) UNION ALL

SELECT DATEADD(Minute,1020,@DATA),DATEPART(Minute,DATEADD(Minute,1020,@DATA)),DATEPART(Month,DATEADD(Minute,1020,@DATA)),DATEPART(Day,DATEADD(Minute,1020,@DATA)),DATEPART(Hour,DATEADD(Minute,1020,@DATA)),DATEPART(Minute,DATEADD(Minute,1020,@DATA)),DATEPART(Second,DATEADD(Minute,1020,@DATA)) UNION ALL

SELECT DATEADD(Minute,1050,@DATA),DATEPART(Minute,DATEADD(Minute,1050,@DATA)),DATEPART(Month,DATEADD(Minute,1050,@DATA)),DATEPART(Day,DATEADD(Minute,1050,@DATA)),DATEPART(Hour,DATEADD(Minute,1050,@DATA)),DATEPART(Minute,DATEADD(Minute,1050,@DATA)),DATEPART(Second,DATEADD(Minute,1050,@DATA)) UNION ALL

SELECT DATEADD(Minute,1080,@DATA),DATEPART(Minute,DATEADD(Minute,1080,@DATA)),DATEPART(Month,DATEADD(Minute,1080,@DATA)),DATEPART(Day,DATEADD(Minute,1080,@DATA)),DATEPART(Hour,DATEADD(Minute,1080,@DATA)),DATEPART(Minute,DATEADD(Minute,1080,@DATA)),DATEPART(Second,DATEADD(Minute,1080,@DATA)) UNION ALL

SELECT DATEADD(Minute,1110,@DATA),DATEPART(Minute,DATEADD(Minute,1110,@DATA)),DATEPART(Month,DATEADD(Minute,1110,@DATA)),DATEPART(Day,DATEADD(Minute,1110,@DATA)),DATEPART(Hour,DATEADD(Minute,1110,@DATA)),DATEPART(Minute,DATEADD(Minute,1110,@DATA)),DATEPART(Second,DATEADD(Minute,1110,@DATA)) UNION ALL

SELECT DATEADD(Minute,1140,@DATA),DATEPART(Minute,DATEADD(Minute,1140,@DATA)),DATEPART(Month,DATEADD(Minute,1140,@DATA)),DATEPART(Day,DATEADD(Minute,1140,@DATA)),DATEPART(Hour,DATEADD(Minute,1140,@DATA)),DATEPART(Minute,DATEADD(Minute,1140,@DATA)),DATEPART(Second,DATEADD(Minute,1140,@DATA)) UNION ALL

SELECT DATEADD(Minute,1170,@DATA),DATEPART(Minute,DATEADD(Minute,1170,@DATA)),DATEPART(Month,DATEADD(Minute,1170,@DATA)),DATEPART(Day,DATEADD(Minute,1170,@DATA)),DATEPART(Hour,DATEADD(Minute,1170,@DATA)),DATEPART(Minute,DATEADD(Minute,1170,@DATA)),DATEPART(Second,DATEADD(Minute,1170,@DATA)) UNION ALL

SELECT DATEADD(Minute,1200,@DATA),DATEPART(Minute,DATEADD(Minute,1200,@DATA)),DATEPART(Month,DATEADD(Minute,1200,@DATA)),DATEPART(Day,DATEADD(Minute,1200,@DATA)),DATEPART(Hour,DATEADD(Minute,1200,@DATA)),DATEPART(Minute,DATEADD(Minute,1200,@DATA)),DATEPART(Second,DATEADD(Minute,1200,@DATA)) UNION ALL

SELECT DATEADD(Minute,1230,@DATA),DATEPART(Minute,DATEADD(Minute,1230,@DATA)),DATEPART(Month,DATEADD(Minute,1230,@DATA)),DATEPART(Day,DATEADD(Minute,1230,@DATA)),DATEPART(Hour,DATEADD(Minute,1230,@DATA)),DATEPART(Minute,DATEADD(Minute,1230,@DATA)),DATEPART(Second,DATEADD(Minute,1230,@DATA)) UNION ALL

SELECT DATEADD(Minute,1260,@DATA),DATEPART(Minute,DATEADD(Minute,1260,@DATA)),DATEPART(Month,DATEADD(Minute,1260,@DATA)),DATEPART(Day,DATEADD(Minute,1260,@DATA)),DATEPART(Hour,DATEADD(Minute,1260,@DATA)),DATEPART(Minute,DATEADD(Minute,1260,@DATA)),DATEPART(Second,DATEADD(Minute,1260,@DATA)) UNION ALL

SELECT DATEADD(Minute,1290,@DATA),DATEPART(Minute,DATEADD(Minute,1290,@DATA)),DATEPART(Month,DATEADD(Minute,1290,@DATA)),DATEPART(Day,DATEADD(Minute,1290,@DATA)),DATEPART(Hour,DATEADD(Minute,1290,@DATA)),DATEPART(Minute,DATEADD(Minute,1290,@DATA)),DATEPART(Second,DATEADD(Minute,1290,@DATA)) UNION ALL

SELECT DATEADD(Minute,1320,@DATA),DATEPART(Minute,DATEADD(Minute,1320,@DATA)),DATEPART(Month,DATEADD(Minute,1320,@DATA)),DATEPART(Day,DATEADD(Minute,1320,@DATA)),DATEPART(Hour,DATEADD(Minute,1320,@DATA)),DATEPART(Minute,DATEADD(Minute,1320,@DATA)),DATEPART(Second,DATEADD(Minute,1320,@DATA)) UNION ALL

SELECT DATEADD(Minute,1350,@DATA),DATEPART(Minute,DATEADD(Minute,1350,@DATA)),DATEPART(Month,DATEADD(Minute,1350,@DATA)),DATEPART(Day,DATEADD(Minute,1350,@DATA)),DATEPART(Hour,DATEADD(Minute,1350,@DATA)),DATEPART(Minute,DATEADD(Minute,1350,@DATA)),DATEPART(Second,DATEADD(Minute,1350,@DATA)) UNION ALL

SELECT DATEADD(Minute,1380,@DATA),DATEPART(Minute,DATEADD(Minute,1380,@DATA)),DATEPART(Month,DATEADD(Minute,1380,@DATA)),DATEPART(Day,DATEADD(Minute,1380,@DATA)),DATEPART(Hour,DATEADD(Minute,1380,@DATA)),DATEPART(Minute,DATEADD(Minute,1380,@DATA)),DATEPART(Second,DATEADD(Minute,1380,@DATA)) UNION ALL

SELECT DATEADD(Minute,1410,@DATA),DATEPART(Minute,DATEADD(Minute,1410,@DATA)),DATEPART(Month,DATEADD(Minute,1410,@DATA)),DATEPART(Day,DATEADD(Minute,1410,@DATA)),DATEPART(Hour,DATEADD(Minute,1410,@DATA)),DATEPART(Minute,DATEADD(Minute,1410,@DATA)),DATEPART(Second,DATEADD(Minute,1410,@DATA))

SET @DATA = DATEADD(day,1,@DATA)

END