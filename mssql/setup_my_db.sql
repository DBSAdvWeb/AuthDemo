USE master
GO
    IF NOT EXISTS
        (SELECT [name] FROM sys.databases
        WHERE [name] = N'AuthDemo')
        CREATE database AuthDemo
GO