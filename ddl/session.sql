PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE session (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		sessionId INTEGER NOT NULL,
		sDate TEXT NOT NULL,
		sourceId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT sessionId_version UNIQUE (sessionId, version),
		CONSTRAINT session UNIQUE (sDate, sourceId),
		CONSTRAINT sourceId
			FOREIGN KEY (sourceId)
			REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
