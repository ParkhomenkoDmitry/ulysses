PRAGMA foreign_keys = 1;

/* 0: trash, 1: cert, 2: reCert */

BEGIN;
	CREATE TABLE cert_targets (
		ctrg_certTargetId INTEGER PRIMARY KEY NOT NULL,
		ctrg_name TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
