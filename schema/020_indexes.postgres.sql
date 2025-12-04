-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  deletion_jobs

CREATE INDEX IF NOT EXISTS idx_dj_status_sched ON deletion_jobs (status, scheduled_at);
