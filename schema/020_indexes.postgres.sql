-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  deletion_jobs
CREATE INDEX IF NOT EXISTS idx_dj_status_sched ON deletion_jobs (status, scheduled_at);
