PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE first_name (
		fn_nameId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		fn_name_ru TEXT NOT NULL,
		fn_name_en TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
