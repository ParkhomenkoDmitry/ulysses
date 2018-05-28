PRAGMA foreign_keys = 1;

/* TODO handle migration */

BEGIN;
	CREATE TABLE exam_hist (
		exh_examId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exh_sessionId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exh_pers_personId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exh_levelId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exh_isResit INTEGER NOT NULL CHECK (isResit IN (0, 1)),
		exh_isPass INTEGER NOT NULL CHECK (isPass IN (0, 1)),
		exh_examStateId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		exh_TigerId INTEGER NULL CHECK (typeof(id) = "integer"),
		exh_examUserId INTEGER NOT NULL (typeof(id) = "integer"),
		exh_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT exh_examId_date PRIMARY KEY (exh_examId, exh_date),
		CONSTRAINT exh_exam UNIQUE (
			exh_sessionId,
			exh_pers_personId,
			exh_levelId,
			exh_isResit,
			exh_isPass
		),
		CONSTRAINT exh_sessionId FOREIGN KEY (exh_sessionId) REFERENCES sessions (sessionId),
		CONSTRAINT exh_pers_personId FOREIGN KEY (exh_pers_personId) REFERENCES persons (pers_personId),
		CONSTRAINT exh_levelId FOREIGN KEY (exh_levelId) REFERENCES levels (levelId),
		CONSTRAINT exh_examStateId FOREIGN KEY (exh_examStateId) REFERENCES exam_states (examStateId),
		CONSTRAINT exh_examUserId FOREIGN KEY (exh_examUserId) REFERENCES users (userId)
	) WITHOUT ROWID;
COMMIT;
