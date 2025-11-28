-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   deletion_jobs_status
-- Deletion jobs summary
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_deletion_jobs_status AS
SELECT
  status,
  COUNT(*) AS jobs,
  MAX(finished_at) AS last_finished
FROM deletion_jobs
GROUP BY status
ORDER BY status;
