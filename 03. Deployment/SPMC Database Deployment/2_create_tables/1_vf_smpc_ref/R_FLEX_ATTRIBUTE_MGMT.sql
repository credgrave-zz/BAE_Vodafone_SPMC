--------------------------------------------------------
--  DDL for Table R_FLEX_ATTRIBUTE_MGMT
--------------------------------------------------------

  CREATE TABLE "VF_SPMC_REF"."R_FLEX_ATTRIBUTE_MGMT" 
   (	"FLEX_ATTR_ID" NUMBER, 
	"FLEX_ATTR_TYPE" VARCHAR2(20), 
	"FLEX_ATTR_NAME" VARCHAR2(100), 
	"FLEX_ATTR_DISPLAY_NAME" VARCHAR2(100), 
	"FLEX_ATTRIBUTE_DESC" VARCHAR2(256), 
	"CREATED_DATE" DATE, 
	"VALID_FROM_DT" DATE, 
	"VALID_UNTIL_DT" DATE, 
	"CURRENT_FLAG" VARCHAR2(1)
   ) ;
