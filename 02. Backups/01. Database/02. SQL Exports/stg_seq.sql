--------------------------------------------------------
--  File created - Thursday-March-05-2015   
--------------------------------------------------------
DROP SEQUENCE "VF_SPMC_STAGING"."D_LANDSCAPE_DETAIL_ID_SEQ";
DROP SEQUENCE "VF_SPMC_STAGING"."D_OPPORTUNITY_DETAIL_ID_SEQ";
--------------------------------------------------------
--  DDL for Sequence D_LANDSCAPE_DETAIL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_STAGING"."D_LANDSCAPE_DETAIL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_OPPORTUNITY_DETAIL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_STAGING"."D_OPPORTUNITY_DETAIL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 ORDER  NOCYCLE ;
