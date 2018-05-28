PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE person_scan (
		scan_pers_personId INTEGER NOT NULL,
		scan_personScan TEXT NOT NULL,
		scan_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		scan_delDate TEXT NULL,
		CONSTRAINT scan_pers_personId FOREIGN KEY (scan_pers_personId) REFERENCES person (pers_personId)
	) WITHOUT ROWID;
COMMIT;
