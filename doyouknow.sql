--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fact (
    id integer NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.fact OWNER TO postgres;

--
-- Data for Name: fact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fact (id, content) FROM stdin;
1	Mèo có thể leo cây
2	Khỉ biết bơi\n
3	Cá ăn cức
\.


--
-- Name: fact fact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact
    ADD CONSTRAINT fact_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

