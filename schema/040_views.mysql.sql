-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
-- engine: mysql
-- table:  deletion_jobs

-- Contract view for [deletion_jobs]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_deletion_jobs AS
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
