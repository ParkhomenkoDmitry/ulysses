PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE countries_rudn (
		countryId INTEGER PRIMARY KEY NOT NULL,
		countryRudnId INTEGER NOT NULL,
		CONSTRAINT countryId
			FOREIGN KEY (countryId)
			REFERENCES countries (countryId)
	) WITHOUT ROWID;
COMMIT;
