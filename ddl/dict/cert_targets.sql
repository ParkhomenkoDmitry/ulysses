PRAGMA foreign_keys = 1;

/* 0: trash, 1: cert, 2: reCert */

BEGIN;
	CREATE TABLE cert_targets (
		certTargetId INTEGER PRIMARY KEY NOT NULL,
		certTargetName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
