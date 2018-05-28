PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE idents_tiger (
		identId INTEGER PRIMARY KEY NOT NULL,
		identTigerId INTEGER NOT NULL,
		CONSTRAINT identId
			FOREIGN KEY (identId)
			REFERENCES idents (identId)
	) WITHOUT ROWID;
COMMIT;
