--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)

-- Started on 2019-10-16 23:32:25 -03

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
-- TOC entry 1 (class 3079 OID 13043)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16594)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario (
    usuario integer,
    comentario text NOT NULL,
    id_comentario integer NOT NULL
);


ALTER TABLE public.comentario OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16600)
-- Name: foto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foto (
    foto bytea,
    extensao text,
    id_usuario integer,
    id integer NOT NULL
);


ALTER TABLE public.foto OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16606)
-- Name: postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.postagem (
    id_post integer NOT NULL,
    titulo character varying(100),
    texto text,
    data_hora timestamp without time zone,
    conteudo character varying NOT NULL,
    id_adm integer
);


ALTER TABLE public.postagem OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16612)
-- Name: sq_fotos; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sq_fotos
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_fotos OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16614)
-- Name: sq_usuario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_usuario OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16616)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    nickname character varying(20) NOT NULL,
    nome character varying(80),
    email character varying(40),
    senha character varying(30),
    id integer NOT NULL,
    admin boolean
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2938 (class 0 OID 16594)
-- Dependencies: 196
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2939 (class 0 OID 16600)
-- Dependencies: 197
-- Data for Name: foto; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2940 (class 0 OID 16606)
-- Dependencies: 198
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2943 (class 0 OID 16616)
-- Dependencies: 201
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 199
-- Name: sq_fotos; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sq_fotos', 1, false);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 200
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sq_usuario', 18, true);


--
-- TOC entry 2809 (class 2606 OID 16622)
-- Name: foto pk_foto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foto
    ADD CONSTRAINT pk_foto PRIMARY KEY (id);


--
-- TOC entry 2814 (class 2606 OID 16624)
-- Name: usuario pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2806 (class 2606 OID 16640)
-- Name: comentario pk_id_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT pk_id_comentario PRIMARY KEY (id_comentario);


--
-- TOC entry 2812 (class 2606 OID 16626)
-- Name: postagem pk_id_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.postagem
    ADD CONSTRAINT pk_id_post PRIMARY KEY (id_post);


--
-- TOC entry 2810 (class 1259 OID 16627)
-- Name: fki_adm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_adm ON public.postagem USING btree (id_adm);


--
-- TOC entry 2807 (class 1259 OID 16628)
-- Name: fki_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_usuario ON public.foto USING btree (id_usuario);


--
-- TOC entry 2816 (class 2606 OID 16629)
-- Name: postagem fk_adm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.postagem
    ADD CONSTRAINT fk_adm FOREIGN KEY (id_adm) REFERENCES public.usuario(id);


--
-- TOC entry 2815 (class 2606 OID 16634)
-- Name: foto fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foto
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);


-- Completed on 2019-10-16 23:32:25 -03

--
-- PostgreSQL database dump complete
--
