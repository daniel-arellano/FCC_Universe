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
-- Name: final_breakdown; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.final_breakdown (
    final_breakdown_id integer NOT NULL,
    name character varying(32) NOT NULL,
    rank integer
);


ALTER TABLE public.final_breakdown OWNER TO freecodecamp;

--
-- Name: final_breakdown_group_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.final_breakdown_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.final_breakdown_group_id_seq OWNER TO freecodecamp;

--
-- Name: final_breakdown_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.final_breakdown_group_id_seq OWNED BY public.final_breakdown.final_breakdown_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(32),
    galaxy_id integer NOT NULL,
    star_tally integer NOT NULL,
    order_by_size character varying(32),
    has_aliens boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(32),
    moon_id integer NOT NULL,
    cheese_type text,
    phase character varying(32) NOT NULL,
    moon_code integer,
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
    name character varying(32),
    planet_id integer NOT NULL,
    habitable boolean,
    size numeric NOT NULL,
    star_id integer,
    favorite_food text NOT NULL
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
    name character varying(32),
    star_id integer NOT NULL,
    color text,
    galaxy_id integer,
    points_tally integer,
    twinkles boolean NOT NULL
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
-- Name: final_breakdown final_breakdown_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_breakdown ALTER COLUMN final_breakdown_id SET DEFAULT nextval('public.final_breakdown_group_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: final_breakdown; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.final_breakdown VALUES (1, 'Doot', 1);
INSERT INTO public.final_breakdown VALUES (2, 'Doot Doot', 2);
INSERT INTO public.final_breakdown VALUES (3, 'Garden', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Star Wars', 2, 2, 'smallest', true);
INSERT INTO public.galaxy VALUES ('Quest', 6, 1, 'smaller', false);
INSERT INTO public.galaxy VALUES ('Marvel Cinematic', 3, 1, 'small', true);
INSERT INTO public.galaxy VALUES ('Super Mario', 1, 1, 'big', true);
INSERT INTO public.galaxy VALUES ('My Own', 4, 1, 'bigger', false);
INSERT INTO public.galaxy VALUES ('X', 5, 0, 'BIGGEST', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Holly', 9, 'Gorgonzola', 'Last', 8, 6);
INSERT INTO public.moon VALUES ('Gabby', 8, 'Danish Blue', 'Full', 7, 7);
INSERT INTO public.moon VALUES ('Quizzy', 18, 'Cream Cheese', 'First', 17, 1);
INSERT INTO public.moon VALUES ('Reta', 19, 'Appenzeller', 'New', 18, 1);
INSERT INTO public.moon VALUES ('Shawna', 20, 'Raclette', 'Full', 19, 1);
INSERT INTO public.moon VALUES ('Tawny', 21, 'Roquefort', 'Last', 20, 1);
INSERT INTO public.moon VALUES ('Eevee', 5, 'Feta', 'New', 5, 8);
INSERT INTO public.moon VALUES ('Fabby', 6, 'Cheddar', 'First', 6, 8);
INSERT INTO public.moon VALUES ('Debby', 4, 'Neufchatel', 'Last', 4, 9);
INSERT INTO public.moon VALUES ('Betty', 2, 'Camembert', 'First', 2, 10);
INSERT INTO public.moon VALUES ('Cathy', 3, 'Ricotta', 'Full', 3, 10);
INSERT INTO public.moon VALUES ('Abby', 1, 'Brie', 'New', 1, 11);
INSERT INTO public.moon VALUES ('Octi', 16, 'Grana Padano', 'Full', 15, 2);
INSERT INTO public.moon VALUES ('Polly', 17, 'Stilton', 'Last', 16, 2);
INSERT INTO public.moon VALUES ('Nelly', 15, 'Queso Blanco', 'Last', 14, 3);
INSERT INTO public.moon VALUES ('Kelly', 12, 'Parmesan', 'New', 11, 4);
INSERT INTO public.moon VALUES ('Lizzy', 13, 'Cottage Cheese', 'First', 12, 4);
INSERT INTO public.moon VALUES ('Mandy', 14, 'Asagio', 'Full', 13, 4);
INSERT INTO public.moon VALUES ('Izzy', 10, 'Quark', 'Full', 9, 5);
INSERT INTO public.moon VALUES ('Jenny', 11, 'Mozzarella', 'Last', 10, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 100000000, 1, 'Pizza');
INSERT INTO public.planet VALUES ('Fitness', 2, true, 5000, 5, 'Tofu');
INSERT INTO public.planet VALUES ('Mars', 3, false, 600000, 5, 'Candy Barsss');
INSERT INTO public.planet VALUES ('Pizza', 4, true, 12, 6, 'Pineapple');
INSERT INTO public.planet VALUES ('Pluto', 5, false, 549354839, 6, 'Dog Food');
INSERT INTO public.planet VALUES ('XXX', 6, true, 34000000, 3, 'Bran');
INSERT INTO public.planet VALUES ('Musical', 8, false, 555000555, 3, 'Popcorn');
INSERT INTO public.planet VALUES ('Jupiter', 9, false, 99999987, 3, 'Water');
INSERT INTO public.planet VALUES ('Snake', 10, true, 5858585858, 4, 'Other Sneks');
INSERT INTO public.planet VALUES ('Seltzer', 11, false, 1600, 2, 'Coke');
INSERT INTO public.planet VALUES ('Red Bull', 12, true, 8080808080, 2, 'Red Bull');
INSERT INTO public.planet VALUES ('Venus', 7, true, 2222000, 3, 'Sandwiches');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Daniel', 1, 'blue', 4, 12, true);
INSERT INTO public.star VALUES ('Kist', 5, 'red', 6, 5, false);
INSERT INTO public.star VALUES ('Search', 6, 'yellow', 2, 10, false);
INSERT INTO public.star VALUES ('Matthew', 4, 'green', 2, 2, false);
INSERT INTO public.star VALUES ('Boy', 2, 'blue', 3, 7, true);
INSERT INTO public.star VALUES ('Maria', 3, 'green', 1, 3, true);


--
-- Name: final_breakdown_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.final_breakdown_group_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: planet favorite_food; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT favorite_food UNIQUE (favorite_food);


--
-- Name: final_breakdown final_breakdown_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_breakdown
    ADD CONSTRAINT final_breakdown_pkey PRIMARY KEY (final_breakdown_id);


--
-- Name: final_breakdown final_breakdown_rank_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_breakdown
    ADD CONSTRAINT final_breakdown_rank_key UNIQUE (rank);


--
-- Name: galaxy galaxy_order_by_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_order_by_size_key UNIQUE (order_by_size);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_cheese_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_cheese_type_key UNIQUE (cheese_type);


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
-- Name: star points_tally; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT points_tally UNIQUE (points_tally);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

