PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert (
		cert_certId INTEGER PRIMARY KEY NOT NULL CHECK (typeof(id) = "integer"),
		cert_exam_examId INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		cert_cDate TEXT NOT NULL,
		cert_sourceId INTEGER NOT NULL,
		cert_regno INTEGER NULL CHECK (typeof(id) = "integer"),
		cert_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT cert_exam_examId
			FOREIGN KEY (cert_exam_examId)
			REFERENCES exam (exam_examId),
		CONSTRAINT cert_sourceId
			FOREIGN KEY (cert_sourceId)
			REFERENCES sources (sourceId)
	) WITHOUT ROWID;
COMMIT;
