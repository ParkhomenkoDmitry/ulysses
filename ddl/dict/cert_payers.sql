PRAGMA foreign_keys = 1;

/* TODO decide if this is needed */

BEGIN;
	CREATE TABLE cert_payers (
		certPayerId INTEGER PRIMARY KEY NOT NULL,
		certPayerName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
