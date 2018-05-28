PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE last_name (
		ln_nameId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		ln_name_ru TEXT NOT NULL,
		ln_name_en TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
