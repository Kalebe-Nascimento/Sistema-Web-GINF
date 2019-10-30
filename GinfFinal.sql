--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-30 12:54:25 BRST

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
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 16674)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    usuario integer,
    comentario text NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16680)
-- Name: postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE postagem (
    id_post integer NOT NULL,
    titulo character varying(100),
    texto text,
    data_hora timestamp without time zone,
    conteudo character varying NOT NULL,
    id_adm integer
);


ALTER TABLE postagem OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16686)
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
-- TOC entry 184 (class 1259 OID 16688)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    nickname character varying(20) NOT NULL,
    nome character varying(80),
    email character varying(40),
    senha character varying(30),
    id integer NOT NULL,
    foto bytea,
    admin boolean
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2152 (class 0 OID 16674)
-- Dependencies: 181
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comentario (usuario, comentario) FROM stdin;
\.


--
-- TOC entry 2153 (class 0 OID 16680)
-- Dependencies: 182
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY postagem (id_post, titulo, texto, data_hora, conteudo, id_adm) FROM stdin;
\.


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 183
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 33, true);


--
-- TOC entry 2155 (class 0 OID 16688)
-- Dependencies: 184
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (nickname, nome, email, senha, id, foto, admin) FROM stdin;
cesar	Cesar Geleia	luizcanf@gmail.com	123	1600	\N	t
PlayerUnnamed	Marcos	marcosviniciusgomesssantos@gmail.com	dcuc289s	1650	\N	t
\.


--
-- TOC entry 2031 (class 2606 OID 16695)
-- Name: pk_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentario PRIMARY KEY (comentario);


--
-- TOC entry 2036 (class 2606 OID 16697)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2034 (class 2606 OID 16699)
-- Name: pk_id_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pk_id_post PRIMARY KEY (id_post);


--
-- TOC entry 2032 (class 1259 OID 16700)
-- Name: fki_adm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_adm ON postagem USING btree (id_adm);


--
-- TOC entry 2037 (class 2606 OID 16701)
-- Name: fk_adm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT fk_adm FOREIGN KEY (id_adm) REFERENCES usuario(id);


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-30 12:54:25 BRST

--
-- PostgreSQL database dump complete
--
