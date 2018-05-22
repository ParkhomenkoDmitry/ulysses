PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE exam_video (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		examVideoId TEXT NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId
			FOREIGN KEY (examId)
			REFERENCES exam (examId)
	) WITHOUT ROWID;
COMMIT;
