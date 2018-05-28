PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE subtests (
		subtestId INTEGER PRIMARY KEY NOT NULL,
		subtestShort TEXT NOT NULL,
		subtestFull TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
