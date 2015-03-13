--------------------------------------------------------
--  DDL for Table R_FORECAST_CAT
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_REF"."R_FORECAST_CAT" 
   (	"FORECAST_CAT_CD" VARCHAR2(10), 
	"FORECAST_CAT_DESC" VARCHAR2(50), 
	"CREATION_DT" DATE, 
	"CURR_FLAG_YN" CHAR(1), 
	"VALID_FROM_DT" DATE, 
	"VALID_UNTIL_DT" DATE
   ) ;
