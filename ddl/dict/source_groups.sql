PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE source_groups (
		groupId INTEGER PRIMARY KEY NOT NULL,
		certIssuerId INTEGER NOT NULL,
		mask INTEGER NOT NULL,
		groupBalance INTEGER NOT NULL,
		groupShortName TEXT NOT NULL,
		groupFullName TEXT NOT NULL,
		groupInfo TEXT NOT NULL,
		groupStartDate TEXT NOT NULL,
		groupEndDate TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT groupId
			FOREIGN KEY (groupId)
			REFERENCES source_groups (groupId),
		CONSTRAINT certIssuerId
			FOREIGN KEY (certIssuerId)
			REFERENCES cert_issuers (certIssuerId)
	) WITHOUT ROWID;
COMMIT;
