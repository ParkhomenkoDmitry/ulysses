PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE person (
		pers_personId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		pers_fn_nameId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pers_ln_nameId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pers_genderId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pers_bDate TEXT NOT NULL,
		pers_countryId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pers_pdoc_identId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		pers_mc1 TEXT NOT NULL,
		pers_mc2 TEXT NOT NULL,
		pers_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT person UNIQUE (
			pers_fn_nameId,
			pers_ln_nameId,
			pers_genderId,
			pers_bDate,
			pers_countryId,
			pers_pdoc_identId,
			pers_mc1,
			pers_mc2
		),
		CONSTRAINT pers_genderId
			FOREIGN KEY (pers_genderId)
			REFERENCES genders (genderId),
		CONSTRAINT pers_countryId
			FOREIGN KEY (pers_countryId)
			REFERENCES countries (countryId),
		CONSTRAINT pers_pdoc_identId
			FOREIGN KEY (pers_pdoc_identId)
			REFERENCES pers_docs (pdoc_identId)
	) WITHOUT ROWID;
COMMIT;
