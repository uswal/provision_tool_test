USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS dev_marketing WAREHOUSE_SIZE = 'XSMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS prod_marketing WAREHOUSE_SIZE = 'SMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS dev_manhattan WAREHOUSE_SIZE = 'XSMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS SANDBOX_poc1 WAREHOUSE_SIZE = 'XSMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS SANDBOX_poc2 WAREHOUSE_SIZE = 'SMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE WAREHOUSE IF NOT EXISTS USER_WH1 WAREHOUSE_SIZE = 'XSMALL', INITIALLY_SUSPENDED = true;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS dev_marketing;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS prod_marketing;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS dev_manhattan;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS SANDBOX_poc1;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS SANDBOX_poc2;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS USER_testuser1;
USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS USER_testuser2;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS dev_marketing_RW;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS dev_marketing_RO;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS prod_marketing_RW;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS prod_marketing_RO;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS dev_manhattan_RW;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS dev_manhattan_RO;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS SANDBOX_poc1;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS SANDBOX_poc2;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS WS_testuser1;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS WS_testuser2;
USE ROLE SECURITYADMIN;
CREATE ROLE IF NOT EXISTS USER_WH1;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON DATABASE dev_marketing TO ROLE dev_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT USAGE ON DATABASE dev_marketing TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE dev_marketing TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON DATABASE prod_marketing TO ROLE prod_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT USAGE ON DATABASE prod_marketing TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE prod_marketing TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON DATABASE dev_manhattan TO ROLE dev_manhattan_RW;
USE ROLE SECURITYADMIN;
GRANT USAGE ON DATABASE dev_manhattan TO ROLE dev_manhattan_RO;
USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE dev_manhattan TO ROLE dev_manhattan_RO;
USE ROLE SECURITYADMIN;
GRANT MODIFY ON DATABASE SANDBOX_poc1 TO ROLE SANDBOX_poc1;
USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE SANDBOX_poc1 TO ROLE SANDBOX_poc1;
USE ROLE SECURITYADMIN;
GRANT MODIFY ON DATABASE SANDBOX_poc2 TO ROLE SANDBOX_poc2;
USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE SANDBOX_poc2 TO ROLE SANDBOX_poc2;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON DATABASE USER_testuser1 TO ROLE WS_testuser1 WITH GRANT OPTION;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON DATABASE USER_testuser2 TO ROLE WS_testuser2 WITH GRANT OPTION;
USE ROLE SECURITYADMIN;
GRANT ROLE dev_marketing_RO TO ROLE dev_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ROLE prod_marketing_RO TO ROLE prod_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ROLE dev_manhattan_RO TO ROLE dev_manhattan_RW;
USE ROLE SECURITYADMIN;
GRANT ROLE USER_WH1 TO ROLE WS_testuser1;
USE ROLE SECURITYADMIN;
GRANT ROLE WS_testuser1 TO USER testuser1;
USE ROLE SECURITYADMIN;
GRANT ROLE USER_WH1 TO ROLE WS_testuser2;
USE ROLE SECURITYADMIN;
GRANT ROLE WS_testuser2 TO USER testuser2;
USE ROLE SECURITYADMIN;
GRANT ROLE dev_marketing_RW TO USER testuser1;
USE ROLE SECURITYADMIN;
GRANT ROLE prod_marketing_RW TO USER testuser1;
USE ROLE SECURITYADMIN;
GRANT ROLE prod_marketing_RO TO USER testuser2;
USE ROLE SECURITYADMIN;
GRANT ROLE dev_manhattan_RO TO USER testuser2;
USE ROLE SECURITYADMIN;
GRANT ROLE SANDBOX_poc1 TO USER testuser1;
USE ROLE SECURITYADMIN;
GRANT ROLE SANDBOX_poc1 TO USER testuser2;
USE ROLE SECURITYADMIN;
GRANT ROLE SANDBOX_poc2 TO USER testuser1;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_marketing.RAW;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_marketing.STAGING;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_marketing.CURATED;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS prod_marketing.RAW;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS prod_marketing.STAGING;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS prod_marketing.CURATED;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_manhattan.RAW;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_manhattan.STAGING;
USE ROLE SYSADMIN;
CREATE SCHEMA IF NOT EXISTS dev_manhattan.CURATED;
USE ROLE SYSADMIN;
CREATE TRANSIENT SCHEMA IF NOT EXISTS SANDBOX_poc1.SANDBOX;
USE ROLE SYSADMIN;
CREATE TRANSIENT SCHEMA IF NOT EXISTS SANDBOX_poc2.SANDBOX;
USE ROLE SECURITYADMIN;
GRANT USAGE ON all schemas in database dev_marketing TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_marketing.RAW TO ROLE dev_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_marketing.STAGING TO ROLE dev_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_marketing.CURATED TO ROLE dev_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT USAGE ON all schemas in database prod_marketing TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA prod_marketing.RAW TO ROLE prod_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA prod_marketing.STAGING TO ROLE prod_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA prod_marketing.CURATED TO ROLE prod_marketing_RW;
USE ROLE SECURITYADMIN;
GRANT USAGE ON all schemas in database dev_manhattan TO ROLE dev_manhattan_RO;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_manhattan.RAW TO ROLE dev_manhattan_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_manhattan.STAGING TO ROLE dev_manhattan_RW;
USE ROLE SECURITYADMIN;
GRANT ALL PRIVILEGES ON SCHEMA dev_manhattan.CURATED TO ROLE dev_manhattan_RW;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_marketing.RAW TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_marketing.STAGING TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_marketing.CURATED TO ROLE dev_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema prod_marketing.RAW TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema prod_marketing.STAGING TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema prod_marketing.CURATED TO ROLE prod_marketing_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_manhattan.RAW TO ROLE dev_manhattan_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_manhattan.STAGING TO ROLE dev_manhattan_RO;
USE ROLE SECURITYADMIN;
GRANT SELECT ON future tables in schema dev_manhattan.CURATED TO ROLE dev_manhattan_RO;
