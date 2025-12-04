-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  deletion_jobs

CREATE TABLE IF NOT EXISTS deletion_jobs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entity_table VARCHAR(64) NOT NULL,
  entity_pk VARCHAR(64) NOT NULL,
  reason TEXT NULL,
  hard_delete BOOLEAN NOT NULL DEFAULT FALSE,
  scheduled_at DATETIME(6) NULL,
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  status ENUM('pending','running','done','failed','cancelled') NOT NULL DEFAULT 'pending',
  error TEXT NULL,
  created_by BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_deletion_jobs (entity_table, entity_pk),
  INDEX idx_dj_status_sched (status, scheduled_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
