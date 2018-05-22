PRAGMA foreign_keys = 1;

/* examUser: user that has opened this exam */

BEGIN;
	CREATE TABLE exam_user (
		id INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		version INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		examId INTEGER NOT NULL,
		examUserId INTEGER NOT NULL,
		timestamp TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT examId
			FOREIGN KEY (examId)
			REFERENCES exam (examId),
		CONSTRAINT examUserId
			FOREIGN KEY (examUserId)
			REFERENCES users (userId)
	) WITHOUT ROWID;
COMMIT;
