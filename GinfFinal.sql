--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-15 12:06:40 BRT

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
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 24887)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin (
    nickname character varying(50) NOT NULL,
    nome character varying(50),
    email character varying(50),
    senha character varying(50),
    id_admin integer NOT NULL
);


ALTER TABLE admin OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24890)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    usuario integer,
    comentario text NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24896)
-- Name: foto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE foto (
    foto bytea,
    extensao text,
    id_usuario integer,
    id integer NOT NULL
);


ALTER TABLE foto OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 24902)
-- Name: postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE postagem (
    id_post integer NOT NULL,
    titulo character varying(100),
    texto text,
    data_hora timestamp without time zone,
    autor character varying(50),
    conteudo character varying NOT NULL
);


ALTER TABLE postagem OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 24908)
-- Name: sq_fotos; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_fotos
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_fotos OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 24910)
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
-- TOC entry 187 (class 1259 OID 24912)
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
-- TOC entry 2167 (class 0 OID 24887)
-- Dependencies: 181
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2168 (class 0 OID 24890)
-- Dependencies: 182
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- TOC entry 2169 (class 0 OID 24896)
-- Dependencies: 183
-- Data for Name: foto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2170 (class 0 OID 24902)
-- Dependencies: 184
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 185
-- Name: sq_fotos; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_fotos', 1, false);


--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 186
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 14, true);


--
-- TOC entry 2173 (class 0 OID 24912)
-- Dependencies: 187
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2043 (class 2606 OID 24916)
-- Name: pk_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentario PRIMARY KEY (comentario);


--
-- TOC entry 2046 (class 2606 OID 24918)
-- Name: pk_foto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY foto
    ADD CONSTRAINT pk_foto PRIMARY KEY (id);


--
-- TOC entry 2051 (class 2606 OID 24920)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2041 (class 2606 OID 24938)
-- Name: pk_idAdmin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT "pk_idAdmin" PRIMARY KEY (id_admin);


--
-- TOC entry 2049 (class 2606 OID 24924)
-- Name: pkconteudo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pkconteudo PRIMARY KEY (conteudo);


--
-- TOC entry 2047 (class 1259 OID 24925)
-- Name: fki_pk_admin_post; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_admin_post ON postagem USING btree (autor);


--
-- TOC entry 2044 (class 1259 OID 24926)
-- Name: fki_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_usuario ON foto USING btree (id_usuario);


--
-- TOC entry 2052 (class 2606 OID 24927)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY foto
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id);


--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-15 12:06:40 BRT

--
-- PostgreSQL database dump complete
--
