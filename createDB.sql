CREATE DATABASE voat;
GO

CREATE DATABASE voatUsers;
GO

USE voat;
GO

CREATE LOGIN voat WITH PASSWORD = 'secretpwd'
GO

CREATE USER voat FOR LOGIN voat
GRANT CREATE ANY DATABASE TO voat
EXEC sp_addrolemember N'db_owner', N'voat'
GO

USE voatUsers;
GO

CREATE LOGIN voatUsers WITH PASSWORD = 'secretpwd'
GO

CREATE USER voatUsers FOR LOGIN voatUsers
GRANT CREATE ANY DATABASE TO voatUsers
EXEC sp_addrolemember N'db_owner', N'voatUsers'
GO
