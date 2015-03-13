--------------------------------------------------------
--  Constraints for Table USER_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "VF_SPMC_PERF"."USER_PRIVILEGES" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."USER_PRIVILEGES" MODIFY ("PRIVILEGE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "VF_SPMC_PERF"."USER_PRIVILEGES" MODIFY ("USERNAME" NOT NULL ENABLE);

