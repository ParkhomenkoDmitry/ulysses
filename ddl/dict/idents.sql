PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE idents (
		identId INTEGER PRIMARY KEY NOT NULL,
		identName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
