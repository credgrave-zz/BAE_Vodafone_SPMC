@echo off

set /p username="Enter Username: "
set /p password="Enter Password: "
set date=%DATE:/=-%


sqlplus %username%/%password% as sysdba < deploy_database.sql > 0_log_files/deployment_%date%.log