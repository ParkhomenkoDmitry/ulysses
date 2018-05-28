PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE ident_types (
		it_typeId INTEGER PRIMARY KEY NOT NULL,
		it_name TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
