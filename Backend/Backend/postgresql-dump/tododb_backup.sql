--
-- PostgreSQL database cluster dump
--

-- Started on 2021-12-07 02:38:56 UTC

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

-- CREATE ROLE admin;
ALTER ROLE admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:VTLQuCS0gsNLw6utifet9Q==$/77CZyJR+J0Iaklkorbkh67LOVeDZ5W4Ildf4eTSEr0=:pbU5t7E1zMfpwJzt/wTjNpCWqahHtLCsA5lMkfmb3q0=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-07 02:38:56 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2021-12-07 02:38:56 UTC

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-07 02:38:56 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2021-12-07 02:38:56 UTC

--
-- PostgreSQL database dump complete
--

--
-- Database "tododb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-07 02:38:56 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3322 (class 1262 OID 16384)
-- Name: tododb; Type: DATABASE; Schema: -; Owner: admin
--

-- CREATE DATABASE tododb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE tododb OWNER TO admin;

\connect tododb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 16391)
-- Name: Todos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."Todos" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Completed" boolean NOT NULL,
    "InsertedAt" timestamp without time zone NOT NULL,
    "UpdatedAt" timestamp without time zone NOT NULL
);


ALTER TABLE public."Todos" OWNER TO admin;

--
-- TOC entry 210 (class 1259 OID 16390)
-- Name: Todos_Id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."Todos" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Todos_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 16385)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO admin;

--
-- TOC entry 3316 (class 0 OID 16391)
-- Dependencies: 211
-- Data for Name: Todos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."Todos" ("Id", "Name", "Completed", "InsertedAt", "UpdatedAt") FROM stdin;
\.


--
-- TOC entry 3314 (class 0 OID 16385)
-- Dependencies: 209
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20211205053353_InitialMigration	5.0.5
\.


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 210
-- Name: Todos_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."Todos_Id_seq"', 1, false);


--
-- TOC entry 3174 (class 2606 OID 16397)
-- Name: Todos PK_Todos; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."Todos"
    ADD CONSTRAINT "PK_Todos" PRIMARY KEY ("Id");


--
-- TOC entry 3172 (class 2606 OID 16389)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


-- Completed on 2021-12-07 02:38:56 UTC

--
-- PostgreSQL database dump complete
--

-- Completed on 2021-12-07 02:38:56 UTC

--
-- PostgreSQL database cluster dump complete
--

