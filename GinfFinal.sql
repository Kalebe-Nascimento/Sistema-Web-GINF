--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-11-13 18:03:49 BRST

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
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 66535)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    usuario integer,
    comentario text NOT NULL,
    publicacao integer
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 66541)
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
-- TOC entry 185 (class 1259 OID 66580)
-- Name: sq_postagem; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_postagem
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_postagem OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 66547)
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
-- TOC entry 184 (class 1259 OID 66549)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    nickname character varying(20) NOT NULL,
    nome character varying(80),
    email character varying(40),
    senha character varying(30),
    id integer NOT NULL,
    foto bytea,
    admin boolean,
    extensao character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2158 (class 0 OID 66535)
-- Dependencies: 181
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2159 (class 0 OID 66541)
-- Dependencies: 182
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY postagem (id_post, titulo, texto, data_hora, conteudo, id_adm) FROM stdin;



--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 185
-- Name: sq_postagem; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_postagem', 1, false);


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 183
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 32, true);


--
-- TOC entry 2161 (class 0 OID 66549)
-- Dependencies: 184
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (nickname, nome, email, senha, id, foto, admin, extensao) FROM stdin;


--
-- TOC entry 2035 (class 2606 OID 66556)
-- Name: pk_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentario PRIMARY KEY (comentario);


--
-- TOC entry 2040 (class 2606 OID 66558)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2038 (class 2606 OID 66560)
-- Name: pk_id_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pk_id_post PRIMARY KEY (id_post);


--
-- TOC entry 2036 (class 1259 OID 66561)
-- Name: fki_adm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_adm ON postagem USING btree (id_adm);


--
-- TOC entry 2032 (class 1259 OID 66562)
-- Name: fki_publicacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_publicacao ON comentario USING btree (publicacao);


--
-- TOC entry 2033 (class 1259 OID 66563)
-- Name: fki_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_usuario ON comentario USING btree (usuario);


--
-- TOC entry 2043 (class 2606 OID 66564)
-- Name: fk_adm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT fk_adm FOREIGN KEY (id_adm) REFERENCES usuario(id);


--
-- TOC entry 2041 (class 2606 OID 66569)
-- Name: fk_publicacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT fk_publicacao FOREIGN KEY (publicacao) REFERENCES postagem(id_post);


--
-- TOC entry 2042 (class 2606 OID 66574)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id);


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-11-13 18:03:49 BRST

--
-- PostgreSQL database dump complete
--

