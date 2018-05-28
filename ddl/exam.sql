PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE exam (
		exam_examId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		exam_sessionId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exam_pers_personId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exam_levelId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exam_isResit INTEGER NOT NULL CHECK (isResit IN (0, 1)),
		exam_isPass INTEGER NOT NULL CHECK (isPass IN (0, 1)),
		exam_examStateId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exam_TigerId INTEGER NULL CHECK (typeof(id) = "integer"),
		exam_examUserId INTEGER NOT NULL (typeof(id) = "integer"),
		exam_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT exam UNIQUE (
			exam_sessionId,
			exam_pers_personId,
			exam_levelId,
			exam_isResit,
			exam_isPass
		),
		CONSTRAINT exam_sessionId FOREIGN KEY (exam_sessionId) REFERENCES sessions (sessionId),
		CONSTRAINT exam_pers_personId FOREIGN KEY (exam_pers_personId) REFERENCES persons (pers_personId),
		CONSTRAINT exam_levelId FOREIGN KEY (exam_levelId) REFERENCES levels (levelId),
		CONSTRAINT exam_examStateId FOREIGN KEY (exam_examStateId) REFERENCES exam_states (examStateId),
		CONSTRAINT exam_examUserId FOREIGN KEY (exam_examUserId) REFERENCES users (userId)
	) WITHOUT ROWID;
COMMIT;
