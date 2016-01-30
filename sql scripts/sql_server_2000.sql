/*  SQL 2000 */
USE [master]
GO
EXEC master.dbo.sp_addlogin @loginame = N'cactistats', @passwd = N'CHANGEME', @defdb = N'master'
GO
EXEC master..sp_addsrvrolemember @loginame = N'cactistats', @rolename = N'processadmin'
GO
EXEC dbo.sp_grantdbaccess @loginame = N'cactistats', @name_in_db = N'cactistats'
GO
GRANT SELECT ON [dbo].[sysperfinfo] TO [cactistats]
GO
