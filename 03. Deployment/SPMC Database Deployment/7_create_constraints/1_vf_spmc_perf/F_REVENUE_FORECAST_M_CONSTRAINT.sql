--------------------------------------------------------
--  Constraints for Table F_REVENUE_FORECAST_M
--------------------------------------------------------

  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("LOCAL_MARKET_CD" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("INGEST_MONTH" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("CREATED_DT" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("ACCOUNT_MANAGER_ID" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("LOCAL_MARKET_ID" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."F_REVENUE_FORECAST_M" MODIFY ("CALENDAR_MONTH_CD" NOT NULL ENABLE);

