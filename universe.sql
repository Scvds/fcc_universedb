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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    distance integer
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
    name character varying(30) NOT NULL,
    area integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    distance integer,
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
    name character varying(30) NOT NULL,
    area integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    distance integer,
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
    name character varying(30) NOT NULL,
    area integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    distance integer,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (4, 3, 'Messier 15');
INSERT INTO public.black_hole VALUES (5, 5, 'Centaurus A');
INSERT INTO public.black_hole VALUES (6, 1, '(Messier 104');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkeyway', NULL, 1445, 'our own galaxy', true, true, 0);
INSERT INTO public.galaxy VALUES (2, 'Black eye galaxy', NULL, 3585, 'has a black eye', false, false, 219);
INSERT INTO public.galaxy VALUES (3, 'Bear paw galaxy', NULL, 853, 'Looks like a bear paw', false, false, 3914);
INSERT INTO public.galaxy VALUES (4, 'Butterfly galaxy', NULL, 3485, 'Beautifull like a butterfly', false, false, 2174);
INSERT INTO public.galaxy VALUES (5, 'Grasshopper', NULL, 3971, 'Two colliding galaxies', false, false, 17491);
INSERT INTO public.galaxy VALUES (6, 'Malin 1', NULL, 387137, 'named after discoverer', false, true, 32589);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 23, 62, 'earth', true, true, 384, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 23, 62, 'mars', true, true, 384, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 23, 62, 'mars', true, true, 384, 1);
INSERT INTO public.moon VALUES (4, 'Adrastea', 23, 62, 'jupiter', true, true, 384, 1);
INSERT INTO public.moon VALUES (5, 'Aitne', 23, 62, 'jupiter', true, true, 384, 1);
INSERT INTO public.moon VALUES (6, 'Amalthea', 23, 62, 'jupiter', true, true, 384, 3);
INSERT INTO public.moon VALUES (7, 'Ananke', 23, 62, 'jupiter', true, true, 384, 3);
INSERT INTO public.moon VALUES (8, 'Callisto', 23, 62, 'jupiter', true, true, 384, 5);
INSERT INTO public.moon VALUES (9, 'Carme', 23, 62, 'jupiter', true, true, 384, 5);
INSERT INTO public.moon VALUES (10, 'Autonoe', 23, 62, 'jupiter', true, true, 384, 4);
INSERT INTO public.moon VALUES (11, 'Atlas', 23, 62, 'saturn', true, true, 384, 2);
INSERT INTO public.moon VALUES (12, 'Bestla', 23, 62, 'saturn', true, true, 384, 2);
INSERT INTO public.moon VALUES (13, 'Dione', 23, 62, 'saturn', true, true, 384, 4);
INSERT INTO public.moon VALUES (14, 'Greip', 23, 62, 'saturn', true, true, 384, 2);
INSERT INTO public.moon VALUES (15, 'Hati', 23, 62, 'saturn', true, true, 384, 2);
INSERT INTO public.moon VALUES (16, 'Bianca', 23, 62, 'uranus', true, true, 384, 4);
INSERT INTO public.moon VALUES (17, 'Cupid', 23, 62, 'uranus', true, true, 384, 6);
INSERT INTO public.moon VALUES (18, 'Juliet', 23, 62, 'uranus', true, true, 384, 6);
INSERT INTO public.moon VALUES (19, 'Mab', 23, 62, 'uranus', true, true, 384, 6);
INSERT INTO public.moon VALUES (20, 'Miranda', 23, 62, 'uranus', true, true, 384, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Spe', 4, 5, 'hope', false, false, 249, 5);
INSERT INTO public.planet VALUES (2, 'Arion', 4, 5, 'poet', false, false, 249, 5);
INSERT INTO public.planet VALUES (3, 'Arkas', 4, 5, 'son of zeus', false, false, 249, 5);
INSERT INTO public.planet VALUES (4, 'Orbitar', 4, 5, 'neologism', false, false, 317, 5);
INSERT INTO public.planet VALUES (5, 'Galileo', 4, 5, 'italian astronomer', false, false, 249, 5);
INSERT INTO public.planet VALUES (6, 'Brahe', 4, 5, 'Danish astronomer', false, false, 249, 4);
INSERT INTO public.planet VALUES (7, 'Janssen', 4, 5, 'Dutch astronomer', false, false, 40, 4);
INSERT INTO public.planet VALUES (8, 'Dagon', 4, 5, 'Fertility god', false, false, 24, 4);
INSERT INTO public.planet VALUES (9, 'Tadmor', 4, 5, 'Palmyra', false, false, 45, 4);
INSERT INTO public.planet VALUES (10, 'Smertrios', 4, 5, 'Gallic deity', false, false, 257, 1);
INSERT INTO public.planet VALUES (11, 'Arber', 4, 5, 'inhabitants Albania', false, false, 407, 2);
INSERT INTO public.planet VALUES (12, 'Bocaprins', 4, 5, 'beach', false, false, 750, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 128, 341, 'gives us daylight', false, false, 1, 1);
INSERT INTO public.star VALUES (2, 'Hadar', 9312, 202, 'B-type star', false, false, 390, 4);
INSERT INTO public.star VALUES (3, 'Deneb', 341, 3491, 'A-type star', false, false, 352, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 525, 16112, 'A-type star', false, false, 5127, 6);
INSERT INTO public.star VALUES (5, 'Capella', 3463, 6837, 'K-type star', false, false, 84, 3);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 62, 6732, 'M-type star', false, false, 938, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

