BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "todos" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "isCompleted" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR todoapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('todoapp', '20240409093308437', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240409093308437', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
