--------------------------------------------------------
--  File created - Thursday-March-05-2015   
--------------------------------------------------------
DROP SEQUENCE "VF_SPMC_PERF"."D_ACCOUNT_MANAGER_ID_SEQ";
DROP SEQUENCE "VF_SPMC_PERF"."D_KPI_CALCULATION_ID_SEQ";
DROP SEQUENCE "VF_SPMC_PERF"."D_LANDSCAPE_DETAIL_ID_SEQ";
DROP SEQUENCE "VF_SPMC_PERF"."D_LOCAL_MARKET_ID_SEQ";
DROP SEQUENCE "VF_SPMC_PERF"."D_OPPORTUNITY_DETAIL_ID_SEQ";
--------------------------------------------------------
--  DDL for Sequence D_ACCOUNT_MANAGER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_PERF"."D_ACCOUNT_MANAGER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1041 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence D_KPI_CALCULATION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_PERF"."D_KPI_CALCULATION_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence D_LANDSCAPE_DETAIL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_PERF"."D_LANDSCAPE_DETAIL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 ORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence D_LOCAL_MARKET_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_PERF"."D_LOCAL_MARKET_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence D_OPPORTUNITY_DETAIL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "VF_SPMC_PERF"."D_OPPORTUNITY_DETAIL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  NOCYCLE
