PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE genders (
		genderId INTEGER PRIMARY KEY NOT NULL,
		genderShort TEXT NOT NULL,
		genderFull TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
