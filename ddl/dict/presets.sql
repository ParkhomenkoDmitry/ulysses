PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE presets (
		printerId INTEGER PRIMARY KEY NOT NULL,
		levelTypeId INTEGER NOT NULL,
		pagePreset TEXT NOT NULL,
		pageLayout TEXT NOT NULL
			CHECK (pageLayout IN ("landscape", "portrait")),
		pageFormat TEXT NOT NULL
			CHECK (pageFormat IN ("A4", "A5")),
		CONSTRAINT levelTypeId
			FOREIGN KEY (levelTypeId)
			REFERENCES level_types (levelTypeId)
	) WITHOUT ROWID;
COMMIT;
