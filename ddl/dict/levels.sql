PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE levels (
		levelId INTEGER PRIMARY KEY NOT NULL,
		levelPrototypeId INTEGER NOT NULL,
		levelTypeId INTEGER NOT NULL,
		levelProtocolTypeId INTEGER NOT NULL,
		levelNameEng TEXT NOT NULL,
		levelNameRus TEXT NOT NULL,
		levelNameCert TEXT NOT NULL,
		levelNameShort TEXT NOT NULL,
		levelNameFull TEXT NOT NULL,
		levelNameRef TEXT NOT NULL,
		levelNameProtocol TEXT NOT NULL,
		levelNameOption TEXT NOT NULL,
		CONSTRAINT levelType
			FOREIGN KEY (levelTypeId)
			REFERENCES level_types (levelTypeId),
		CONSTRAINT levelProtocolTypeId
			FOREIGN KEY (levelProtocolTypeId)
			REFERENCES level_protocol_types (levelProtocolTypeId)
	) WITHOUT ROWID;
COMMIT;
