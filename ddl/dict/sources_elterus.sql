PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE sources_elterus (
		sourceId INTEGER PRIMARY KEY NOT NULL,
		prefix TEXT NOT NULL,
		CONSTRAINT sourceId
			FOREIGN KEY (sourceId)
			REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
