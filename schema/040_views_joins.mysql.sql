-- Auto-generated from joins-mysql.yaml (map@85230ed)
-- engine: mysql
-- view:   deletion_jobs_status

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_deletion_jobs_status AS
SELECT
  status,
  COUNT(*) AS jobs,
  MAX(finished_at) AS last_finished
FROM deletion_jobs
GROUP BY status
ORDER BY status;
