--------------------------------------------------------
--  DDL for Table R_STUCK_OPPORTUNITY
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_REF"."R_STUCK_OPPORTUNITY" 
   (	"STUCK_OPP_CD" VARCHAR2(10), 
	"STUCK_OPP_DESC" VARCHAR2(50), 
	"CREATION_DT" DATE, 
	"CURR_FLAG_YN" CHAR(1), 
	"VALID_FROM_DT" DATE, 
	"VALID_UNTIL_DT" DATE
   ) ;
