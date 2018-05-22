PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE exam_state (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		examStateId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId FOREIGN KEY (examId) REFERENCES exam (examId),
		CONSTRAINT examState
			FOREIGN KEY (examState)
			REFERENCES exam_states (examState)
	) WITHOUT ROWID;
COMMIT;
