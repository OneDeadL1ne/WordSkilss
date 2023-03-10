--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.20
-- Dumped by pg_dump version 9.6.20

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employee" (
    "IdEmployee" integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Patronymic" character varying(100) NOT NULL
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
-- Name: Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Group" (
    "IdGroup" integer NOT NULL,
    "NameGroup" character varying(100) NOT NULL,
    "IdUser" integer NOT NULL
);


ALTER TABLE public."Group" OWNER TO postgres;

--
-- Name: Pass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pass" (
    "IdPass" integer NOT NULL,
    "StartDate" date NOT NULL,
    "EndStart" date,
    "IdGroup" integer
);


ALTER TABLE public."Pass" OWNER TO postgres;

--
-- Name: PassVisitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PassVisitor" (
    "IdPass" integer,
    "IdVisitor" integer
);


ALTER TABLE public."PassVisitor" OWNER TO postgres;

--
-- Name: StatusPass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StatusPass" (
    "IdStatusPass" integer NOT NULL,
    "IdPass" integer NOT NULL,
    "IdSubdivizion" integer NOT NULL,
    "IdTypeStatus" integer NOT NULL,
    "Description" character varying(100) NOT NULL
);


ALTER TABLE public."StatusPass" OWNER TO postgres;

--
-- Name: Subdivizion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subdivizion" (
    "IdSubdivizion" integer NOT NULL,
    "IdEmployee" integer,
    subdivizion character varying(100)
);


ALTER TABLE public."Subdivizion" OWNER TO postgres;

--
-- Name: TypeStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TypeStatus" (
    "IdTypeStatus" integer NOT NULL,
    "TypeStatusNAme" character varying(100) NOT NULL
);


ALTER TABLE public."TypeStatus" OWNER TO postgres;

--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "IdUser" integer NOT NULL,
    "Login" character varying(100) NOT NULL,
    "Password" character varying(100) NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: Visitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Visitor" (
    "IdVisitor" integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Patronymic" character varying(100) NOT NULL,
    "Phone" character varying(20),
    "Email" character varying(100),
    "BirthDate" date NOT NULL,
    "Descriptoin" character varying(200),
    "Organization" character varying(100),
    "PassportSerial" character(4),
    "PassportNum" character(6),
    "IdUser" integer
);


ALTER TABLE public."Visitor" OWNER TO postgres;

--
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" ("IdEmployee", "FirstName", "LastName", "Patronymic") FROM stdin;
1	Фомичева	Авдотья	Трофимовна
2	Гаврилова	Римма	Ефимовна
3	Носкова	Наталия	Прохоровна
4	Архипов	Тимофей	Васильевич
5	Орехова	Вероника	Артемовна
6	Савельев	Павел	Степанович
7	Чернов	Всеволод	Наумович
\.


--
-- Data for Name: Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Group" ("IdGroup", "NameGroup", "IdUser") FROM stdin;
\.


--
-- Data for Name: Pass; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pass" ("IdPass", "StartDate", "EndStart", "IdGroup") FROM stdin;
1	2023-04-24	2023-04-24	\N
2	2023-04-24	2023-04-24	\N
3	2023-04-24	2023-04-24	\N
4	2023-04-25	2023-04-25	\N
5	2023-04-25	2023-04-25	\N
6	2023-04-25	2023-04-25	\N
7	2023-04-26	2023-04-26	\N
8	2023-04-26	2023-04-26	\N
9	2023-04-26	2023-04-26	\N
10	2023-04-27	2023-04-27	\N
11	2023-04-27	2023-04-27	\N
12	2023-04-27	2023-04-27	\N
13	2023-04-28	2023-04-28	\N
14	2023-04-28	2023-04-28	\N
15	2023-04-28	2023-04-28	1
16	2023-04-24	2023-04-24	1
17	2023-04-24	2023-04-24	1
18	2023-04-24	2023-04-24	1
19	2023-04-24	2023-04-24	1
20	2023-04-24	2023-04-24	1
21	2023-04-24	2023-04-24	1
22	2023-04-24	2023-04-24	1
23	2023-04-24	2023-04-24	2
24	2023-04-24	2023-04-24	2
25	2023-04-24	2023-04-24	2
26	2023-04-24	2023-04-24	2
27	2023-04-24	2023-04-24	2
28	2023-04-24	2023-04-24	2
29	2023-04-24	2023-04-24	2
30	2023-04-24	2023-04-24	2
\.


--
-- Data for Name: PassVisitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PassVisitor" ("IdPass", "IdVisitor") FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
\.


--
-- Data for Name: StatusPass; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StatusPass" ("IdStatusPass", "IdPass", "IdSubdivizion", "IdTypeStatus", "Description") FROM stdin;
\.


--
-- Data for Name: Subdivizion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subdivizion" ("IdSubdivizion", "IdEmployee", subdivizion) FROM stdin;
9367788	1	Производство
9788737	2	Сбыт
9736379	3	Администрация
9362832	4	Служба безопасности
9737848	5	Планирование
9768239	6	Общий отдел
9404040	7	Охрана
\.


--
-- Data for Name: TypeStatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TypeStatus" ("IdTypeStatus", "TypeStatusNAme") FROM stdin;
1	Одобрена
2	Отклонена
3	На расмотрении
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("IdUser", "Login", "Password") FROM stdin;
1	Vlas86	b3uWS6#Thuvq
2	Prohor156	zDdom}SIhWs?
3	YUrin155	u@m*~ACBCqNQ
4	Aljbina33	Bu?BHCtwDFin
5	Klavdiya113	FjC#hNIJori}
6	Tamara179	TJxVqMXrbesI
7	Taras24	07m5yspn3K~K
8	Arkadij123	vk2N7lxX}ck%
9	Glafira73	Zz8POQlP}M4~
10	Gavriila68	x4K5WthEe8ua
11	Kuzjma124	OsByQJ}vYznW
12	Roman89	Xd?xP$2yICcG
13	Aleksej43	~c%PlTY0?qgl
14	Nadezhda137	QQ~0q~rXHb?p
15	Bronislava56	LO}xyC~1S4l6
16	Taisiya177	R94YGT3XFjgD
17	Adelaida20	LCY*{L*fEGYB
18	Lev131	~?oj2Lh@S7*T
19	lzaihtvkdn	L2W#uo7z{EsO
20	Lyudmila123	@8mk9M?NBAGj
21	Taisiya176	~rIWfsnXA~7C
22	Vera195	B|5v$2r$7luL
23	YAkov196	$6s5bggKP7aw
24	Nina145	Uxy6RtBXIcpT
25	Leontij161	KkMY8yKw@oCa
26	Serafima169	gNe3I9}8J3Z@
27	Sergej35	$39vc%ljqN%r
28	Georgij121	bbx5H}f*BC?w
29	Elizar30	wJs1~r3RS~dr
30	Lana117	mFoG$jcS3c4~
\.


--
-- Data for Name: Visitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Visitor" ("IdVisitor", "FirstName", "LastName", "Patronymic", "Phone", "Email", "BirthDate", "Descriptoin", "Organization", "PassportSerial", "PassportNum", "IdUser") FROM stdin;
1	Степанова	Радинка	Власовна	+7 (613) 272-60-62	Radinka100@yandex.ru	1986-10-18	\N	\N	208 	530509	1
2	Шилов	Прохор	Герасимович	+7 (615) 594-77-66	Prohor156@list.ru	1977-10-09	\N	\N	3036	796488	2
3	Кононов	Юрин	Романович	+7 (784) 673-51-91	YUrin155@gmail.com	1971-10-08	\N	\N	2747	790512	3
4	Елисеева	Альбина	Николаевна	+7 (654) 864-77-46	Aljbina33@lenta.ru	1983-02-15	\N	\N	5241	213304	4
5	Шарова	Клавдия	Макаровна	+7 (822) 525-82-40	Klavdiya113@live.com	1980-07-22	\N	\N	8143	593309	5
6	Сидорова	Тамара	Григорьевна	+7 (334) 692-79-77	Tamara179@live.com	1995-11-22	\N	\N	8143	905520	6
7	Петухов	Тарас	Фадеевич	+7 (376) 220-62-51	Taras24@rambler.ru	1991-01-05	\N	\N	1609	171096	7
8	Родионов	Аркадий	Власович	+7 (491) 696-17-11	Arkadij123@inbox.ru	1993-08-11	\N	\N	3841	642594	8
9	Горшкова	Глафира	Валентиновна	+7 (553) 343-38-82	Glafira73@outlook.com	1978-05-25	\N	\N	9170	402601	9
10	Кириллова	Гавриила	Яковна	+7 (648) 700-43-34	Gavriila68@msn.com	1992-04-26	\N	\N	9438	379667	10
11	Овчинников	Кузьма	Ефимович	+7 (562) 866-15-27	Kuzjma124@yandex.ru	1993-08-02	\N	\N	766 	647226	11
12	Беляков	Роман	Викторович	+7 (595) 196-56-28	Roman89@gmail.com	1991-06-07	\N	\N	2411	478305	12
13	Лыткин	Алексей	Максимович	+7 (994) 353-29-52	Aleksej43@gmail.com	1996-03-07	\N	\N	2383	259825	13
14	Шубина	Надежда	Викторовна	+7 (736) 488-66-95	Nadezhda137@outlook.com	1981-09-24	\N	\N	8844	708476	14
15	Зиновьева	Бронислава	Викторовна	+7 (778) 565-12-18	Bronislava56@yahoo.com	1981-03-19	\N	\N	6736	319423	15
16	Самойлова	Таисия	Гермоновна	+7 (891) 555-81-44	Taisiya177@lenta.ru	1979-11-14	\N	\N	5193	897719	16
17	Ситникова	Аделаида	Гермоновна	+7 (793) 736-70-31	Adelaida20@hotmail.com	1979-01-21	\N	\N	7561	148016	17
18	Исаев	Лев	Юлианович	+7 (675) 593-89-30	Lev131@rambler.ru	1994-08-05	\N	\N	1860	680004	18
19	Никифоров	Даниил	Степанович	+7 (384) 358-77-82	Daniil198@bk.ru	1970-12-13	\N	\N	4557	999958	19
20	Титова	Людмила	Якововна	+7 (221) 729-16-84	Lyudmila123@hotmail.com	1976-08-21	\N	\N	7715	639425	20
21	Абрамова	Таисия	Дмитриевна	+7 (528) 312-18-20	Taisiya176@hotmail.com	1982-11-20	\N	\N	7310	893510	21
22	Кузьмина	Вера	Максимовна	+7 (598) 583-53-45	Vera195@list.ru	1989-12-10	\N	\N	3537	982933	22
23	Мартынов	Яков	Ростиславович	+7 (546) 159-67-33	YAkov196@rambler.ru	1976-12-05	\N	\N	1793	986063	23
24	Евсеева	Нина	Павловна	+7 (833) 521-31-50	Nina145@msn.com	1994-09-26	\N	\N	9323	745717	24
25	Голубев	Леонтий	Вячеславович	+7 (160) 527-57-41	Leontij161@mail.ru	1990-10-03	\N	\N	1059	822077	25
26	Карпова	Серафима	Михаиловна	+7 (459) 930-91-70	Serafima169@yahoo.com	1989-11-19	\N	\N	7034	858987	26
27	Орехов	Сергей	Емельянович	+7 (669) 603-29-87	Sergej35@inbox.ru	1972-02-11	\N	\N	3844	223682	27
28	Исаев	Георгий	Павлович	+7 (678) 516-36-86	Georgij121@inbox.ru	1987-08-11	\N	\N	4076	629809	28
29	Богданов	Елизар	Артемович	+7 (165) 768-30-97	Elizar30@yandex.ru	1978-02-02	\N	\N	573 	198559	29
30	Тихонова	Лана	Семеновна	+7 (478) 467-75-15	Lana117@outlook.com	1990-07-24	\N	\N	8761	609740	30
\.


--
-- Name: Employee Employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY ("IdEmployee");


--
-- Name: Pass Pass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pass"
    ADD CONSTRAINT "Pass_pkey" PRIMARY KEY ("IdPass");


--
-- Name: StatusPass StatusPass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StatusPass"
    ADD CONSTRAINT "StatusPass_pkey" PRIMARY KEY ("IdStatusPass");


--
-- Name: Subdivizion Subdivizion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subdivizion"
    ADD CONSTRAINT "Subdivizion_pkey" PRIMARY KEY ("IdSubdivizion");


--
-- Name: TypeStatus TypeStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TypeStatus"
    ADD CONSTRAINT "TypeStatus_pkey" PRIMARY KEY ("IdTypeStatus");


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("IdUser");


--
-- Name: Visitor Visitor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Visitor"
    ADD CONSTRAINT "Visitor_pkey" PRIMARY KEY ("IdVisitor");


--
-- Name: Group Group_IdUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_IdUser_fkey" FOREIGN KEY ("IdUser") REFERENCES public."User"("IdUser");


--
-- Name: PassVisitor PassVisitor_IdPass_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PassVisitor"
    ADD CONSTRAINT "PassVisitor_IdPass_fkey" FOREIGN KEY ("IdPass") REFERENCES public."Pass"("IdPass");


--
-- Name: StatusPass StatusPass_IdPass_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StatusPass"
    ADD CONSTRAINT "StatusPass_IdPass_fkey" FOREIGN KEY ("IdPass") REFERENCES public."Pass"("IdPass");


--
-- Name: StatusPass StatusPass_IdSubdivizion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StatusPass"
    ADD CONSTRAINT "StatusPass_IdSubdivizion_fkey" FOREIGN KEY ("IdSubdivizion") REFERENCES public."Subdivizion"("IdSubdivizion");


--
-- Name: StatusPass StatusPass_IdTypeStatus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StatusPass"
    ADD CONSTRAINT "StatusPass_IdTypeStatus_fkey" FOREIGN KEY ("IdTypeStatus") REFERENCES public."TypeStatus"("IdTypeStatus");


--
-- Name: Subdivizion Subdivizion_IdEmployee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subdivizion"
    ADD CONSTRAINT "Subdivizion_IdEmployee_fkey" FOREIGN KEY ("IdEmployee") REFERENCES public."Employee"("IdEmployee");


--
-- Name: Visitor Visitor_IdUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Visitor"
    ADD CONSTRAINT "Visitor_IdUser_fkey" FOREIGN KEY ("IdUser") REFERENCES public."User"("IdUser");


--
-- Name: PassVisitor fk_passvisitorvisitor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PassVisitor"
    ADD CONSTRAINT fk_passvisitorvisitor FOREIGN KEY ("IdVisitor") REFERENCES public."Visitor"("IdVisitor");


--
-- PostgreSQL database dump complete
--

