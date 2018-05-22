PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE subtests_tiger (
		subtestId INTEGER PRIMARY KEY NOT NULL,
		subtestTigerId INTEGER NOT NULL,
		CONSTRAINT subtestId
			FOREIGN KEY (subtestId)
			REFERENCES subtests (subtestId),
	) WITHOUT ROWID;
COMMIT;
