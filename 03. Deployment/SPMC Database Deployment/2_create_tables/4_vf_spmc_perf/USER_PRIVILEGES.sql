--------------------------------------------------------
--  DDL for Table USER_PRIVILEGES
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_PERF"."USER_PRIVILEGES" 
   (	"USERNAME" VARCHAR2(200), 
	"PRIVILEGE_TYPE" VARCHAR2(50), 
	"VALUE" VARCHAR2(200), 
	"DESCRIPTION" VARCHAR2(400), 
	"VALID_FROM_DT" DATE, 
	"VALID_UNTIL_DT" DATE, 
	"CREATED_DT" DATE, 
	"HIERARHY_NAME" VARCHAR2(100), 
	"CURRENT_FLAG" CHAR(1)
   ) ;
