PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE bsos_busy_rudn (
		bso INTEGER PRIMARY KEY NOT NULL,
		CONSTRAINT bso
			FOREIGN KEY (bso)
			REFERENCES cert_bso (bso)
	) WITHOUT ROWID;
COMMIT;
