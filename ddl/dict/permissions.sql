PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE permissions (
		mask INTEGER PRIMARY KEY NOT NULL,
		name TEXT NOT NULL,
		description TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
