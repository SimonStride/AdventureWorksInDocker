
RESTORE DATABASE [AdventureWorks2019] FROM  
    DISK = N'/var/opt/mssql/adventureworks/databases/AdventureWorks2019.bak' 
    WITH  FILE = 1,  
    MOVE N'AdventureWorks2017' TO N'/var/opt/mssql/data/AdventureWorks2019.mdf',  
    MOVE N'AdventureWorks2017_log' TO N'/var/opt/mssql/data/AdventureWorks2019_log.ldf',  
    NOUNLOAD,  STATS = 5
;
