-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  deletion_jobs

ALTER TABLE deletion_jobs ADD CONSTRAINT fk_dj_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
