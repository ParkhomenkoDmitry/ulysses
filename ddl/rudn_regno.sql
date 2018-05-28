PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE rudn_regno (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		regno INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT regno_version UNIQUE (regno, version),
		CONSTRAINT regno
			FOREIGN KEY (regno)
			REFERENCES cert_regno (regno)
	) WITHOUT ROWID;
COMMIT;
