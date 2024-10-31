--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
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
-- Name: mocksystem; Type: TABLE; Schema: public; Owner: ali
--

CREATE TABLE public.mocksystem (
    name character varying(50),
    description character varying(100),
    priority character varying(50),
    is_active boolean
);


ALTER TABLE public.mocksystem OWNER TO ali;

--
-- Name: tickets; Type: TABLE; Schema: public; Owner: ali
--

CREATE TABLE public.tickets (
    id integer NOT NULL,
    subject character varying(100),
    description character varying(100),
    status character varying(100),
    priority character varying(100),
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    name character varying(50)
);


ALTER TABLE public.tickets OWNER TO ali;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: ali
--

CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO ali;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ali
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: ali
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- Data for Name: mocksystem; Type: TABLE DATA; Schema: public; Owner: ali
--

COPY public.mocksystem (name, description, priority, is_active) FROM stdin;
ali	i broke my computer	high	t
ali	i broke my computer	high	t
\.


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: ali
--

COPY public.tickets (id, subject, description, status, priority, created_at, updated_at, name) FROM stdin;
\.


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ali
--

SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: ali
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

