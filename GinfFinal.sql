--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-02 14:31:30 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 57711)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin (
    nickname character varying(50) NOT NULL,
    nome character varying(50),
    email character varying(50),
    senha character varying(50)
);


ALTER TABLE admin OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 57739)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    usuario integer,
    comentario text NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 57714)
-- Name: postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE postagem (
    id_post integer NOT NULL,
    titulo character varying(100),
    texto text,
    data_hora timestamp without time zone,
    autor character varying(50)
);


ALTER TABLE postagem OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 57737)
-- Name: sq_usuario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_usuario OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 57720)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    nickname character varying(20) NOT NULL,
    nome character varying(80),
    email character varying(40),
    senha character varying(30),
    id integer NOT NULL
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2157 (class 0 OID 57711)
-- Dependencies: 181
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- TOC entry 2161 (class 0 OID 57739)
-- Dependencies: 185
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2158 (class 0 OID 57714)
-- Dependencies: 182
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 184
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 5, true);


--
-- TOC entry 2159 (class 0 OID 57720)
-- Dependencies: 183
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--
--
-- TOC entry 2041 (class 2606 OID 57746)
-- Name: pk_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentario PRIMARY KEY (comentario);


--
-- TOC entry 2039 (class 2606 OID 57736)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2034 (class 2606 OID 57726)
-- Name: pk_nicknameAdmin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT "pk_nicknameAdmin" PRIMARY KEY (nickname);


--
-- TOC entry 2037 (class 2606 OID 57728)
-- Name: pk_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pk_post PRIMARY KEY (id_post);


--
-- TOC entry 2035 (class 1259 OID 57729)
-- Name: fki_pk_admin_post; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_admin_post ON postagem USING btree (autor);


--
-- TOC entry 2042 (class 2606 OID 57730)
-- Name: pk_admin_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pk_admin_post FOREIGN KEY (autor) REFERENCES admin(nickname);


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-02 14:31:31 BRT

--
-- PostgreSQL database dump complete
--
