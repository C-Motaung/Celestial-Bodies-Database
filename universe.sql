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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_date date NOT NULL,
    distance_from_the_sun numeric
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30),
    size integer NOT NULL
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
    description text NOT NULL,
    distance_from_the_earth integer,
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
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_types character varying(20) NOT NULL
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
    age_in_millions_of_years integer NOT NULL,
    color character varying(20)
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', '1986-02-09', 35.1);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', '1995-07-23', 45.3);
INSERT INTO public.comet VALUES (3, 'Encke', '1786-01-17', 2.21);
INSERT INTO public.comet VALUES (4, 'Ikeya-Seki', '1965-09-18', 0.005);
INSERT INTO public.comet VALUES (5, 'Hyakutake', '1996-01-30', 0.23);
INSERT INTO public.comet VALUES (6, 'Neowise', '2020-03-27', 0.29);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Andromeda Galaxy is a spiral galaxy approximately 2.537 million light-years away from Earth.', 'Spiral', 220000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The Milky Way is the galaxy that contains our Solar System.', 'Spiral', 100000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years away from Earth.', 'Spiral', 50000);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Centaurus A is a peculiar galaxy located about 13 million light-years away in the constellation Centaurus.', 'Elliptical', 60000);
INSERT INTO public.galaxy VALUES (5, 'M87', 'M87 is a supergiant elliptical galaxy in the constellation Virgo.', 'Elliptical', 120000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'The Sombrero Galaxy is an unbarred spiral galaxy located in the constellation Virgo.', 'Spiral', 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth only natural satellite. It orbits at an average distance of 384,400 km (238,900 mi), about 30 times the diameter of Earth.', 384400, 3);
INSERT INTO public.moon VALUES (2, 'Selene', 'The Moon is the brightest celestial object in Earth night sky. This is mainly due to its large angular diameter, while the reflectance of the lunar surface is comparable to that of asphalt. The apparent size is nearly the same as that of the Sun, allowing it to cover the Sun almost completely during a total solar eclipse.', 384400, 3);
INSERT INTO public.moon VALUES (3, ' Cynthia', 'The Moon is Earth only natural satellite. It goes around the Earth at a distance of about 239,000 miles (385,000 kilometers). The Earth and Moon are tidally locked. Their rotations are so in sync we only see one side of the Moon.', 239000, 3);
INSERT INTO public.moon VALUES (4, 'Phoebe', 'Phoebe is a moon of Saturn. It is irregularly shaped and has a retrograde orbit, meaning it orbits Saturn in the opposite direction of most other moons. Phoebe is thought to be a captured object from the Kuiper Belt.', 12952000, 6);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Ganymede is the largest moon in the solar system and orbits Jupiter. It has a subsurface ocean beneath its icy crust and is believed to have more water than all of Earth oceans combined.', 1070400, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 'Europa is another moon of Jupiter. It is covered in a layer of ice, and scientists believe there may be a subsurface ocean beneath it. Europa is a target for future exploration missions.', 670900, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 'Titan is Saturn largest moon and has a thick atmosphere. It is the only moon known to have a significant atmosphere and features lakes and rivers of liquid methane and ethane on its surface.', 1221870, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Enceladus is a small moon of Saturn. It is geologically active, with water vapor erupting from its south pole. Scientists believe there may be a subsurface ocean beneath its icy crust.', 237948, 6);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Callisto is another moon of Jupiter. It has a heavily cratered surface and is thought to have a subsurface ocean. Callisto is one of the most heavily cratered bodies in the solar system.', 1882700, 5);
INSERT INTO public.moon VALUES (10, 'Io', 'Io is the innermost moon of Jupiter and is known for its intense volcanic activity. It has over 400 active volcanoes and is the most geologically active body in the solar system.', 421700, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'Triton is Neptune largest moon and has a retrograde orbit. It is thought to be a captured Kuiper Belt object. Triton has geysers that erupt nitrogen gas from beneath its icy surface.', 354759, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'Charon is Pluto largest moon and is tidally locked with Pluto. It has a reddish color and features a large chasm called Serenity Chasma.', 19571, 9);
INSERT INTO public.moon VALUES (13, 'Phobos', 'Phobos is one of Mars two moons. It is irregularly shaped and orbits very close to Mars. Phobos is gradually spiraling inward and is expected to eventually break apart due to tidal forces.', 9377, 4);
INSERT INTO public.moon VALUES (14, 'Deimos', 'Deimos is Mars other moon. It is smaller and farther from Mars than Phobos. Deimos has a heavily cratered surface and is thought to be a captured asteroid.', 23460, 4);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Rhea is a moon of Saturn. It has a heavily cratered surface and a tenuous atmosphere. Rhea is the second-largest moon of Saturn.', 527040, 6);
INSERT INTO public.moon VALUES (16, 'Iapetus', 'Iapetus is another moon of Saturn. It has a striking two-tone coloration, with one hemisphere being much darker than the other. Iapetus also has a prominent equatorial ridge.', 3561300, 6);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Oberon is one of Uranus moons. It has a heavily cratered surface and is covered in ice. Oberon is the outermost of Uranus five major moons.', 583520, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Miranda is another moon of Uranus. It has a chaotic and fractured surface, with large cliffs and valleys. Scientists believe that it may have experienced significant geological upheaval in the past. Miranda is one of the smallest and most intriguing moons in our solar system', 384400, 7);
INSERT INTO public.moon VALUES (19, 'Ariel', 'Ariel is one of Uranus’ five major moons. It has a relatively smooth surface with extensive grooves and valleys. These features suggest past tectonic activity. Ariel is also known for its bright impact craters', 384400, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', 'Umbriel is another moon of Uranus. It has a heavily cratered surface, indicating its ancient age. The largest impact basin on Umbriel is called Wunda, and it is surrounded by a dark, heavily cratered terrain', 384400, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 2, 'Terrestrial');
INSERT INTO public.planet VALUES (3, ' Earth', true, true, 3, 'Terrestrial');
INSERT INTO public.planet VALUES (4, ' Mars', false, true, 4, 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 5, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', false, false, 6, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', false, false, 2, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 4, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 6, 'Dwarf Planet');
INSERT INTO public.planet VALUES (10, 'Kepler-186f', true, true, 1, 'Exoplanet');
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', true, true, 1, 'Exoplanet');
INSERT INTO public.planet VALUES (12, ' HD 209458 b', false, true, 2, 'Exoplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 200, 'Blue');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2, 800, 'Red');
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 3, 4000, 'Red');
INSERT INTO public.star VALUES (4, 'Vega', 4, 600, 'White');
INSERT INTO public.star VALUES (5, 'Antares', 5, 1200, 'Red');
INSERT INTO public.star VALUES (6, 'Polaris', 6, 500, 'Yellow');


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

