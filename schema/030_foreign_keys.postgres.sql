-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  deletion_jobs

ALTER TABLE deletion_jobs ADD CONSTRAINT fk_dj_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
