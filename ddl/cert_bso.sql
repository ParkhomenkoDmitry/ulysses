PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE cert_bso (
		cbso_certId INTEGER NOT NULL CHECK (typeof(id) = "integer"),,
		cbso_bso INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		cbso_certTargetId INTEGER NOT NULL CHECK (typeof(version) = "integer"),
		cbso_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
		CONSTRAINT cbso_certId_bso PRIMARY KEY (cbso_certId, cbso_bso),
		CONSTRAINT cbso_certId FOREIGN KEY (cbso_certId) REFERENCES cert (cert_certId),
		CONSTRAINT cbso_certTargetId FOREIGN KEY (cbso_certTargetId) REFERENCES cert_targets (ctrg_certTargetId)
	) WITHOUT ROWID;
COMMIT;
