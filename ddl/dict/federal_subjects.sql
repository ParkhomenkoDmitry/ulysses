PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE federal_subjects (
		fedSubjId INTEGER PRIMARY KEY NOT NULL,
		fedSubjName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
