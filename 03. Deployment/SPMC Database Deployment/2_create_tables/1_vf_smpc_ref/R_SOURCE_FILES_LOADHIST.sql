--------------------------------------------------------
--  DDL for Table R_SOURCE_FILES_LOADHIST
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_REF"."R_SOURCE_FILES_LOADHIST" 
   (	"LOAD_DATE" DATE DEFAULT SYSDATE, 
	"SOURCE_FILE_TYPE" VARCHAR2(20), 
	"SOURCE_FILE_NAME" VARCHAR2(50), 
	"LOAD_STATUS" VARCHAR2(10), 
	"LOAD_VERSION" NUMBER
   ) ;
