PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE exam_video (
		evid_examId INTEGER NOT NULL,  --Index
		evid_examVideo TEXT NOT NULL,
		evid_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
--		evid_examVideo unique?
		CONSTRAINT evid_examId FOREIGN KEY (evid_examId) REFERENCES exam (exam_examId)
	) WITHOUT ROWID;
COMMIT;
