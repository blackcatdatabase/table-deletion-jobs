-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  deletion_jobs

CREATE INDEX IF NOT EXISTS idx_dj_status_sched ON deletion_jobs (status, scheduled_at);
