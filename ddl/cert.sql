PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		certId INTEGER NOT NULL,
		examId INTEGER NOT NULL,
		cDate TEXT NOT NULL,
		sourceId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT certId_version UNIQUE (certId, version),
		CONSTRAINT examId
			FOREIGN KEY (examId)
			REFERENCES exam (examId),
		CONSTRAINT sourceId
			FOREIGN KEY (sourceId)
			REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
