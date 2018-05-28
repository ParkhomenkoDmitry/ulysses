PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE users (
		userId INTEGER PRIMARY KEY NOT NULL,
		groupId INTEGER NOT NULL,
		sourceId INTEGER NOT NULL,
		certIssuerId INTEGER NOT NULL,
		userPermissions INTEGER NOT NULL,
		login TEXT NOT NULL,
		hash TEXT NOT NULL,
		userFullName TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT login UNIQUE (login),
		CONSTRAINT sourceId
			FOREIGN KEY (sourceId)
			REFERENCES sources (sourceId),
		CONSTRAINT groupId
			FOREIGN KEY (groupId)
			REFERENCES source_groups (groupId),
		CONSTRAINT certIssuerId
			FOREIGN KEY (certIssuerId)
			REFERENCES cert_issuers (certIssuerId)
	) WITHOUT ROWID;
COMMIT;
