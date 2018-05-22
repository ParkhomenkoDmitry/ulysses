PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE levels (
		levelId INTEGER PRIMARY KEY NOT NULL,
		levelNameEng TEXT NOT NULL,
		levelNameRus TEXT NOT NULL,
		levelNameCert TEXT NOT NULL,
		levelNameShort TEXT NOT NULL,
		levelNameFull TEXT NOT NULL,
		levelNameRef TEXT NOT NULL,
		levelNameProtocol TEXT NOT NULL,
		levelNameOption TEXT NOT NULL,
		levelPrototypeId INTEGER NOT NULL,
		levelType INTEGER NOT NULL,
		levelProtocolType INTEGER NOT NULL
	) WITHOUT ROWID;
COMMIT;
