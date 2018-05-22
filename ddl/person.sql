PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE person (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		personId INTEGER NOT NULL,
		fnRu TEXT NOT NULL,
		lnRu TEXT NOT NULL,
		fnEn TEXT NOT NULL,
		lnEn TEXT NOT NULL,
		genderId INTEGER NOT NULL,
		bDate TEXT NOT NULL,
		countryId INTEGER NOT NULL,
		identId INTEGER NOT NULL,
		identDate TEXT NOT NULL,
		identAuth TEXT NOT NULL,
		ident1 TEXT NOT NULL,
		ident2 TEXT NOT NULL,
		mc1 TEXT NOT NULL,
		mc2 TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT personId_version UNIQUE (personId, version),
		CONSTRAINT person UNIQUE (
			fnRu,
			lnRu,
			fnEn,
			lnEn,
			genderId,
			bDate,
			countryId,
			identId,
			identDate,
			identAuth,
			ident1,
			ident2,
			mc1,
			mc2
		),
		CONSTRAINT gender
			FOREIGN KEY (genderId)
			REFERENCES genders (genderId),
		CONSTRAINT countryId
			FOREIGN KEY (countryId)
			REFERENCES countries (countryId),
		CONSTRAINT identId
			FOREIGN KEY (identId)
			REFERENCES identTypes (identId)
	) WITHOUT ROWID;
COMMIT;
