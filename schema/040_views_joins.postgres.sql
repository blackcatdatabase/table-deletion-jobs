-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   deletion_jobs_status

-- Deletion jobs summary
CREATE OR REPLACE VIEW vw_deletion_jobs_status AS
SELECT
  status,
  COUNT(*) AS jobs,
  MAX(finished_at) AS last_finished
FROM deletion_jobs
GROUP BY status
ORDER BY status;
