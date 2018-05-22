PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE signers (
		signerId INTEGER PRIMARY KEY NOT NULL,
		signerName TEXT NOT NULL,
		signerShortTitle TEXT NOT NULL,
		signerFullTitle TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
