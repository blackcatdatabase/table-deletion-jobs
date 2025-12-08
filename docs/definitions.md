# deletion_jobs

Asynchronous deletion workflows coordinating cascading cleanup.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| created_by | BIGINT | YES |  | User/admin that created the job. |
| entity_pk |  | NO |  | Primary key of the row to delete. |
| entity_table | VARCHAR(64) | NO |  | Target table for the deletion. |
| error | TEXT | YES |  | Failure description, if any. |
| finished_at |  | YES |  | Completion timestamp (UTC). |
| hard_delete | BOOLEAN | NO | FALSE | Whether to permanently delete the row. |
| id | BIGINT | NO |  | Surrogate primary key. |
| reason | TEXT | YES |  | Reason the deletion was requested. |
| scheduled_at | TIMESTAMPTZ(6) | YES |  | When the job should start. |
| started_at |  | YES |  | Processing start timestamp (UTC). |
| status | TEXT | NO | pending | Job status flag. (enum: pending, running, done, failed, cancelled) |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_deletion_jobs | entity_table, entity_pk |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_dj_status_sched | status,scheduled_at | INDEX idx_dj_status_sched (status, scheduled_at) |
| uq_deletion_jobs | entity_table,entity_pk | UNIQUE KEY uq_deletion_jobs (entity_table, entity_pk) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_dj_user | created_by | users(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_deletion_jobs | entity_table, entity_pk |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_dj_status_sched | status,scheduled_at | CREATE INDEX IF NOT EXISTS idx_dj_status_sched ON deletion_jobs (status, scheduled_at) |
| uq_deletion_jobs | entity_table,entity_pk | CONSTRAINT uq_deletion_jobs UNIQUE (entity_table, entity_pk) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_dj_user | created_by | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_deletion_jobs | mysql | algorithm=MERGE, security=INVOKER | [packages\deletion-jobs\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/deletion-jobs/schema/040_views.mysql.sql) |
| vw_deletion_jobs_status | mysql | algorithm=TEMPTABLE, security=INVOKER | [packages\deletion-jobs\schema\040_views_joins.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/deletion-jobs/schema/040_views_joins.mysql.sql) |
| vw_deletion_jobs | postgres |  | [packages\deletion-jobs\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/deletion-jobs/schema/040_views.postgres.sql) |
| vw_deletion_jobs_status | postgres |  | [packages\deletion-jobs\schema\040_views_joins.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/deletion-jobs/schema/040_views_joins.postgres.sql) |
