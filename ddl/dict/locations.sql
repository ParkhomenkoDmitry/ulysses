PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE source_locations (
		locationId INTEGER PRIMARY KEY NOT NULL,
		fedSubjId INTEGER NOT NULL,
		locationName INTEGER NOT NULL,
		CONSTRAINT fedSubjId
			FOREIGN KEY (fedSubjId)
			REFERENCES source_groups (fedSubjId)
	) WITHOUT ROWID;
COMMIT;
