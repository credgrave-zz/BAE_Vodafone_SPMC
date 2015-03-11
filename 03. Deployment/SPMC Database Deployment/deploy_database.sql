SET SERVEROUTPUT ON
SET DEFINE ON
SET ECHO ON
SPOOL 0_log_files\database_deployment.log

REM Dropping Schemas
@9_drop_schemas/drop_spmc_schemas.sql

REM Creating Schemas
@1_create_schemas/create_vf_spmc_schemas.sql

REM Creating Connect and Resource Privileges
@3_create_privileges/1_connect_resource_privileges/1_connect_resource_privileges.sql


REM Creating Reference Tables
@2_create_tables/1_vf_smpc_ref/R_ACCOUNT_TYPE.sql
@2_create_tables/1_vf_smpc_ref/R_CURRENCY.sql
@2_create_tables/1_vf_smpc_ref/R_FLEX_ATTRIBUTE_MGMT.sql
@2_create_tables/1_vf_smpc_ref/R_FLEX_ATTRIBUTE_MGMT_CONSTRAINT.sql
@2_create_tables/1_vf_smpc_ref/R_FORECAST_CAT.sql
@2_create_tables/1_vf_smpc_ref/R_GRADE.sql
@2_create_tables/1_vf_smpc_ref/R_KPI_CALCULATION.sql
@2_create_tables/1_vf_smpc_ref/R_LOCAL_MARKET.sql
@2_create_tables/1_vf_smpc_ref/R_MAIN_SALES_CHAN.sql
@2_create_tables/1_vf_smpc_ref/R_MICRO_SEG.sql
@2_create_tables/1_vf_smpc_ref/R_OPP_DEAL_TYPE.sql
@2_create_tables/1_vf_smpc_ref/R_OPP_SALES_METHOD.sql
@2_create_tables/1_vf_smpc_ref/R_OPP_SALES_STAGE_STATUS.sql
@2_create_tables/1_vf_smpc_ref/R_OPP_STATUS.sql
@2_create_tables/1_vf_smpc_ref/R_PORTFOLIO_CAT.sql
@2_create_tables/1_vf_smpc_ref/R_PRODUCT_FAMILY.sql
@2_create_tables/1_vf_smpc_ref/R_PRODUCT_LINE.sql
@2_create_tables/1_vf_smpc_ref/R_REGION.sql
@2_create_tables/1_vf_smpc_ref/R_REVENUE_TYPE.sql
@2_create_tables/1_vf_smpc_ref/R_SALES_SEG.sql
@2_create_tables/1_vf_smpc_ref/R_SOURCE_FILES.sql
@2_create_tables/1_vf_smpc_ref/R_SOURCE_FILES_LOADHIST.sql
@2_create_tables/1_vf_smpc_ref/R_STAGE.sql
@2_create_tables/1_vf_smpc_ref/R_STUCK_OPPORTUNITY.sql
@2_create_tables/1_vf_smpc_ref/R_TABLE_CONTROL_DATES.sql
@2_create_tables/1_vf_smpc_ref/R_TARGET_TYPE.sql


REM Creating Landing Tables
@2_create_tables/2_vf_spmc_landing/LND_LANDSCAPES.sql
@2_create_tables/2_vf_spmc_landing/LND_OPPORTUNITIES.sql
@2_create_tables/2_vf_spmc_landing/LND_REVENUE.sql
@2_create_tables/2_vf_spmc_landing/LND_REVENUE_FORECAST.sql
@2_create_tables/2_vf_spmc_landing/LND_REVENUE_TARGET.sql
@2_create_tables/2_vf_spmc_landing/LND_SALES_PROFESSIONAL.sql


REM Creating Staging Tables
@2_create_tables/3_vf_spmc_staging/STG_LANDSCAPES.sql
@2_create_tables/3_vf_spmc_staging/STG_OPPORTUNITIES.sql
@2_create_tables/3_vf_spmc_staging/STG_REVENUE.sql
@2_create_tables/3_vf_spmc_staging/STG_REVENUE_FORECAST.sql
@2_create_tables/3_vf_spmc_staging/STG_REVENUE_TARGET.sql
@2_create_tables/3_vf_spmc_staging/STG_SALES_PROFESSIONAL.sql


REM Creating Performance Tables
@2_create_tables/4_vf_spmc_perf/D_ACCOUNT_MANAGER.sql
@2_create_tables/4_vf_spmc_perf/D_CALENDAR_MONTH.sql
@2_create_tables/4_vf_spmc_perf/D_KPI_CALCULATION.sql
@2_create_tables/4_vf_spmc_perf/D_LANDSCAPE_DETAIL.sql
@2_create_tables/4_vf_spmc_perf/D_LOCAL_MARKET.sql
@2_create_tables/4_vf_spmc_perf/D_OPPORTUNITY_DETAIL.sql
@2_create_tables/4_vf_spmc_perf/F_KPI_PERFORMANCE_M.sql
@2_create_tables/4_vf_spmc_perf/F_LANDSCAPE_M.sql
@2_create_tables/4_vf_spmc_perf/F_OPPORTUNITY_M.sql
@2_create_tables/4_vf_spmc_perf/F_REVENUE_FORECAST_M.sql
@2_create_tables/4_vf_spmc_perf/F_REVENUE_M.sql
@2_create_tables/4_vf_spmc_perf/F_REVENUE_TARGET_M.sql
@2_create_tables/4_vf_spmc_perf/USER_PRIVILEGES.sql


REM Creating Table Privileges
@3_create_privileges/2_table_privileges/1_vf_spmc_perf.sql
@3_create_privileges/2_table_privileges/1_vf_spmc_staging.sql


REM Creating Reference Data

@4_create_reference_data/R_ACCOUNT_TYPE_DATA_TABLE.sql
@4_create_reference_data/R_CURRENCY_DATA_TABLE.sql
@4_create_reference_data/R_FLEX_ATTRIBUTE_MGMT_DATA_TABLE.sql
@4_create_reference_data/R_FORECAST_CAT_DATA_TABLE.sql
@4_create_reference_data/R_GRADE_DATA_TABLE.sql
@4_create_reference_data/R_KPI_CALCULATION_DATA_TABLE.sql
@4_create_reference_data/R_LOCAL_MARKET_DATA_TABLE.sql
@4_create_reference_data/R_MAIN_SALES_CHAN_DATA_TABLE.sql
@4_create_reference_data/R_MICRO_SEG_DATA_TABLE.sql
@4_create_reference_data/R_OPP_DEAL_TYPE_DATA_TABLE.sql
@4_create_reference_data/R_OPP_SALES_METHOD_DATA_TABLE.sql
@4_create_reference_data/R_OPP_SALES_STAGE_STATUS_DATA_TABLE.sql
@4_create_reference_data/R_OPP_STATUS_DATA_TABLE.sql
@4_create_reference_data/R_PORTFOLIO_CAT_DATA_TABLE.sql
@4_create_reference_data/R_PRODUCT_FAMILY_DATA_TABLE.sql
@4_create_reference_data/R_PRODUCT_LINE_DATA_TABLE.sql
@4_create_reference_data/R_REGION_DATA_TABLE.sql
@4_create_reference_data/R_REVENUE_TYPE_DATA_TABLE.sql
@4_create_reference_data/R_SALES_SEG_DATA_TABLE.sql
@4_create_reference_data/R_SOURCE_FILES_DATA_TABLE.sql
@4_create_reference_data/R_SOURCE_FILES_LOADHIST_DATA_TABLE.sql
@4_create_reference_data/R_STAGE_DATA_TABLE.sql
@4_create_reference_data/R_STUCK_OPPORTUNITY_DATA_TABLE.sql
@4_create_reference_data/R_TABLE_CONTROL_DATES_DATA_TABLE.sql
@4_create_reference_data/R_TARGET_TYPE_DATA_TABLE.sql
COMMIT;



REM Creating Sequences

@5_create_sequences/1_vf_spmc_perf/D_ACCOUNT_MANAGER_ID_SEQ.sql
@5_create_sequences/1_vf_spmc_perf/D_KPI_CALCULATION_ID_SEQ.sql
@5_create_sequences/1_vf_spmc_perf/D_LANDSCAPE_DETAIL_ID_SEQ.sql
@5_create_sequences/1_vf_spmc_perf/D_LOCAL_MARKET_ID_SEQ.sql
@5_create_sequences/1_vf_spmc_perf/D_OPPORTUNITY_DETAIL_ID_SEQ.sql

@5_create_sequences/1_vf_spmc_staging/D_LANDSCAPE_DETAIL_ID_SEQ.sql
@5_create_sequences/1_vf_spmc_staging/D_OPPORTUNITY_DETAIL_ID_SEQ.sql


REM Creating Constraints
@7_create_constraints/1_vf_spmc_perf/D_ACCOUNT_MANAGER_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/D_CALENDAR_MONTH_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/D_KPI_CALCULATION_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/D_LANDSCAPE_DETAIL_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/D_LOCAL_MARKET_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/D_OPPORTUNITY_DETAIL_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_KPI_PERFORMANCE_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_LANDSCAPE_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_OPPORTUNITY_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_REVENUE_FORECAST_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_REVENUE_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/F_REVENUE_TARGET_M_CONSTRAINT.sql
@7_create_constraints/1_vf_spmc_perf/USER_PRIVILEGES_CONSTRAINT.sql



REM Inserting Calendar Data
@8_d_calendar_month/1_d_calendar_month.sql
COMMIT;


SPOOL OFF

