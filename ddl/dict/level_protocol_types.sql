PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE level_protocol_types (
		levelProtocolTypeId INTEGER PRIMARY KEY NOT NULL,
		levelProtocolTypeName TEXT NOT NULL,
		levelProtocolTypeFullName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
