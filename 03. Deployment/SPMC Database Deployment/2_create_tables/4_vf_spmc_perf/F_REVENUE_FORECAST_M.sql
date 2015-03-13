--------------------------------------------------------
--  DDL for Table F_REVENUE_FORECAST_M
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" 
   (	"CALENDAR_MONTH_CD" VARCHAR2(6), 
	"LOCAL_MARKET_ID" NUMBER, 
	"ACCOUNT_MANAGER_ID" NUMBER, 
	"REVENUE_FORECAST" NUMBER, 
	"CREATED_DT" DATE, 
	"INGEST_MONTH" VARCHAR2(6), 
	"LOCAL_MARKET_CD" VARCHAR2(3)
   ) ;
