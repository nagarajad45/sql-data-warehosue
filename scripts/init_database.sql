/*
  Script Purpose:

    Create Databse and Shemas:
      - create a database called "DataWarehouse"
      - If the database exists, it dropped it and created.
      - additionally, the scripts sets up three schemas within the same databse: 'bronze', 'silver', 'gold'


  Warnings:
    running this scripts, drops the entire database and erase all the data withiin it. ensure you have proper backups before running this project
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
