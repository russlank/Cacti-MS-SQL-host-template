/*  SQL 2005/2008 */
USE [master]
GO
CREATE LOGIN [cactistats] WITH PASSWORD=N'CHANGEME', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
EXEC sys.sp_addsrvrolemember @loginame = N'cactistats', @rolename = N'processadmin'
GO
CREATE USER [cactistats] FOR LOGIN [cactistats] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT SELECT ON [sys].[dm_os_performance_counters] TO [cactistats]
GO