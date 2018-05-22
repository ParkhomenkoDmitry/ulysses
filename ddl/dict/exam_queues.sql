PRAGMA foreign_keys = 1;

/* valid exam queues:
	- 0: archived
	- 1: print cert
	- 2: print reCert
*/

BEGIN;
	CREATE TABLE exam_queues (
		examQueueId INTEGER PRIMARY KEY NOT NULL,
		examQueueName TEXT NOT NULL
	) WITHOUT ROWID;
COMMIT;
