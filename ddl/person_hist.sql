PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE person_hist (
		perh_pers_personId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_fn_nameId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_ln_nameId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_genderId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_bDate TEXT NOT NULL,
		perh_countryId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_pdoc_identId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		perh_mc1 TEXT NOT NULL,
		perh_mc2 TEXT NOT NULL,
		perh_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT person_hist PRIMARY KEY( perh_pers_personId, perh_date ),
		CONSTRAINT perh_pers_personId FOREIGN KEY (perh_pers_personId) REFERENCES person (pers_personId),
		CONSTRAINT perh_genderId FOREIGN KEY (perh_genderId) REFERENCES genders (genderId),
		CONSTRAINT perh_countryId FOREIGN KEY (perh_countryId) REFERENCES countries (countryId),
		CONSTRAINT perh_pdoc_identId FOREIGN KEY (perh_pdoc_identId) REFERENCES pers_docs (pdoc_identId)
	) WITHOUT ROWID;
COMMIT;
