--------------------------------------------------------
--  DDL for Table D_LOCAL_MARKET
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_PERF"."D_LOCAL_MARKET" 
   (	"LOCAL_MARKET_ID" NUMBER, 
	"LOCAL_MARKET_CD" VARCHAR2(3), 
	"LOCAL_MARKET_DESC" VARCHAR2(100), 
	"CURRENT_FLAG" CHAR(1), 
	"VALID_FROM_DT" DATE, 
	"VALID_UNTIL_DT" DATE, 
	"CREATED_DT" DATE
   ) ;
