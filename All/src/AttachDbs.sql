RESTORE DATABASE [AdventureWorks2012] FROM  
    DISK = N'/var/opt/mssql/adventureworks/databases/AdventureWorks2012.bak' 
    WITH  FILE = 1,  
    MOVE N'AdventureWorks2012' TO N'/var/opt/mssql/data/AdventureWorks2012.mdf',  
    MOVE N'AdventureWorks2012_log' TO N'/var/opt/mssql/data/AdventureWorks2012_log.ldf',  
    NOUNLOAD,  STATS = 5
;
RESTORE DATABASE [AdventureWorks2014] FROM  
    DISK = N'/var/opt/mssql/adventureworks/databases/AdventureWorks2014.bak' 
    WITH  FILE = 1,  
	MOVE N'AdventureWorks2014_Data' TO N'/var/opt/mssql/data/AdventureWorks2014_Data.mdf',  
	MOVE N'AdventureWorks2014_Log' TO N'/var/opt/mssql/data/AdventureWorks2014_Log.ldf',  
    NOUNLOAD,  STATS = 5
;
RESTORE DATABASE [AdventureWorks2016] FROM  
    DISK = N'/var/opt/mssql/adventureworks/databases/AdventureWorks2016.bak' 
    WITH  FILE = 1,  
    MOVE N'AdventureWorks2016_Data' TO N'/var/opt/mssql/data/AdventureWorks2016_Data.mdf',  
    MOVE N'AdventureWorks2016_Log' TO N'/var/opt/mssql/data/AdventureWorks2016_Log.ldf',  
    NOUNLOAD,  STATS = 5
;
RESTORE DATABASE [AdventureWorks2017] FROM  
    DISK = N'/var/opt/mssql/adventureworks/databases/AdventureWorks2017.bak' 
    WITH  FILE = 1,  
    MOVE N'AdventureWorks2017' TO N'/var/opt/mssql/data/AdventureWorks2017.mdf',  
    MOVE N'AdventureWorks2017_log' TO N'/var/opt/mssql/data/AdventureWorks2017_log.ldf',  
    NOUNLOAD,  STATS = 5
;
