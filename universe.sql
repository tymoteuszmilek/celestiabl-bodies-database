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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years integer,
    dist_from_earth integer,
    mass numeric,
    discoverer text,
    visited boolean,
    is_visible_from_earth boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years integer,
    dist_from_earth integer,
    mass numeric,
    discoverer text,
    visited boolean,
    is_visible_from_earth boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years integer,
    dist_from_earth integer,
    mass numeric,
    discoverer text,
    visited boolean,
    is_visible_from_earth boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years integer,
    dist_from_earth integer,
    mass numeric,
    discoverer text,
    visited boolean,
    is_visible_from_earth boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940.0);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525.0);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512.0);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 434.0);
INSERT INTO public.asteroid VALUES (5, 'Eros', 16.8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000000000, 2530000, 1000000000000, 'Edwin Hubble', true, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 1350000000, 0, 1500000000000, 'William Herschel', true, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 1200000000, 53000000, 2400000000000, 'Theodore von Kármán', false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 500000000, 23000000, 1200000000000, 'Jean-Philippe Loys de Chéseaux', true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 800000000, 28000000, 860000000000, 'Pierre Méchain', false, true);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 1000000000, 3000000, 540000000000, 'John Herschel', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 1000000000, 9377, 10800000000000000, 'Asaph Hall', true, true, 2);
INSERT INTO public.moon VALUES (2, 'Deimos', 1000000000, 23460, 1480000000000000, 'Asaph Hall', true, true, 2);
INSERT INTO public.moon VALUES (3, 'Io', 1000000000, 421800, 89300000000000000000000, 'Galileo Galilei', true, true, 3);
INSERT INTO public.moon VALUES (4, 'Europa', 1000000000, 671100, 48000000000000000000000, 'Galileo Galilei', true, true, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1000000000, 1070400, 148000000000000000000000, 'Galileo Galilei', true, true, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 1000000000, 1882700, 108000000000000000000000, 'Galileo Galilei', true, true, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 1000000000, 1221700, 135000000000000000000000, 'Christiaan Huygens', true, true, 4);
INSERT INTO public.moon VALUES (8, 'Rhea', 1000000000, 527040, 5280000000000000000000, 'Giovanni Domenico Cassini', true, true, 4);
INSERT INTO public.moon VALUES (9, 'Iapetus', 1000000000, 3561300, 4560000000000000000000, 'Giovanni Domenico Cassini', true, true, 4);
INSERT INTO public.moon VALUES (10, 'Dione', 1000000000, 377400, 1100000000000000000000, 'Giovanni Domenico Cassini', true, true, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 1000000000, 238000, 10800000000000000000, 'William Herschel', true, true, 4);
INSERT INTO public.moon VALUES (12, 'Miranda', 1000000000, 129000, 60000000000000000000, 'William Lassell', true, true, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 1000000000, 191000, 135000000000000000000, 'William Lassell', true, true, 5);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1000000000, 266000, 117000000000000000000, 'William Lassell', true, true, 5);
INSERT INTO public.moon VALUES (15, 'Titania', 1000000000, 436000, 350000000000000000000, 'William Lassell', true, true, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 1000000000, 583000, 300000000000000000000, 'William Lassell', true, true, 5);
INSERT INTO public.moon VALUES (17, 'Triton', 1000000000, 354800, 21400000000000000000000, 'William Lassell', true, true, 6);
INSERT INTO public.moon VALUES (18, 'Nereid', 1000000000, 5500000, 300000000000000000000, 'Gerard Kuiper', true, true, 6);
INSERT INTO public.moon VALUES (19, 'Proteus', 1000000000, 117600, 40000000000000000000, 'Voyager 2', true, true, 6);
INSERT INTO public.moon VALUES (20, 'Charon', 1000000000, 19500, 1520000000000000000000, 'Clyde Tombaugh', true, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2147483647, 91, 330000000000000000000000, 'Ancient Astronomers', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2147483646, 41, 4870000000000000000000000, 'Ancient Astronomers', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 2147483645, 0, 5970000000000000000000000, 'Modern Astronomers', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2147483644, 78, 642000000000000000000000, 'Ancient Astronomers', true, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2147483643, 628, 1900000000000000000000000000, 'Ancient Astronomers', false, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 2147483642, 1275, 568000000000000000000000000, 'Ancient Astronomers', false, true, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 2147483641, 2725, 86800000000000000000000000, 'Ancient Astronomers', false, true, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 2147483640, 4350, 102000000000000000000000000, 'Ancient Astronomers', false, true, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 2147483639, 5913, 13000000000000000000000, 'Clyde Tombaugh', false, false, 4);
INSERT INTO public.planet VALUES (10, 'Eris', 2147483638, 9600, 16600000000000000000000, 'Mike Brown', false, false, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', 2147483637, 6430, 40000000000000000000000, 'José Luis Ortiz', false, false, 4);
INSERT INTO public.planet VALUES (12, 'Makemake', 2147483636, 6450, 45000000000000000000000, 'Mike Brown', false, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 200000000, 8, 2000000000000000000000000000000, 'Unknown', true, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1000000000, 640, 18000000000000000000000000000000, 'Unknown', false, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 50000000, 4, 1200000000000000000000000000000, 'Unknown', true, true, 2);
INSERT INTO public.star VALUES (4, 'Rigel', 800000000, 860, 40000000000000000000000000000000, 'Unknown', false, true, 2);
INSERT INTO public.star VALUES (5, 'Procyon', 120000000, 11, 2000000000000000000000000000000, 'Unknown', true, true, 3);
INSERT INTO public.star VALUES (6, 'Altair', 100000000, 17, 6000000000000000000000000000000, 'Unknown', false, true, 3);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: asteroid unique_asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_id UNIQUE (asteroid_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

