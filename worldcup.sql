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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    game_id integer NOT NULL,
    round character varying(255)
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 4, 2, 2018, 1, 'Final');
INSERT INTO public.games VALUES (3, 4, 2, 0, 2018, 2, 'Third Place');
INSERT INTO public.games VALUES (2, 4, 2, 1, 2018, 3, 'Semi-Final');
INSERT INTO public.games VALUES (1, 3, 1, 0, 2018, 4, 'Semi-Final');
INSERT INTO public.games VALUES (2, 10, 3, 2, 2018, 5, 'Quarter-Final');
INSERT INTO public.games VALUES (4, 12, 2, 0, 2018, 6, 'Quarter-Final');
INSERT INTO public.games VALUES (3, 14, 2, 1, 2018, 7, 'Quarter-Final');
INSERT INTO public.games VALUES (1, 16, 2, 0, 2018, 8, 'Quarter-Final');
INSERT INTO public.games VALUES (4, 18, 2, 1, 2018, 9, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 20, 1, 0, 2018, 10, 'Eighth-Final');
INSERT INTO public.games VALUES (3, 22, 3, 2, 2018, 11, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 24, 2, 0, 2018, 12, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 26, 2, 1, 2018, 13, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 28, 2, 1, 2018, 14, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 30, 2, 1, 2018, 15, 'Eighth-Final');
INSERT INTO public.games VALUES (1, 32, 4, 3, 2018, 16, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 32, 1, 0, 2014, 17, 'Final');
INSERT INTO public.games VALUES (35, 14, 3, 0, 2014, 18, 'Third Place');
INSERT INTO public.games VALUES (32, 35, 1, 0, 2014, 19, 'Semi-Final');
INSERT INTO public.games VALUES (33, 14, 7, 1, 2014, 20, 'Semi-Final');
INSERT INTO public.games VALUES (35, 42, 1, 0, 2014, 21, 'Quarter-Final');
INSERT INTO public.games VALUES (32, 3, 1, 0, 2014, 22, 'Quarter-Final');
INSERT INTO public.games VALUES (14, 18, 2, 1, 2014, 23, 'Quarter-Final');
INSERT INTO public.games VALUES (33, 1, 1, 0, 2014, 24, 'Quarter-Final');
INSERT INTO public.games VALUES (14, 50, 2, 1, 2014, 25, 'Eighth-Final');
INSERT INTO public.games VALUES (18, 16, 2, 0, 2014, 26, 'Eighth-Final');
INSERT INTO public.games VALUES (1, 54, 2, 0, 2014, 27, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 55, 2, 1, 2014, 28, 'Eighth-Final');
INSERT INTO public.games VALUES (35, 24, 2, 1, 2014, 29, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 56, 2, 1, 2014, 30, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 20, 1, 0, 2014, 31, 'Eighth-Final');
INSERT INTO public.games VALUES (3, 57, 2, 1, 2014, 32, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (10, 'Russia');
INSERT INTO public.teams VALUES (12, 'Sweden');
INSERT INTO public.teams VALUES (14, 'Brazil');
INSERT INTO public.teams VALUES (16, 'Uruguay');
INSERT INTO public.teams VALUES (18, 'Colombia');
INSERT INTO public.teams VALUES (20, 'Switzerland');
INSERT INTO public.teams VALUES (22, 'Japan');
INSERT INTO public.teams VALUES (24, 'Mexico');
INSERT INTO public.teams VALUES (26, 'Denmark');
INSERT INTO public.teams VALUES (28, 'Spain');
INSERT INTO public.teams VALUES (30, 'Portugal');
INSERT INTO public.teams VALUES (32, 'Argentina');
INSERT INTO public.teams VALUES (33, 'Germany');
INSERT INTO public.teams VALUES (35, 'Netherlands');
INSERT INTO public.teams VALUES (42, 'Costa Rica');
INSERT INTO public.teams VALUES (50, 'Chile');
INSERT INTO public.teams VALUES (54, 'Nigeria');
INSERT INTO public.teams VALUES (55, 'Algeria');
INSERT INTO public.teams VALUES (56, 'Greece');
INSERT INTO public.teams VALUES (57, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 185, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

