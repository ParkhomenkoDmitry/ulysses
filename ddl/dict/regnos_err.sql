PRAGMA foreign_keys = 1;

BEGIN;
	CREATE TABLE regnos_err (
		certId INTEGER PRIMARY KEY NOT NULL,
		regnoShouldBe INTEGER NOT NULL,
		regnoFact INTEGER NOT NULL,
		CONSTRAINT certId
			FOREIGN KEY (certId)
			REFERENCES cert (certId),
		CONSTRAINT regnoShouldBe
			FOREIGN KEY (regnoShouldBe)
			REFERENCES cert_regno (regno),
		CONSTRAINT regnoFact
			FOREIGN KEY (regnoFact)
			REFERENCES cert_regno (regno)
	) WITHOUT ROWID;
COMMIT;
