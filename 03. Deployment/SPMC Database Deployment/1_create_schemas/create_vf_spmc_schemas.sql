CREATE USER vf_spmc_landing IDENTIFIED BY &landing_password;
CREATE USER vf_spmc_staging IDENTIFIED BY &staging_password;
CREATE USER vf_spmc_perf IDENTIFIED BY &performance_password;
CREATE USER vf_spmc_ref IDENTIFIED BY &reference_password;
CREATE USER vf_spmc_etl_error IDENTIFIED BY &etl_error_password;