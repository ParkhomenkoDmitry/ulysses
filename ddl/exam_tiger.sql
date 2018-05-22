PRAGMA foreign_keys = 1;

/* examTigerId: tiger attempt id */

BEGIN;
	CREATE TABLE exam_tiger (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		examTigerId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId
			FOREIGN KEY (examId)
			REFERENCES exam (examId)
	) WITHOUT ROWID;
COMMIT;
