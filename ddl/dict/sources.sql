PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE sources (
		sourceId INTEGER PRIMARY KEY NOT NULL,
		groupId INTEGER NOT NULL,
		certIssuerId INTEGER NOT NULL,
		locationId INTEGER NOT NULL,
		sourceIsAlive INTEGER NOT NULL
			CHECK (sourceIsAlive IN (0, 1)),
		mask INTEGER NOT NULL,
		sourceName TEXT NOT NULL,
		sourceFullName TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT groupId
			FOREIGN KEY (groupId)
			REFERENCES source_groups (groupId),
		CONSTRAINT certIssuerId
			FOREIGN KEY (certIssuerId)
			REFERENCES cert_issuers (certIssuerId),
		CONSTRAINT locationId
			FOREIGN KEY (locationId)
			REFERENCES locations (locationId)
	) WITHOUT ROWID;
COMMIT;
