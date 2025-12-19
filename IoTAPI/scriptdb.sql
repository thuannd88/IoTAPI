-- Tạo database IoT
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'IoT')
BEGIN
    CREATE DATABASE IoT;
END
GO

-- Sử dụng database IoT
USE IoT;
GO

-- Tạo bảng Devices
IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[Devices]') AND type = N'U'
)
BEGIN
    CREATE TABLE [dbo].[Devices]
    (
        [Id] INT IDENTITY(1,1) PRIMARY KEY,
        [Name] NVARCHAR(128) NOT NULL,
        [Description] NVARCHAR(128) NULL
    );
END
GO