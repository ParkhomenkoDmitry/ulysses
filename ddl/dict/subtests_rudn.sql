PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE subtests_rudn (
		levelId INTEGER NOT NULL,
		subtestId INTEGER NOT NULL,
		subtestRudnId INTEGER NOT NULL,
		CONSTRAINT levelId
			FOREIGN KEY (levelId)
			REFERENCES levels (levelId),
		CONSTRAINT subtestId
			FOREIGN KEY (subtestId)
			REFERENCES subtests (subtestId),
		PRIMARY KEY (levelId, subtestId)
	) WITHOUT ROWID;
COMMIT;
