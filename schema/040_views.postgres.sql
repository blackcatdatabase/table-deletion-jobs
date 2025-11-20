-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  deletion_jobs
-- Contract view for [deletion_jobs]
CREATE OR REPLACE VIEW vw_deletion_jobs AS
SELECT
  id,
  entity_table,
  entity_pk,
  reason,
  hard_delete,
  scheduled_at,
  started_at,
  finished_at,
  status,
  error,
  created_by,
  created_at
FROM deletion_jobs;

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  deletion_jobs_status
-- Deletion jobs summary
CREATE OR REPLACE VIEW vw_deletion_jobs_status AS
SELECT
  status,
  COUNT(*) AS jobs,
  MAX(finished_at) AS last_finished
FROM deletion_jobs
GROUP BY status
ORDER BY status;

