PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert_issuers (
		certIssuerId INTEGER PRIMARY KEY NOT NULL,
		certIssuerName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
