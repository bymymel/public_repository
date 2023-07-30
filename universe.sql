--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: another_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.another_table (
    another_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    place character varying(30)
);


ALTER TABLE public.another_table OWNER TO freecodecamp;

--
-- Name: another_table_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.another_table_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.another_table_table_id_seq OWNER TO freecodecamp;

--
-- Name: another_table_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.another_table_table_id_seq OWNED BY public.another_table.another_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    light_years_away numeric(4,3),
    notes text,
    local_group boolean,
    radius integer,
    has_type boolean
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
    planet_id integer,
    size integer,
    mass integer
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
    star_id integer,
    size integer,
    mass integer
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
    galaxy_id integer,
    brightness character varying(15),
    color character varying(15)
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
-- Name: another_table another_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table ALTER COLUMN another_table_id SET DEFAULT nextval('public.another_table_table_id_seq'::regclass);


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
-- Data for Name: another_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.another_table VALUES (1, 'Titania', 'Bianca');
INSERT INTO public.another_table VALUES (2, 'Kalyke', 'Thelxinoe');
INSERT INTO public.another_table VALUES (3, 'Neso', 'Loge');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, 0.027, 'Home galaxy of Earth. Barred Spiral Galaxy', true, 43700, true);
INSERT INTO public.galaxy VALUES (2, 'Ovren', 64700, 0.082, 'Dangerous ass place. Do not go.', false, 32350, false);
INSERT INTO public.galaxy VALUES (3, 'Sli', 33300, 0.023, 'Peaceful place with nice aliens', true, 16650, true);
INSERT INTO public.galaxy VALUES (4, 'Gria', 44400, 0.066, 'Place unknown. Helmet recommended', true, 48155, true);
INSERT INTO public.galaxy VALUES (5, 'Thais', 48500, 0.012, 'Everybody just rides bikes', false, 39330, false);
INSERT INTO public.galaxy VALUES (6, 'Egips', 11100, 0.011, 'Happy trees everywhere', false, 30333, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bergelmir', 1, 50, 50);
INSERT INTO public.moon VALUES (2, 'Namaka', 1, 100, 100);
INSERT INTO public.moon VALUES (3, 'Himalia', 2, 150, 150);
INSERT INTO public.moon VALUES (4, 'Hyperion', 2, 200, 200);
INSERT INTO public.moon VALUES (5, 'Belinda', 3, 250, 250);
INSERT INTO public.moon VALUES (6, 'Juliet', 3, 300, 300);
INSERT INTO public.moon VALUES (7, 'S/2003 J18', 4, 350, 350);
INSERT INTO public.moon VALUES (8, 'Herse', 4, 400, 400);
INSERT INTO public.moon VALUES (9, 'Themisto', 5, 450, 450);
INSERT INTO public.moon VALUES (10, 'Hydra', 6, 500, 500);
INSERT INTO public.moon VALUES (11, 'Halimede', 7, 550, 550);
INSERT INTO public.moon VALUES (12, 'Hati', 8, 600, 600);
INSERT INTO public.moon VALUES (13, 'Naiad', 9, 650, 650);
INSERT INTO public.moon VALUES (14, 'Despina', 10, 700, 700);
INSERT INTO public.moon VALUES (15, 'Adrastea', 11, 750, 750);
INSERT INTO public.moon VALUES (16, 'Callisto', 12, 800, 800);
INSERT INTO public.moon VALUES (17, 'Puck', 11, 850, 850);
INSERT INTO public.moon VALUES (18, 'Paaliaq', 10, 900, 900);
INSERT INTO public.moon VALUES (19, 'S/2003 J4', 9, 950, 950);
INSERT INTO public.moon VALUES (20, 'Suttungr', 8, 1000, 1000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Handealea', 1, 100, 100);
INSERT INTO public.planet VALUES (3, 'Hobrarvis', 2, 200, 200);
INSERT INTO public.planet VALUES (4, 'Thoniuq', 2, 300, 300);
INSERT INTO public.planet VALUES (5, 'Nigantu', 3, 400, 400);
INSERT INTO public.planet VALUES (6, 'Xielia', 3, 500, 500);
INSERT INTO public.planet VALUES (7, 'Vaxinia', 4, 600, 600);
INSERT INTO public.planet VALUES (8, 'Ceyelia', 4, 700, 700);
INSERT INTO public.planet VALUES (9, 'Niri 3NR1', 5, 800, 800);
INSERT INTO public.planet VALUES (10, 'Drurn 5R83', 5, 900, 900);
INSERT INTO public.planet VALUES (11, 'Yalepra', 6, 1000, 1000);
INSERT INTO public.planet VALUES (12, 'Lagrorix', 6, 1100, 1100);
INSERT INTO public.planet VALUES (1, 'Cunzeunia', 1, 50, 50);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Prof', 2, 'bright', 'red');
INSERT INTO public.star VALUES (3, 'Uka', 3, 'less bright', 'blue');
INSERT INTO public.star VALUES (4, 'Flons', 4, 'dim', 'purple');
INSERT INTO public.star VALUES (5, 'Dreurs', 5, 'dark', 'orange');
INSERT INTO public.star VALUES (1, 'Sneer', 1, 'very bright', 'black');
INSERT INTO public.star VALUES (6, 'Aklogealt', 6, 'none', 'black');


--
-- Name: another_table_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.another_table_table_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: another_table another_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_pkey PRIMARY KEY (another_table_id);


--
-- Name: another_table another_table_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_table_id_key UNIQUE (another_table_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

