/*
*******************************************************************************
Script Name:    init_database.sql
Description:    Initializes the Data Warehouse environment by creating the 
                primary database and logical architecture layers.
Author:         Clark Mekhail
Date:           2026-04-12
Version:        1.0
Notes:          In MySQL, DATABASE and SCHEMA are synonyms. This script 
                creates distinct logical areas for the Medallion Architecture.
*******************************************************************************
*/

-- 1. Create the primary Data Warehouse container
CREATE DATABASE IF NOT EXISTS DataWarehouse;

-- 2. Create the Medallion Architecture layers
-- Note: In MySQL, these will appear as separate databases
CREATE DATABASE IF NOT EXISTS Bronze;
CREATE DATABASE IF NOT EXISTS Silver;
CREATE DATABASE IF NOT EXISTS Gold;

-- 3. Finalize setup
USE DataWarehouse;

SELECT 'DataWarehouse and Medallion layers (Bronze, Silver, Gold) initialized successfully' AS Status;
