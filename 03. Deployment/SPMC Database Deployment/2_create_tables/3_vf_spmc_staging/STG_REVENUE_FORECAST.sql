--------------------------------------------------------
--  DDL for Table STG_REVENUE_FORECAST
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_STAGING"."STG_REVENUE_FORECAST" 
   (	"CALENDAR_MONTH_CD" VARCHAR2(6), 
	"LOCAL_MARKET_ID" NUMBER, 
	"ACCOUNT_MANAGER_ID" NUMBER, 
	"REVENUE_FORECAST" NUMBER, 
	"CREATED_DT" DATE, 
	"INGEST_MONTH" VARCHAR2(6), 
	"LOCAL_MARKET_CD" VARCHAR2(3)
   ) ;
