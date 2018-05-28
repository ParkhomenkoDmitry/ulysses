PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert_hist (
		cerh_certId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		cerh_exam_examId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		cerh_cDate TEXT NOT NULL,
		cerh_sourceId INTEGER NOT NULL CHECK (typeof(id) = "integer"),
		cerh_regno INTEGER NULL CHECK (typeof(id) = "integer"),
		cerh_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT cerh_certId_date PRIMARY KEY (cerh_certId, cerh_date ),
		CONSTRAINT cerh_certId FOREIGN KEY (cerh_certId) REFERENCES cert (cert_certId),
		CONSTRAINT cerh_exam_examId FOREIGN KEY (cerh_exam_examId) REFERENCES exam (exam_examId),
		CONSTRAINT cerh_sourceId FOREIGN KEY (cerh_sourceId) REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
