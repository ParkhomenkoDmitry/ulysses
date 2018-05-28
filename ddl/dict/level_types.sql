PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE level_types (
		levelTypeId INTEGER PRIMARY KEY NOT NULL,
		levelTypeName TEXT NOT NULL,
		levelTypeFullName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
