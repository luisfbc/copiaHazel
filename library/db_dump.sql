Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO luis_barron;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO luis_barron;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO luis_barron;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO luis_barron;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO luis_barron;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO luis_barron;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO luis_barron;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO luis_barron;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO luis_barron;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO luis_barron;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO luis_barron;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO luis_barron;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO luis_barron;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO luis_barron;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    language_id bigint
);


ALTER TABLE public.books_book OWNER TO luis_barron;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO luis_barron;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO luis_barron;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO luis_barron;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_booksgenre; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_booksgenre (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_booksgenre OWNER TO luis_barron;

--
-- Name: books_booksgenre_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_booksgenre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksgenre_id_seq OWNER TO luis_barron;

--
-- Name: books_booksgenre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_booksgenre_id_seq OWNED BY public.books_booksgenre.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    description character varying(512) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO luis_barron;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO luis_barron;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_language; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.books_language (
    id bigint NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.books_language OWNER TO luis_barron;

--
-- Name: books_language_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.books_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_language_id_seq OWNER TO luis_barron;

--
-- Name: books_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.books_language_id_seq OWNED BY public.books_language.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO luis_barron;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO luis_barron;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO luis_barron;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO luis_barron;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO luis_barron;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO luis_barron;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO luis_barron;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO luis_barron;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO luis_barron;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: luis_barron
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO luis_barron;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_barron
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO luis_barron;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_barron
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_booksgenre id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksgenre ALTER COLUMN id SET DEFAULT nextval('public.books_booksgenre_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_language id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_language ALTER COLUMN id SET DEFAULT nextval('public.books_language_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add author	10	add_author
38	Can change author	10	change_author
39	Can delete author	10	delete_author
40	Can view author	10	view_author
41	Can add book	11	add_book
42	Can change book	11	change_book
43	Can delete book	11	delete_book
44	Can view book	11	view_book
45	Can add books authors	12	add_booksauthors
46	Can change books authors	12	change_booksauthors
47	Can delete books authors	12	delete_booksauthors
48	Can view books authors	12	view_booksauthors
49	Can add genre	13	add_genre
50	Can change genre	13	change_genre
51	Can delete genre	13	delete_genre
52	Can view genre	13	view_genre
53	Can add language	14	add_language
54	Can change language	14	change_language
55	Can delete language	14	delete_language
56	Can view language	14	view_language
57	Can add books genre	15	add_booksgenre
58	Can change books genre	15	change_booksgenre
59	Can delete books genre	15	delete_booksgenre
60	Can view books genre	15	view_booksgenre
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$VOpAmlWFPjdex3AppD5Ynd$FncpJ1nPRB85vzlwxfkxfDZk4k0My6XGGuGfqtDvkm0=	\N	f	newUserLuis			newUserLuis@newUserLuis.com	f	t	2022-04-12 20:48:21.900339+00
2	pbkdf2_sha256$320000$qbrbOA63wbV95SCN5EOnVS$nXMV++ItLtNCcLbYK6EGOIbtGj29AGTQwTeInO06N2A=	\N	f	luis_barron			luis@barron.com	f	t	2022-04-12 21:02:41.809507+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at, language_id) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_booksgenre; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_booksgenre (id, book_id, genre_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_genre (id, name, description) FROM stdin;
\.


--
-- Data for Name: books_language; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.books_language (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	users	user
10	books	author
11	books	book
12	books	booksauthors
13	books	genre
14	books	language
15	books	booksgenre
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:23:52.265509+00
2	auth	0001_initial	2022-04-12 20:23:52.331478+00
3	admin	0001_initial	2022-04-12 20:23:52.349204+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:23:52.354796+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:23:52.360446+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:23:52.37265+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:23:52.378506+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:23:52.384508+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:23:52.390126+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:23:52.396709+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:23:52.398395+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:23:52.404071+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:23:52.414585+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:23:52.420544+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:23:52.42752+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:23:52.432814+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:23:52.43846+00
18	books	0001_initial	2022-04-12 20:23:52.459767+00
19	books	0002_genre_language_booksgenre	2022-04-12 20:23:52.482665+00
20	books	0003_book_genres_book_language	2022-04-12 20:23:52.493714+00
21	sessions	0001_initial	2022-04-12 20:23:52.505061+00
22	token_blacklist	0001_initial	2022-04-12 20:23:52.537436+00
23	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:23:52.544604+00
24	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:23:52.55469+00
25	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:23:52.565843+00
26	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:23:52.573037+00
27	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:23:52.581306+00
28	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:23:52.600223+00
29	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:23:52.638631+00
30	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:23:52.650747+00
31	token_blacklist	0011_linearizes_history	2022-04-12 20:23:52.652635+00
32	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:23:52.660481+00
33	users	0001_initial	2022-04-12 20:23:52.671806+00
34	users	0002_delete_user	2022-04-12 20:38:42.317398+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:33:17.659495+00	14
2	2022-04-12 21:33:27.848737+00	16
3	2022-04-12 21:37:21.144392+00	17
4	2022-04-12 21:39:44.222431+00	18
5	2022-04-12 21:51:42.820993+00	20
6	2022-04-12 21:51:59.017745+00	21
7	2022-04-12 21:52:32.70426+00	22
8	2022-04-12 21:52:38.724459+00	23
9	2022-04-12 21:53:13.567091+00	27
10	2022-04-12 21:57:17.717397+00	28
11	2022-04-12 21:58:30.432701+00	29
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: luis_barron
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDA0OSwiaWF0IjoxNjQ5Nzk3NjQ5LCJqdGkiOiJjYjE0OGYwMTViMDc0MDMwOGU5NDRhZGE2MzAxZWQwZCIsInVzZXJfaWQiOjJ9.MPYY-uyxajajqXSm856jX6E1Cc6WjQMOK4CzVCDeXi0	2022-04-12 21:07:29.751015+00	2022-04-13 21:07:29+00	2	cb148f015b0740308e944ada6301ed0d
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDEwMCwiaWF0IjoxNjQ5Nzk3NzAwLCJqdGkiOiI4MDVhNjQxZjM0MWM0YzRiODk5OGZhMjdiZGQ4YjJkOSIsInVzZXJfaWQiOjJ9.8G5QrJhtC942SWyFOv_qcrLgKEWFvnxvVOT182EI0jw	2022-04-12 21:08:20.211929+00	2022-04-13 21:08:20+00	2	805a641f341c4c4b8998fa27bdd8b2d9
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDE5MCwiaWF0IjoxNjQ5Nzk3NzkwLCJqdGkiOiI3ZTkyOGQxNGZmYzQ0YmMxODZiMGVkYzQ1ODc5YjgxZSIsInVzZXJfaWQiOjJ9._IauoGJQuzkap0_TleeNEH_PyXoFraObvzTq37txPZs	2022-04-12 21:09:50.9912+00	2022-04-13 21:09:50+00	2	7e928d14ffc44bc186b0edc45879b81e
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDIxOSwiaWF0IjoxNjQ5Nzk3ODE5LCJqdGkiOiI3ZTQ1OTRiODYyMmE0ODNjOTkyMjJlNGMzM2JlZTdmZSIsInVzZXJfaWQiOjJ9.BxO3p6WmLwt94gPiMzwH-O9CojAHdOo9mI4ArjGZsrI	2022-04-12 21:10:19.284129+00	2022-04-13 21:10:19+00	2	7e4594b8622a483c99222e4c33bee7fe
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDI2MSwiaWF0IjoxNjQ5Nzk3ODYxLCJqdGkiOiI4ZWM0YWRiM2IxOTY0MmRhOGZiNGI2NTk2NDkwN2Q2YSIsInVzZXJfaWQiOjJ9.Qlbw9zkRItf1j78WUhifXx3dH7bTjQb5O5roJg5uUJQ	2022-04-12 21:11:01.659578+00	2022-04-13 21:11:01+00	2	8ec4adb3b19642da8fb4b65964907d6a
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDI2MywiaWF0IjoxNjQ5Nzk3ODYzLCJqdGkiOiJlM2MxMjY5N2JkZjQ0ODJlOGI4ZDJkNzZmM2FkMzg0YSIsInVzZXJfaWQiOjJ9.Nqaur3U6EABZ_IjQH6vH1cF5p2ca8WnQfmw9pM6Ho2s	2022-04-12 21:11:03.473461+00	2022-04-13 21:11:03+00	2	e3c12697bdf4482e8b8d2d76f3ad384a
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDk0NSwiaWF0IjoxNjQ5Nzk4NTQ1LCJqdGkiOiIyMzA1YTY5ZTQyZjg0NDM2OWRkYmQxNDIyOWJmMzU4YiIsInVzZXJfaWQiOjJ9.M3iWesnE20hmByprC_NiZSJJLwZPeGn0rAuhMEfTFoY	2022-04-12 21:22:25.236527+00	2022-04-13 21:22:25+00	2	2305a69e42f844369ddbd14229bf358b
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDk2NiwiaWF0IjoxNjQ5Nzk4NTY2LCJqdGkiOiJhZGE1Yjg1MWQxMmQ0OTEzYmE2ODBmOTY2ZDM1YWM1YSIsInVzZXJfaWQiOjJ9.80nrRZVJ_NpH6L9pBAraMnH1k5SyUHDxGCgxXP3cLq8	2022-04-12 21:22:46.522881+00	2022-04-13 21:22:46+00	2	ada5b851d12d4913ba680f966d35ac5a
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE2OCwiaWF0IjoxNjQ5Nzk4NzY4LCJqdGkiOiIxNzY3OTllYTg4NTQ0ZGY5YmU2YjYwMjhmNjhkZTZmYyIsInVzZXJfaWQiOjJ9.fQ8_Jl66iEgFRwSvdXXWnT65arCwBbrYImjEMXnIm7k	2022-04-12 21:26:08.86357+00	2022-04-13 21:26:08+00	2	176799ea88544df9be6b6028f68de6fc
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE3MiwiaWF0IjoxNjQ5Nzk4NzcyLCJqdGkiOiJlMGIwMWZhZGU2MzQ0MTZiOTY2YmE0YmYzZmFlYzJjZCIsInVzZXJfaWQiOjJ9.B1LDJJeo3FwxZDX6oi8zFj6LtDrEIVjICWVDFOtDqPM	2022-04-12 21:26:12.13629+00	2022-04-13 21:26:12+00	2	e0b01fade634416b966ba4bf3faec2cd
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE4MCwiaWF0IjoxNjQ5Nzk4NzgwLCJqdGkiOiI3YTU5ODllYWJlYTA0NWI3ODFkODlkMjIwOTQ1ODVjMiIsInVzZXJfaWQiOjJ9.Q50AkIombRJwlKeJhovy_NICFVs62tl08O2yxYjTaXg	2022-04-12 21:26:20.849723+00	2022-04-13 21:26:20+00	2	7a5989eabea045b781d89d22094585c2
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE4MiwiaWF0IjoxNjQ5Nzk4NzgyLCJqdGkiOiIyYzg2MDA5MWMwNmI0ZGE0YTU3NTdjM2E3NWQ4OTE4ZSIsInVzZXJfaWQiOjJ9.MVzztbI4TDpJIU3bOodVdh889tleFHW5TV09qs8ES-w	2022-04-12 21:26:22.167396+00	2022-04-13 21:26:22+00	2	2c860091c06b4da4a5757c3a75d8918e
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTMzNSwiaWF0IjoxNjQ5Nzk4OTM1LCJqdGkiOiJhODc4NGNhMTlmODk0YTg0OGVhMDIxY2RmZDE2M2RlNiIsInVzZXJfaWQiOjJ9.6M94uAB8QHxYsnoIGcj3EEE3thcE3S4HKcLnlqnp-qw	2022-04-12 21:28:55.933643+00	2022-04-13 21:28:55+00	2	a8784ca19f894a848ea021cdfd163de6
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTM2OSwiaWF0IjoxNjQ5Nzk4OTY5LCJqdGkiOiJjMmU3OWE1ZTJiMjA0YmM2OWI1N2M1Yzg0ZDk0NjgwZiIsInVzZXJfaWQiOjJ9.1Tg37aweazHA1pNAt9oqz18fArVFZ1oYM7ufHc-E6Sc	2022-04-12 21:29:29.358818+00	2022-04-13 21:29:29+00	2	c2e79a5e2b204bc69b57c5c84d94680f
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTQ2MCwiaWF0IjoxNjQ5Nzk5MDYwLCJqdGkiOiJmN2UyMzFkYjBhNTc0ZGFlYjVhODc5NDQ0ODM3ZjRkOCIsInVzZXJfaWQiOjJ9.p9Q4YELgVgt7EYdSNwR9hv8IYwJNPombtZ3XfKJfQ9k	2022-04-12 21:31:00.866219+00	2022-04-13 21:31:00+00	2	f7e231db0a574daeb5a879444837f4d8
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTYwNiwiaWF0IjoxNjQ5Nzk5MjA2LCJqdGkiOiIxMTJjYTA5MTQ4N2E0NGIyODJjYzk5ZGZlNmViODUwOSIsInVzZXJfaWQiOjJ9.Cb-k-krN_-_LkgNxuLEs1f4bXtph2WzbeL9bD6iOaN8	2022-04-12 21:33:26.954667+00	2022-04-13 21:33:26+00	2	112ca091487a44b282cc99dfe6eb8509
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTcyNywiaWF0IjoxNjQ5Nzk5MzI3LCJqdGkiOiI5ZjkxMTAxYjcyYjk0NzlhOWE3OTVhYTRjYjY4NDZhNCIsInVzZXJfaWQiOjJ9.virMlOGwM653Km9EAicoWI-YPEf1y34tFog2sMZCEls	2022-04-12 21:35:27.443707+00	2022-04-13 21:35:27+00	2	9f91101b72b9479a9a795aa4cb6846a4
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTk1MSwiaWF0IjoxNjQ5Nzk5NTUxLCJqdGkiOiJiMWJhODEyOWJhMzI0NjRlYTdmNmRiMTZhY2YyYzUxYSIsInVzZXJfaWQiOjJ9.jow8Wp1zgP0HRmLCAQ7oPk_4PhhDDwNjHxSeHx0IsX8	2022-04-12 21:39:11.449946+00	2022-04-13 21:39:11+00	2	b1ba8129ba32464ea7f6db16acf2c51a
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY5MiwiaWF0IjoxNjQ5ODAwMjkyLCJqdGkiOiJiMjM1NzU4NmY5MzI0N2Q0YTZmMDY5ZWM0YjMwN2ZlNCIsInVzZXJfaWQiOjJ9.6xDs4QnE8ASRl8c2TgP3cTSVId4-NIuTGBQoDE0O7M4	2022-04-12 21:51:32.30085+00	2022-04-13 21:51:32+00	2	b2357586f93247d4a6f069ec4b307fe4
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjcwMSwiaWF0IjoxNjQ5ODAwMzAxLCJqdGkiOiJkZjAxMDM5MDkzYzQ0MGRhODc5Mzk1MjEyODU4ZDA3YiIsInVzZXJfaWQiOjJ9.Hevq55YtNVNwzvbbuOibmK9aTPH7MGaNzLQ8bFVgokA	2022-04-12 21:51:41.628095+00	2022-04-13 21:51:41+00	2	df01039093c440da879395212858d07b
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjcxNywiaWF0IjoxNjQ5ODAwMzE3LCJqdGkiOiI2YmUyMjZmM2JiNDU0ZmVmYjIyYjYwMTk1OTU3OTY4ZSIsInVzZXJfaWQiOjJ9.HWPYn1HigWiDiZyWsq_DsPx3g8-dreFwi2dlBkgiXXU	2022-04-12 21:51:57.778907+00	2022-04-13 21:51:57+00	2	6be226f3bb454fefb22b60195957968e
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjczOSwiaWF0IjoxNjQ5ODAwMzM5LCJqdGkiOiI5YmNhNzI2MjY0NWQ0MDQzYmM2MGRiZWEwNDA3ZTkzMCIsInVzZXJfaWQiOjJ9.rbsARM9OESncN_-9liPzAZwNg5n4hqO6DY0R-Xlwqus	2022-04-12 21:52:19.870461+00	2022-04-13 21:52:19+00	2	9bca7262645d4043bc60dbea0407e930
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc1NiwiaWF0IjoxNjQ5ODAwMzU2LCJqdGkiOiJmMWI0NGI4ZDAzNzY0N2JkOTQ1MTAzMWE4YzkwYmE2NiIsInVzZXJfaWQiOjJ9.SG0SaWmksAcmHYIVS0VnzUuXgeMwN8rvHL1BjSbKrFs	2022-04-12 21:52:36.867925+00	2022-04-13 21:52:36+00	2	f1b44b8d037647bd9451031a8c90ba66
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc3NCwiaWF0IjoxNjQ5ODAwMzc0LCJqdGkiOiJkZDJmNjgxZGEzZjQ0MmQ1OGNjZWQxYmQwMDYwODhhMiIsInVzZXJfaWQiOjJ9.a2nWikNnlYwOFBOYg3f3sW-Hz_v0LqpsAQi7qX0tdRA	2022-04-12 21:52:54.063604+00	2022-04-13 21:52:54+00	2	dd2f681da3f442d58cced1bd006088a2
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc3NSwiaWF0IjoxNjQ5ODAwMzc1LCJqdGkiOiI5ZDkyMTQwOTU1Y2I0MzgzOGIyZDQ0YWE4ODVkYjQ3OCIsInVzZXJfaWQiOjJ9.Xo2AVIDLCBe0My2_lZMOcMEb-w0MfeBg8zACERjcNZE	2022-04-12 21:52:55.468925+00	2022-04-13 21:52:55+00	2	9d92140955cb43838b2d44aa885db478
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc4OSwiaWF0IjoxNjQ5ODAwMzg5LCJqdGkiOiIwYTU3NWJlY2M4OTc0OTY3YTBjYWYwZDcxODJjNmM2MyIsInVzZXJfaWQiOjJ9.8wOQKV8IjPS3j8_tIOCk8b-0X03nOhY3fOd2Bqcepgg	2022-04-12 21:53:09.365732+00	2022-04-13 21:53:09+00	2	0a575becc8974967a0caf0d7182c6c63
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc5MCwiaWF0IjoxNjQ5ODAwMzkwLCJqdGkiOiJkOWViZjQ3YmNhNDk0NTExODE0ZDI1YzExY2Q5NTY3OSIsInVzZXJfaWQiOjJ9.IraGSX29byxmVPdOj752DMOuQ1sXJsRU-KZGMbNv1lw	2022-04-12 21:53:10.890885+00	2022-04-13 21:53:10+00	2	d9ebf47bca494511814d25c11cd95679
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzAzNiwiaWF0IjoxNjQ5ODAwNjM2LCJqdGkiOiJhMDZlMDExYmI3MzI0ODE0OTI5M2U3YjZlZjMyMzI4NSIsInVzZXJfaWQiOjJ9.uV6N8iobtRDghgF0a7v3NLL3jw9NqsIbEbTDYPWL1tU	2022-04-12 21:57:16.245833+00	2022-04-13 21:57:16+00	2	a06e011bb73248149293e7b6ef323285
29	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzEwOSwiaWF0IjoxNjQ5ODAwNzA5LCJqdGkiOiJiYzZkYzhkMjBlODE0ZWNlYTZjOWM0ZjUyNmNhYzBjMiIsInVzZXJfaWQiOjJ9.ZOeBHvJb0D91pDJvzeXfq3DR_lf6btRF6XSrPPWrclI	2022-04-12 21:58:29.321267+00	2022-04-13 21:58:29+00	2	bc6dc8d20e814ecea6c9c4f526cac0c2
30	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2MywiaWF0IjoxNjQ5ODAwODYzLCJqdGkiOiJjNDYwNjYxNzNlMjI0ZTkxOGQ4Mjc4YzRhM2MwYzJlMiIsInVzZXJfaWQiOjJ9.I6qPue27hg1b9dAzH5KvNu1MP6Ra8ji5RR76DC_JrhQ	2022-04-12 22:01:03.657001+00	2022-04-13 22:01:03+00	2	c46066173e224e918d8278c4a3c0c2e2
31	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2OCwiaWF0IjoxNjQ5ODAwODY4LCJqdGkiOiI3MmE5M2FjMDA3NmM0ZjA1YWYxYjk4OGMxN2FjYmQyNSIsInVzZXJfaWQiOjJ9.k1ANLgYj1AXOIwHIn6uLSmBF0nI3BJyQ-Ib-_XlOC6M	2022-04-12 22:01:08.076144+00	2022-04-13 22:01:08+00	2	72a93ac0076c4f05af1b988c17acbd25
32	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI3NCwiaWF0IjoxNjQ5ODAwODc0LCJqdGkiOiI1NjhjY2MzNzQxNWI0MWZmYTI3YmFmYzQ4MjI1NzNjYSIsInVzZXJfaWQiOjJ9.pl1R_I8Yx-23CXhkrbEcrolniKdHGR1q7ULLJot_f6E	2022-04-12 22:01:14.899718+00	2022-04-13 22:01:14+00	2	568ccc37415b41ffa27bafc4822573ca
33	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzMzMSwiaWF0IjoxNjQ5ODAwOTMxLCJqdGkiOiI5MDk4ZDY0NGE5NTI0M2Y3YTUwMjhhY2ExMmRiNmM3ZiIsInVzZXJfaWQiOjJ9.mb9U67iWLLfzhbPBclJih_WaNtzLBRTd-R-0cyrDE0A	2022-04-12 22:02:11.292518+00	2022-04-13 22:02:11+00	2	9098d644a95243f7a5028aca12db6c7f
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_booksgenre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_booksgenre_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.books_language_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 11, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_barron
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 33, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_booksgenre books_booksgenre_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksgenre
    ADD CONSTRAINT books_booksgenre_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_language books_language_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_language
    ADD CONSTRAINT books_language_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_book_language_id_b9f55b1a; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX books_book_language_id_b9f55b1a ON public.books_book USING btree (language_id);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_booksgenre_book_id_75da8238; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX books_booksgenre_book_id_75da8238 ON public.books_booksgenre USING btree (book_id);


--
-- Name: books_booksgenre_genre_id_37252122; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX books_booksgenre_genre_id_37252122 ON public.books_booksgenre USING btree (genre_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: luis_barron
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_language_id_b9f55b1a_fk_books_language_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_language_id_b9f55b1a_fk_books_language_id FOREIGN KEY (language_id) REFERENCES public.books_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenre books_booksgenre_book_id_75da8238_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksgenre
    ADD CONSTRAINT books_booksgenre_book_id_75da8238_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenre books_booksgenre_genre_id_37252122_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.books_booksgenre
    ADD CONSTRAINT books_booksgenre_genre_id_37252122_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: luis_barron
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

