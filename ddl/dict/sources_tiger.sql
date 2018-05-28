PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE sources_tiger (
		sourceId INTEGER PRIMARY KEY NOT NULL,
		sourceTigerId INTEGER NOT NULL,
		CONSTRAINT sourceId
			FOREIGN KEY (sourceId)
			REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
