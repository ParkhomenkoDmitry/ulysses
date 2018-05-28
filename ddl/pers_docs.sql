PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE pers_docs (
		pdoc_identId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		pdoc_it_typeId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pdoc_ident INTEGER NOT NULL,
		pdoc_identDate TEXT NOT NULL,
		pdoc_identAuth TEXT NOT NULL,
		pdoc_ident1 TEXT NOT NULL,
		pdoc_ident2 TEXT NOT NULL,
		pdoc_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT pdoc_it_typeId FOREIGN KEY (pdoc_it_typeId) REFERENCES ident_types (it_typeId)
	) WITHOUT ROWID;
COMMIT;
