PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE exam (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		sessionId INTEGER NOT NULL,
		personId INTEGER NOT NULL,
		levelId INTEGER NOT NULL,
		isResit INTEGER NOT NULL CHECK (isResit IN (0, 1)),
		isPass INTEGER NOT NULL CHECK (isPass IN (0, 1)),
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId_version UNIQUE (examId, version),
		CONSTRAINT exam UNIQUE (
			sessionId,
			personId,
			levelId,
			isResit,
			isPass
		),
		CONSTRAINT sessionId
			FOREIGN KEY (sessionId)
			REFERENCES sessions (sessionId),
		CONSTRAINT personId
			FOREIGN KEY (personId)
			REFERENCES persons (personId),
		CONSTRAINT levelId
			FOREIGN KEY (levelId)
			REFERENCES levels (levelId)
	) WITHOUT ROWID;
COMMIT;
