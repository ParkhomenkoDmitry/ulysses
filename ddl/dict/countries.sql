PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE countries (
		countryId INTEGER PRIMARY KEY NOT NULL,
		countryRus TEXT NOT NULL,
		countryEng TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
