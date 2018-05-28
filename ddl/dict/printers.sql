PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE printers (
		printerId INTEGER PRIMARY KEY NOT NULL,
		certIssuerId INTEGER NOT NULL,
		printerName TEXT NOT NULL,
		printerFullName TEXT NOT NULL,
		CONSTRAINT certIssuerId
			FOREIGN KEY (certIssuerId)
			REFERENCES cert_issuers (certIssuerId)
	) WITHOUT ROWID;
COMMIT;
