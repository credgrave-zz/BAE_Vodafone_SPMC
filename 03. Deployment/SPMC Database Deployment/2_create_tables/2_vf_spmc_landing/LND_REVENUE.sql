--------------------------------------------------------
--  DDL for Table LND_REVENUE
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_LANDING"."LND_REVENUE" 
   (	"ACCOUNT_MANAGER_NAME" VARCHAR2(100), 
	"TARGET" NUMBER, 
	"ACHIEVED" NUMBER, 
	"MONTH" VARCHAR2(20), 
	"YEAR" VARCHAR2(4), 
	"DIRECTORATE" VARCHAR2(100), 
	"TYPE" VARCHAR2(10), 
	"SALES_MANAGER_NAME" VARCHAR2(100), 
	"ACCOUNT_MANAGER_REGION" VARCHAR2(50), 
	"YTD_REVENUE" NUMBER
   ) ;
