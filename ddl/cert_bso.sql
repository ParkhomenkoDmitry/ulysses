PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert_bso (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		certId INTEGER NOT NULL,
		bso INTEGER NOT NULL,
		certTargetId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT certId_version UNIQUE (certId, version),
		CONSTRAINT certId
			FOREIGN KEY (certId)
			REFERENCES cert (certId)
	) WITHOUT ROWID;
COMMIT;
