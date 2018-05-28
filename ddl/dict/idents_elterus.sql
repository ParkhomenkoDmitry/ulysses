PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE idents_elterus (
		identId INTEGER PRIMARY KEY NOT NULL,
		identName TEXT NOT NULL,
		CONSTRAINT identId
			FOREIGN KEY (identId)
			REFERENCES idents (identId)
	) WITHOUT ROWID;
COMMIT;
