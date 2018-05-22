PRAGMA foreign_keys = 1;

/* points = score.points / POINTS_MUL */

BEGIN;
	CREATE TABLE score (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		subtestId INTEGER NOT NULL,
		points INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId_subtestId_version
			UNIQUE (examId, subtestId, version),
		CONSTRAINT examId
			FOREIGN KEY (examId)
			REFERENCES exam (examId),
		CONSTRAINT subtestId
			FOREIGN KEY (subtestId)
			REFERENCES subtests (subtestId)
	) WITHOUT ROWID;
COMMIT;
