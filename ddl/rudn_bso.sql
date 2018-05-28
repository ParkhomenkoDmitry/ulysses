PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE rudn_bso (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		bso INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT bso
			FOREIGN KEY (bso)
			REFERENCES cert_bso (bso)
	) WITHOUT ROWID;
COMMIT;
