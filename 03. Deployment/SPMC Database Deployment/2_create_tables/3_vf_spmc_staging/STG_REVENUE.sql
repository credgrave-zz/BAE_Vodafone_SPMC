--------------------------------------------------------
--  DDL for Table STG_REVENUE
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_STAGING"."STG_REVENUE" 
   (	"CALENDAR_MONTH_CD" VARCHAR2(6), 
	"LOCAL_MARKET_ID" NUMBER, 
	"ACCOUNT_MANAGER_ID" NUMBER, 
	"REVENUE" NUMBER, 
	"REVENUE_TYPE_DESC" VARCHAR2(20), 
	"REVENUE_TYPE_CD" VARCHAR2(20), 
	"CREATED_DT" DATE, 
	"INGEST_MONTH" VARCHAR2(6), 
	"LOCAL_MARKET_CD" VARCHAR2(3)
   ) ;
