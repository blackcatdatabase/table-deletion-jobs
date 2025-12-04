-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  deletion_jobs

ALTER TABLE deletion_jobs ADD CONSTRAINT fk_dj_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
