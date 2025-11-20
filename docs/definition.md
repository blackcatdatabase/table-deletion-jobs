<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – deletion_jobs

Asynchronous deletion workflows coordinating cascading cleanup.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO | — | Target table for the deletion. |  |
| entity_pk | VARCHAR(64) | NO | — | Primary key of the row to delete. |  |
| reason | TEXT | YES | — | Reason the deletion was requested. |  |
| hard_delete | BOOLEAN | NO | FALSE | Whether to permanently delete the row. |  |
| scheduled_at | TIMESTAMPTZ(6) | YES | — | When the job should start. |  |
| started_at | TIMESTAMPTZ(6) | YES | — | Processing start timestamp (UTC). |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Completion timestamp (UTC). |  |
| status | TEXT | NO | 'pending' | Job status flag. | enum: pending, running, done, failed, cancelled |
| error | TEXT | YES | — | Failure description, if any. |  |
| created_by | BIGINT | YES | — | User/admin that created the job. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |