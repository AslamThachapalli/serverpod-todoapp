BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "todos" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "todos" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "isCompleted" boolean NOT NULL,
    "userId" integer NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "todos"
    ADD CONSTRAINT "todos_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR todoapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('todoapp', '20240409180749521', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240409180749521', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
