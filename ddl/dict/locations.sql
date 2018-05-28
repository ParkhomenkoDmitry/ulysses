PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE locations (
		locationId INTEGER PRIMARY KEY NOT NULL,
		fedSubjId INTEGER NOT NULL,
		locationName INTEGER NOT NULL,
		CONSTRAINT fedSubjId
			FOREIGN KEY (fedSubjId)
			REFERENCES fedSubjects (fedSubjId)
	) WITHOUT ROWID;
COMMIT;
