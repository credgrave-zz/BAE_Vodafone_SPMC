--------------------------------------------------------
--  DDL for Table F_LANDSCAPE_M
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_PERF"."F_LANDSCAPE_M" 
   (	"CALENDAR_MONTH_CD" VARCHAR2(6), 
	"ACCOUNT_MANAGER_ID" NUMBER, 
	"LOCAL_MARKET_ID" NUMBER, 
	"LANDSCAPE_DETAIL_ID" NUMBER, 
	"RECORD_COMPLETED_FLAG" NUMBER, 
	"RECORD_OWNED_FLAG" NUMBER(1,0), 
	"CREATED_DT" DATE, 
	"INGEST_MONTH" VARCHAR2(6), 
	"LOCAL_MARKET_CD" VARCHAR2(3)
   ) ;
