-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  deletion_jobs

ALTER TABLE deletion_jobs ADD CONSTRAINT fk_dj_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
