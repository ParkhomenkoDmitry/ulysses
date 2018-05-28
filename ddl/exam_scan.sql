PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE exam_scan (
		scan_exam_examId INTEGER NOT NULL,  --Index
		scan_examScan TEXT NOT NULL,
		scan_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		scan_delDate TEXT NULL,
--		scan_examScan unique?		
		CONSTRAINT scan_exam_examId FOREIGN KEY (scan_exam_examId) REFERENCES exam (exam_examId)
	) WITHOUT ROWID;
COMMIT;
