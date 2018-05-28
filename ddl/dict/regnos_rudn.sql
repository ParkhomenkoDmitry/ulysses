PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE regnos_rudn (
		regno INTEGER PRIMARY KEY NOT NULL,
		CONSTRAINT regno
			FOREIGN KEY (regno)
			REFERENCES cert_regno (regno)
	) WITHOUT ROWID;
COMMIT;
