PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE person_scan (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		personId INTEGER NOT NULL,
		personScanId TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT personId
			FOREIGN KEY (personId)
			REFERENCES person (personId)
	) WITHOUT ROWID;
COMMIT;
