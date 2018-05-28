PRAGMA foreign_keys = 1;

/* valid exam states:
	- 0: rejected
	- 1: approved
*/

BEGIN;
	CREATE TABLE exam_states (
		examStateId INTEGER PRIMARY KEY NOT NULL,
		examStateName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
