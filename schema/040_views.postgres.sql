-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
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
