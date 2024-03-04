--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size integer,
    distance numeric(18,2),
    description text,
    live boolean,
    belong boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: land; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.land (
    land_id integer NOT NULL,
    name character varying(30),
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.land OWNER TO freecodecamp;

--
-- Name: land_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.land_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.land_id_seq OWNER TO freecodecamp;

--
-- Name: land_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.land_id_seq OWNED BY public.land.land_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer,
    size integer,
    distance numeric(18,2),
    description text,
    live boolean,
    belong boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer,
    size integer,
    distance numeric(18,2),
    description text,
    live boolean,
    belong boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer,
    size integer,
    distance numeric(18,2),
    description text,
    live boolean,
    belong boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: land land_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.land ALTER COLUMN land_id SET DEFAULT nextval('public.land_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '银河系', 18, 1000, 19.20, '银河系是太阳系所在地', true, true);
INSERT INTO public.galaxy VALUES (3, '猎犬座星系', 18, 109990, 19.20, '猎犬座星系', false, true);
INSERT INTO public.galaxy VALUES (2, '仙女座星系', 18, 109800, 19.20, '仙女座星系', true, true);
INSERT INTO public.galaxy VALUES (4, '猎犬座星系2', 18, 109990, 19.20, '猎犬座星系2', false, true);
INSERT INTO public.galaxy VALUES (5, '仙女座星系3', 18, 109800, 19.20, '仙女座星系3', true, true);
INSERT INTO public.galaxy VALUES (6, '双子座星系3', 18, 109800, 19.20, '双子座星系', true, true);


--
-- Data for Name: land; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.land VALUES (1, '亚洲', 'nb', 1);
INSERT INTO public.land VALUES (2, '欧洲', 'nb', 1);
INSERT INTO public.land VALUES (3, '美洲', 'nb', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '月球', 1, 1, 1.00, '我是地球的月亮', true, true, 1);
INSERT INTO public.moon VALUES (2, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 1);
INSERT INTO public.moon VALUES (3, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 2);
INSERT INTO public.moon VALUES (4, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 3);
INSERT INTO public.moon VALUES (5, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 4);
INSERT INTO public.moon VALUES (6, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 5);
INSERT INTO public.moon VALUES (7, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 6);
INSERT INTO public.moon VALUES (8, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 7);
INSERT INTO public.moon VALUES (9, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 8);
INSERT INTO public.moon VALUES (10, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 9);
INSERT INTO public.moon VALUES (11, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 10);
INSERT INTO public.moon VALUES (12, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 11);
INSERT INTO public.moon VALUES (13, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 12);
INSERT INTO public.moon VALUES (14, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 11);
INSERT INTO public.moon VALUES (15, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 10);
INSERT INTO public.moon VALUES (16, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 9);
INSERT INTO public.moon VALUES (17, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 8);
INSERT INTO public.moon VALUES (18, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 8);
INSERT INTO public.moon VALUES (19, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 8);
INSERT INTO public.moon VALUES (20, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 7);
INSERT INTO public.moon VALUES (21, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 7);
INSERT INTO public.moon VALUES (22, '月球2', 1, 1, 1.00, '我是地球的月亮', true, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '地球', 3, 10, 2.00, '地球有月亮行星', true, true, 1);
INSERT INTO public.planet VALUES (2, '地球2', 3, 10, 2.00, '地球有月亮行星', true, true, 1);
INSERT INTO public.planet VALUES (3, '地球3', 3, 10, 2.00, '地球有月亮行星', true, true, 2);
INSERT INTO public.planet VALUES (4, '地球4', 3, 10, 2.00, '地球有月亮行星', true, true, 2);
INSERT INTO public.planet VALUES (5, '地球5', 3, 10, 2.00, '地球有月亮行星', true, true, 3);
INSERT INTO public.planet VALUES (6, '地球6', 3, 10, 2.00, '地球有月亮行星', true, true, 3);
INSERT INTO public.planet VALUES (7, '地球7', 3, 10, 2.00, '地球有月亮行星', true, true, 4);
INSERT INTO public.planet VALUES (8, '地球8', 3, 10, 2.00, '地球有月亮行星', true, true, 4);
INSERT INTO public.planet VALUES (9, '地球9', 3, 10, 2.00, '地球有月亮行星', true, true, 5);
INSERT INTO public.planet VALUES (10, '地球10', 3, 10, 2.00, '地球有月亮行星', true, true, 5);
INSERT INTO public.planet VALUES (11, '地球11', 3, 10, 2.00, '地球有月亮行星', true, true, 6);
INSERT INTO public.planet VALUES (12, '地球12', 3, 10, 2.00, '地球有月亮行星', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '太阳系', 8, 100, 12.00, '太阳系有八大行星', true, true, 1);
INSERT INTO public.star VALUES (2, '三体星系', 8, 100, 12.00, '敌人', true, true, 1);
INSERT INTO public.star VALUES (3, '四体星系', 8, 100, 12.00, '四体敌人', true, true, 1);
INSERT INTO public.star VALUES (4, '五体星系', 8, 100, 12.00, '敌人', true, true, 2);
INSERT INTO public.star VALUES (5, '六体星系', 8, 100, 12.00, '敌人', true, true, 2);
INSERT INTO public.star VALUES (6, '七体星系', 8, 100, 12.00, '敌人', true, true, 3);
INSERT INTO public.star VALUES (7, '八体星系', 8, 100, 12.00, '敌人', true, true, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: land_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.land_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: land land_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.land
    ADD CONSTRAINT land_pkey PRIMARY KEY (land_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_col; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_col UNIQUE (moon_id);


--
-- Name: galaxy unique_col1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_col1 UNIQUE (galaxy_id);


--
-- Name: star unique_col2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_col2 UNIQUE (star_id);


--
-- Name: planet unique_col3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_col3 UNIQUE (planet_id);


--
-- Name: land unique_col4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.land
    ADD CONSTRAINT unique_col4 UNIQUE (land_id);


--
-- Name: star galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: land land_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.land
    ADD CONSTRAINT land_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

