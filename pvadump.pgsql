--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: patologies; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patologies (
    id integer,
    nom text,
    descrip text,
    nomcast text
);


ALTER TABLE public.patologies OWNER TO postgres;

--
-- Name: patologies2; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patologies2 (
    id integer NOT NULL,
    nom text,
    descrip text,
    nomcast text
);


ALTER TABLE public.patologies2 OWNER TO postgres;

--
-- Name: patologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.patologies_id_seq OWNER TO postgres;

--
-- Name: patologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patologies_id_seq', 93, true);


--
-- Name: prin_biblio; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE prin_biblio (
    idrec integer,
    biblio character varying(100)
);


ALTER TABLE public.prin_biblio OWNER TO root;

--
-- Name: prin_tipus; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE prin_tipus (
    id_rec integer,
    id_tipus integer
);


ALTER TABLE public.prin_tipus OWNER TO root;

--
-- Name: princ2pat; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE princ2pat (
    idprinc integer,
    idpat integer
);


ALTER TABLE public.princ2pat OWNER TO root;

--
-- Name: principal; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE principal (
    id integer,
    titol text,
    autor text,
    url text,
    data_entrada date,
    resum_cat text,
    resum_cast text,
    tipus text,
    patologia integer,
    idioma text
);


ALTER TABLE public.principal OWNER TO root;

--
-- Name: principal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE principal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.principal_id_seq OWNER TO postgres;

--
-- Name: principal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('principal_id_seq', 483, true);


--
-- Name: principal_old; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE principal_old (
    id integer DEFAULT nextval(('"principal_id_seq"'::text)::regclass) NOT NULL,
    titol text,
    autor text,
    url text,
    data_entrada date,
    resum_cat text,
    resum_cast text,
    tipus text,
    patologia integer,
    idioma text
);


ALTER TABLE public.principal_old OWNER TO postgres;

--
-- Name: projectes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projectes (
    id integer DEFAULT nextval(('"projectes_id_seq"'::text)::regclass) NOT NULL,
    nom text,
    descrip text
);


ALTER TABLE public.projectes OWNER TO postgres;

--
-- Name: projectes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projectes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.projectes_id_seq OWNER TO postgres;

--
-- Name: projectes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('projectes_id_seq', 8, true);


--
-- Name: recxproj; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE recxproj (
    idrec integer,
    idproj integer,
    cat01 text,
    cat02 text,
    cat03 text,
    cat04 text,
    cat05 text
);


ALTER TABLE public.recxproj OWNER TO postgres;

--
-- Name: rev2pat; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rev2pat (
    id integer NOT NULL,
    idrev integer NOT NULL,
    idpat integer NOT NULL
);


ALTER TABLE public.rev2pat OWNER TO postgres;

--
-- Name: rev2pat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rev2pat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.rev2pat_id_seq OWNER TO postgres;

--
-- Name: rev2pat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rev2pat_id_seq OWNED BY rev2pat.id;


--
-- Name: rev2pat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rev2pat_id_seq', 5173, true);


--
-- Name: revhits; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE revhits (
    idrev integer,
    insti character varying(50),
    paquet character varying(50),
    dia date
);


ALTER TABLE public.revhits OWNER TO root;

--
-- Name: revistes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE revistes (
    id integer NOT NULL,
    nom text,
    url text,
    cat character varying(5),
    embargo character varying(6),
    paquet text,
    resum_cat text,
    username text,
    passwd text,
    disponible text,
    comentari text,
    comentari_cast text
);


ALTER TABLE public.revistes OWNER TO postgres;

--
-- Name: revistes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE revistes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.revistes_id_seq OWNER TO postgres;

--
-- Name: revistes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE revistes_id_seq OWNED BY revistes.id;


--
-- Name: revistes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('revistes_id_seq', 5794, true);


--
-- Name: tipus; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipus (
    id integer DEFAULT nextval(('"tipus_id_seq"'::text)::regclass) NOT NULL,
    nom text,
    descrip text
);


ALTER TABLE public.tipus OWNER TO postgres;

--
-- Name: tipus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tipus_id_seq OWNER TO postgres;

--
-- Name: tipus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipus_id_seq', 9, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rev2pat ALTER COLUMN id SET DEFAULT nextval('rev2pat_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY revistes ALTER COLUMN id SET DEFAULT nextval('revistes_id_seq'::regclass);


--
-- Data for Name: patologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patologies (id, nom, descrip, nomcast) FROM stdin;
55	Atenció Primària		Atención Primaria
56	Anatomia		Anatomia
57	Dermatologia		Dermatología 
21	Hematologia		Hematología 
60	Histologia		Histología 
10	Cirurgia general		Cirugía general
61	Cirurgia de l'aparell digestiu		Cirugía del aparato digestivo
62	Informàtica mèdica		Informática médica
53	Malalties rares		Enfermedades raras
52	Malalties infeccioses		Enfermedades infecciosas
51	Bioètica		Bioética
50	Urologia		Urología 
49	Reumatologia		Reumatología 
78	Toxicologia		Toxicología 
45	Pediatria		Pediatría 
44	Oto-rino-laringologia		Otorrinolaringología 
41	Oftalmologia		Oftalmología 
39	Neurologia		Neurología 
38	Neurofisiologia clínica		Neurofisiología clínica
37	Neurocirurgia		Neurocirugía 
36	Nefrologia		Nefrología 
35	Microbiologia i parasitologia		Microbiología y parasitología 
34	Medicina preventiva i salut pública		Medicina preventiva y salud pública
32	Medicina del treball		Medicina del trabajo
31	Medicina legal i forense		Medicina legal y forense
30	Medicina interna		Medicina interna
29	Medicina intensiva		Medicina intensiva
28	Medicina física i rehabilitació   		Medicina física y rehabilitación  
27	Medicina familiar i comunitària		Medicina familiar y comunitaria
26	Medicina d'emergència		Medicina de emergencia
23	Immunologia		Inmunología 
79	Fisiologia		Fisiología 
17	Endocrinologia i nutrició   		Endocrinología y nutrición  
15	Cirurgia toràcica		Cirugía torácica
14	Cirurgia plàstica, estètica i reparadora		Cirugía plástica, estética y reparadora
13	Cirurgia pediàtrica		Cirugía pediátrica
12	Cirurgia ortopèdica i traumatologia		Cirugía ortopédica y traumatología 
11	Cirurgia oral i maxil·lofacial		Cirugía oral y maxilofacial
9	Cirurgia cardiovascular		Cirugía cardiovascular
8	Cardiologia		Cardiología 
6	Aparell digestiu		Aparato digestivo
5	Angiologia i cirurgia vascular		Angiología y cirugía vascular
4	Anestesiologia i reanimació   		Anestesiología y reanimación  
91	Tractament del dolor		Tratamiento del dolor
92	Trasplantament d'òrgans		Trasplante de órganos
48	Radiologia		Radiología 
42	Oncologia		Oncología 
86	Enginyeria biomèdica		Ingeniería biomédica
7	Bioquímica		Bioquímica
59	Aparell respiratori		Aparato respiratorio
64	Anatomia Patològica		Anatomía Patológica
68	Drogoadicció   		Drogadicción  
66	Infermeria		Enfermería 
67	Medicina alternativa		Medicina alternativa
69	Administració i gestió de serveis de salut		Administración y gestión de servicios de salud
70	Treball social		Trabajo social
20	Geriatria i Gerontologia		Geriatría y Gerontología 
47	Psiquiatria i psicologia		Psiquiatría y psicología 
71	Teràpia ocupacional		Terapia ocupacional 
72	Biologia molecular		Biología molecular
73	Medicina veterinària		Medicina veterinaria
74	Botànica		Botánica
75	Medicina tropical		Medicina tropical
76	Biologia cel·lular		Biología celular
77	Entomologia		Entomología 
80	Sexologia		Sexología 
81	Medicina basada en la evidència		Medicina basada en la evidencia
82	Biotecnologia		Biotecnología 
83	Ecologia		Ecología 
87	Estadística mèdica		Estadística médica
84	Formació i investigació   		Formación e investigación  
18	Medicina oral		Medicina oral
85	Biologia		Biología 
89	Medicina clínica		Medicina clínica
88	Medicina general		Medicina general
90	Al·lergiologia		Alergiología 
40	Obstetrï¿½cia i ginecologia		Obstetricia y ginecologï¿½a
19	Farmacologia		FarmacologÃ­a
\.


--
-- Data for Name: patologies2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patologies2 (id, nom, descrip, nomcast) FROM stdin;
\.


--
-- Data for Name: prin_biblio; Type: TABLE DATA; Schema: public; Owner: root
--

COPY prin_biblio (idrec, biblio) FROM stdin;
436	santpau
466	uab
466	psmar
466	guttmann
466	vic
466	mutual
436	puigvert
436	guttmann
436	psmar
436	vic
436	mutual
434	puigvert
434	santpau
434	guttmann
434	psmar
434	vic
434	mutual
438	santpau
438	puigvert
438	guttmann
438	psmar
438	uab
438	vic
251	santpau
\.


--
-- Data for Name: prin_tipus; Type: TABLE DATA; Schema: public; Owner: root
--

COPY prin_tipus (id_rec, id_tipus) FROM stdin;
448	0
362	0
433	0
356	0
423	0
434	0
460	0
392	0
449	0
355	0
424	0
444	0
397	0
297	3
259	3
169	3
298	3
284	3
172	3
434	3
352	3
436	3
455	3
170	3
443	3
367	3
447	5
438	5
445	5
404	5
417	5
252	5
440	5
249	5
253	5
446	5
250	5
435	5
239	5
240	5
2	5
254	5
21	5
1	5
243	5
237	5
387	5
248	5
262	5
241	5
251	5
238	5
255	5
173	6
272	6
346	6
263	6
162	6
176	6
171	6
246	6
175	6
247	6
174	6
245	6
264	6
319	6
244	6
163	7
159	7
168	7
306	7
268	7
296	7
158	7
160	7
161	7
162	7
167	7
76	7
164	7
450	7
93	4
215	4
412	4
256	4
180	4
343	4
57	4
372	4
53	4
54	4
345	4
355	4
122	4
111	4
71	4
184	4
425	4
183	4
226	4
75	4
86	4
201	4
41	4
96	4
205	4
69	4
101	4
148	4
348	4
406	4
94	4
313	4
395	4
118	4
347	4
204	4
346	4
129	4
403	4
32	4
344	4
351	4
357	4
59	4
78	4
356	4
299	4
223	4
140	4
42	4
18	4
162	4
300	4
294	2
293	2
442	2
13	2
336	2
395	2
292	2
16	2
426	2
27	1
25	1
328	1
329	1
285	1
327	1
325	1
19	1
20	1
317	1
326	1
283	1
288	1
427	1
26	1
324	1
24	1
74	1
330	1
301	1
404	1
323	1
466	2
253	3
440	3
387	3
263	3
173	3
160	3
158	3
159	3
468	2
469	5
470	6
471	6
472	3
472	7
473	7
474	0
21	1
478	3
478	5
479	5
450	5
480	3
481	3
482	3
483	3
\.


--
-- Data for Name: princ2pat; Type: TABLE DATA; Schema: public; Owner: root
--

COPY princ2pat (idprinc, idpat) FROM stdin;
412	30
96	40
455	28
322	62
422	64
238	42
347	8
365	59
431	44
373	50
378	23
388	4
416	35
366	45
336	56
317	60
379	52
378	56
354	6
376	50
377	17
89	21
410	40
456	71
11	56
29	42
315	34
201	47
285	48
368	45
54	8
357	27
430	44
348	49
380	48
325	45
278	51
11	44
290	52
252	30
129	40
99	21
433	7
335	34
377	39
34	52
291	54
198	55
197	34
328	9
344	5
450	66
452	28
76	26
378	54
320	47
78	17
273	51
229	12
459	28
86	6
127	40
368	8
377	41
89	54
113	7
332	20
454	28
302	49
420	64
377	6
266	51
101	23
305	49
382	14
428	34
71	57
111	29
124	17
450	81
250	55
143	18
324	10
72	57
330	36
373	55
390	4
13	64
164	42
267	51
333	9
204	47
329	44
391	5
408	29
134	42
338	7
109	62
326	18
349	55
64	14
118	50
27	17
134	29
418	52
381	34
272	51
379	10
136	42
421	64
53	8
57	8
38	52
384	20
392	5
151	44
46	4
358	55
402	60
7	39
94	20
24	59
351	21
30	36
377	42
407	28
286	35
226	10
260	42
377	59
64	57
451	28
59	55
28	53
341	37
25	41
48	23
379	9
311	39
294	10
50	9
310	38
385	8
276	51
377	44
400	17
339	7
350	53
67	57
120	39
331	20
10	8
9	56
111	4
223	49
432	57
379	40
343	5
274	51
411	30
77	12
384	18
309	48
342	37
289	23
396	9
377	36
89	42
42	56
269	51
215	59
327	26
261	42
407	71
320	39
337	14
357	55
295	35
140	41
257	6
40	59
10	48
321	48
377	47
32	30
57	34
91	54
397	9
398	10
454	81
265	53
17	41
334	18
14	6
452	66
306	48
75	26
31	42
117	36
318	17
340	37
371	12
10	56
69	57
370	41
389	4
323	41
405	27
457	41
414	47
308	60
35	52
5	56
369	41
413	47
382	28
394	8
401	20
377	21
7	56
380	12
170	54
93	20
135	42
404	26
288	14
330	50
167	45
377	45
453	28
100	21
183	45
275	51
268	51
258	52
277	51
11	59
184	45
345	5
349	27
205	47
409	40
282	60
429	34
364	26
328	8
66	57
311	38
377	49
375	45
270	51
379	26
118	36
314	6
122	39
36	52
322	42
456	28
30	50
399	14
304	51
419	64
451	66
393	5
185	45
374	18
148	44
336	48
453	71
377	57
180	45
271	51
292	35
300	12
279	51
377	50
406	27
415	38
468	56
154	64
469	81
470	19
471	19
472	66
473	66
474	55
475	5
476	5
477	5
478	28
\.


--
-- Data for Name: principal; Type: TABLE DATA; Schema: public; Owner: root
--

COPY principal (id, titol, autor, url, data_entrada, resum_cat, resum_cast, tipus, patologia, idioma) FROM stdin;
37	Medical Management of HIV Infection	John G. Bartlett, Joel E. Gallant	http://hopkins-aids.edu/publications/book/book_toc.html	2005-03-25	Direcció médica i terapèutica sobre les infecciones provocades pel HIV.	Dirección médica y terapéutica sobre las infecciones provocadas por el HIV.	1	0	
43	Lung Anatomy	Brad H. Thompson, William J. Lee, Jeffrey R. Galvin, Jeffrey S. Wilson	http://www.vh.org/adult/provider/radiology/LungAnatomy/LungAnatomy.html	2005-03-25	Estudi sobre l´anatomia del pulmó.	Estudio sobre la antomía del pulmón.	1	3	
44	Musculoskeletal Atlas	Carol Teitz, Dan Graney	http://eduserv.hscer.washington.edu/hubio553/atlas/content.html	2005-03-25	Contingut repartit en capítols relacionat amb l´anatomia musclesquel.letic, representat amb imatges i textos.	Contenido repartido en capítulos relacionados con la anatomía musculoesquelética, representada con imagénes y textos.	1	3	
45	Erectile Dysfunction 	The International Society for Sexual and Impotence Research 	http://www.issir.org/prod/data/issir/edbook/index.asp	2005-03-25	Aquests documents són la versió electrónica del llibre "Erectile Dysfunction, amb contiguts que procedeixen de la Consulta Internacional sobre Disfunció Eréctil, sostinguda en Juliol de 1999, a París.	Estos documentos son la version electrónica del libro "Erectile Dysfunction", con contenidos que proceden de la Consulta Internacional sobre Disfunción Eréctil, celebrada en Julio de 1999, en París.	1	50	
47	Developmental Biology	Gilbert, Scott F.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..showTOC&rid=dbio.TOC&depth=2	2005-03-25	Descriu els principis basics en el desenvolupament del camp de la biologia.	Describe los principios básicos de desarrollo en el campo de la biología.	1	0	
49	On-Line Biology Book 	M. J. Farabee	http://www.emc.maricopa.edu/faculty/farabee/biobk/biobooktoc.html	2005-03-25	Extens i complet llibre online on s´analitza una gran quantitat de camps relacionats amb la biologia.	Extenso y completo libro online donde se analiza multitud de campos relacionados con la biología.	1	0	
51	Braunwald Atlas of Heart Diseases 	Eugene Braunwald	http://www.norvasc-braunwald.com/login.asp?error=falid&path=%2findex%2Easp&query=	2005-03-25	Aquest Atlas sobre enfermetats del cor porta per vosté cents de radigrafies, historials i imatges sobre patologies que transformaran les seves presentacion i lectures.	Este Atlas sobre enfermedades del corazón trae para usted cientos de radiografías, historiales e imágenes sobre patologías que transformarán sus presentaciones y lecturas.	1	8	
55	Handbook of Contrast Echocardiography	Harald Becher, Peter N. Burns	http://www.sunnybrook.utoronto.ca/EchoHandbook/	2005-03-26	Aquest llibre es el resultat de l´experiència combinada dels autors en la seva recerca cap als agents i les seves técniques imaginatives associades, amb una aplicació clínica d´un contrast ecocardiogràfic en pacients durant un període de 10 anys.	Este libro es el resultado de la experiencia combinada de los autores en su búsqueda hacia los agentes y sus técnicas imaginativas asociadas, y con una aplicación clínica de un contraste ecocardiográfico en pacientes durante un periodo de diez años.	1	8	
58	Fisiopatología de la Hipertensión Arterial	Alberto Hatim Ricardo, Enrique Flores Delgado	http://www.sld.cu/libros/hiperten/indice.html	2005-03-26	Descriu l´importància del mecanismes fisiològics que intervenen en el manteniment de la pressió arterial, a més del concepte i factors epdidemològics que intervenen en la hipertensió arterial.	Describe la importancia de los mecanismos fisiológicos que intervienen en el mantenimiento de la presión arterial, además del concepto y factores epidemiológicos que intervienen en la hipertensión arterial. \r\n\n	1	9	
60	Atlas Diagnóstico Dolor Torácico	Manuel Wilke Delgado	http://www.mapaweb.com/hemeroteca/publicaciones/dolortorax/index.htm	2005-03-26	Anàlisi del dolor toràcic que pot sufrir una persona en relació a l´enfermetat que por desenvolupar.	Análisis del dolor torácico que puede sufrir una persona en relación a la enfermedad que puede desarrollar.	1	8	
188	Basic Pharmacokinetics	Michael Makoid, Phillip Vuchetich, Umesh Banakar	http://pharmacy.creighton.edu/pha443/pdf/Default.asp	2005-04-30	Primera edició del curs bàsic sobre medicaments creat en format pdf.	Primera edición del curso básico sobre medicamentos creado en formato pdf.	1	19	
62	La lecture critique des essais cliniques	Michel Cucherat	http://www.spc.univ-lyon1.fr/lecture%2Dcritique/	2005-03-26	Els resultats terapéutics de les probes agafen un lloc cada vegada més significatiu en la medicina moderna. El significat de la seva lectura crítica es converteix en un component essencial per la medicina.	Los resultados terapeuticos de las pruebas toman un lugar cada vez más significativo en la medicina moderna.  El significado de su lectura crítica se convierte en un componente esencial para la medicina.  	1	2	
63	Small Clinical Trials: Issues and Challenges 	Suzanne T., Charles H. Evans	http://www.nap.edu/books/0309073332/html/	2005-03-26	Han pasat varies décades on s´ha incrementat el creixement exponencial del nombre de assaigs clinics conduïts per probar innovacions en el tractament de l´enfermetat.	Han pasado varias décadas allí donde ha habido crecimiento exponencial en el número de los ensayos clínicos conducidos para probar innovaciones en el tratamiento de la enfermedad. 	1	2	
70	Handbook of Dermatology & Venereology	Alfred Tang, L.Y. Chong. L.C. Chong	http://www.hkmj.org.hk/skin/content.htm	2005-03-26	Anàlisi de transtorns dermatològics i de transmissió sexual.	Analisis de transtornos dermatológicos y de transmisión sexual.	1	16	
80	Ethics Manual	American College of Physicians	http://www.annals.org/cgi/content/abstract/128/7/576	2005-03-27	Cuarta edició del manual de ètica de l´universitat americana de metges, on es reflexa les tensions produïdas entre interns y els seus pacients, i on es procura donar llum en com els principis existents sobre ètica se propaguen en les noves preocupacions que surgeixen.	Cuarta edición del manual de ética de la universidad americana de médicos, donde reflejan tensiones producidas entre los internos y sus pacientes, y donde se procura dar luz en cómo los principios existentes sobre ética se extienden a las nuevas preocupaciones que emergen.	1	0	
81	Family Parctice Notebook	Scott Moses	http://www.fpnotebook.com/man.htm	2005-03-27	Aquest llibre electrònic está dissenyat per ajudar als encarregat de las primeres cures en la seva recerca per l´atenció óptima, als pacients ben informats i a les families sanes.	Este libro electrónico está pensado para ayudar a los encargados de los cuidados primarios en su búsqueda por el cuidado óptimo, a los pacientes bien informados y a las familias sanas.	1	27	
85	New Trends in Coloproctology	J. A. Reis Neto, Editor	http://www.proctosite.com/procto2001/e-library/index_library.htm	2005-03-28	Anàlisi de les noves tendències en coloproctologia.	Análisis de las nuevas tendencias en coloproctología.	1	6	
218	BrighmanRAD  Teaching Case Database	BrighamRAD	http://brighamrad.harvard.edu/Cases/bwh/hcache/title-index.html	2005-05-01	Base de dades de l´escola Brighamrad.	Base de datos de la escuela Brighamrad.	1	48	
90	Genes and disease	National Institutes of Health	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=gnd.TOC&depth=2	2005-04-01	Un dels problemas més difícils és descubrir com els gens contribueixen a les enfermetats que tenen un patró complex de la herència, com per exemple en els casos de la diabetes, de l´asma, del càncer i de les malalties mentals.	Uno de los problemas más difíciles es descubrir cómo los genes contribuyen a las enfermedades que tienen un patrón complejo de la herencia, como por ejemplo en los casos de la diabetes, del asma, del cáncer y de enfermedades mentales.  	1	0	
103	1998 Guidelines for the Treatment of Sexually Transmitted Disease	The Virtual Naval Hospital Project	http://www.vnh.org/STD/STD98TG.html	2005-04-02	L´informació d´aquest informe posa al dia les 1998 pautes pel tractament de les malalties de trasmissió sexual.	La información de este informe pone al día las 1998 pautas para el tratamiento de las enfermedades de transmisión sexual.	1	0	
104	Emerging Infectious Diseases from the Global to the Local Perspective: Workshop Summary	Jonathan R. Davis, Joshua Lederberg	http://www.nap.edu/books/0309071844/html/	2005-04-02	Descriu les tendències en la incidència de malalties infecciosses al voltant del món, l´amplia varietat de factors dintre dels quals contribueixen a l´aparició d´aquestes malalties, esforços de coordinar activitats de la vigilància i respostes a través de les fronteres, i de l´investigació i necessitats internacionals que existeixen.	Describe las tendencias en la incidencia de enfermedades infecciosas alrededor del mundo, la amplia variedad de factores dentro de los cuales contribuye a la aparición de estas enfermedades, esfuerzos de coordinar actividades de la vigilancia y respuestas a través de las fronteras, y de la investigación y necesidades internacionales que existen.	1	0	
219	Iconocerf	CERF	http://www.med.univ-rennes1.fr/cerf/iconocerf/	2005-05-01	Accés ràpid i fàcil a multitut de casos clínics.	Acceso rápido y fácil a multitud de casos clínicos.	1	48	
107	World Health Organization Report on Infectious Diseases 2000	World Health Organization	http://www.who.int/infectious-disease-report/2000/index.html	2005-04-02	Complet reportatge que trata els coneixements per prevenir o curar malalties com la malària, tuberculosi, VIH, malalties diarreiques, pulmonia i sarampió.	Completo reportaje que trata los conocimientos para prevenir o curar enfermedades tales como malaria, tuberculosis, VIH, enfermedades diarreicas, pulmonía y sarampión.	1	0	
106	Pauta para la vigilancia de las infecciones de transmisión sexual	World Health Organization	http://www.who.int/emc-documents/STIs/docs/whocdscsredc993S.pdf	2005-04-02	Aquest document trata princinpalment aquelles afeccions curables i del agents patògens objecte de la vigilància dels programes de control de les ITS, i dels síndromes causats per ells, com: sífilis, chancroide, gonorrea, infeccions per clamidies i tricomoniasis.	Este documento trata principalmente aquellas afecciones curables y de los agentes patógenos objeto de la vigilancia de los programas de control de las ITS, y de los síndromes causados por ellos, como: sífilis, chancroide, gonorrea, infecciones por clamidias y tricomoniasis.	1	0	
108	Yale Infection Control Manual	Yale New Haven Hospital	http://info.med.yale.edu/ynhh/infection/	2005-04-02	Mecanismes pels quals la malaltia pot ser separada enfocant l´ús de l´equip protector como barrera, tal com el guants o màscares, per interrompre la transmissió i trencar la cadena de l´infecció.	Mecanismos por los cuales la enfermedad puede ser separada enfocando el uso del equipo protector como barrera, tal como guantes o máscaras, para interrumpir la transmisión y romper la cadena de la infección.	1	0	
112	Molecular Biology of the Cell	Alberts, Bruce; Bray, Dennis; Lewis, Julian; Raff, Martin; Roberts, Keith; Watson, James D.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowSection&rid=mboc4	2005-04-02	El autors conten l´història de la biologia de la cèl.lula, i creen un marc coherent a través del qual els lectors inexperts poden aproparse al tema. Escrit en llengua clara e il.lustrat amb dibuixos originals, el llibre es agradable de llegir, i proporciona un sentit de l´entusiasme de la biologia moderna.	Los autores cuentan la historia de la biología de la célula, y crean un marco coherente a través de el cual los lectores inexpertos puedan acercarse al tema.  Escrito en lengua clara e ilustrado con los dibujos originales, el libro es agradable leer, y proporciona un sentido del entusiasmo de la biología moderna.	1	0	
115	Musculoskeletal Disorders and the Workplace: Low Back and Upper Extremities 	National Research Council	http://www.nap.edu/books/0309072840/html/	2005-04-02	Es centra entre altres causes, en la natura, severitat, i el graus en que es treballa els transtorns musclesquelètics axí com l´eficacia i els inconvenients relatius als costos de les intervencions.	Se centra entre otras causas, en la  naturaleza, severidad, y los grados en que se trabajan los transtornos musculoesqueléticos así como la eficacia y las ventajas relativas a los costes de las intervenciones.	1	3	
116	Nanomedicine	Robert A. Freitas Jr.	http://www.landesbioscience.com/nanomedicine/	2005-04-02	Parla sobre la capacitat de classificar i de transportar les molècules; producte químic, acústic, i altres sensors físics; forma, textura i control compositiu de superfícies externes; almacenatge, generació i transmissió de l´energia; comunicació entre nanorobots, i entre els metges, els pacients, etc.	Habla sobre la  capacidad de clasificar y de transportar las moléculas;  producto químico, acústico, y otros sensores físicos;  forma, textura, y control compositivo de superficies externas;  almacenaje, generación, y transmisión de la energía;  comunicación entre nanorobots, y entre los doctores, los pacientes, etc.	1	0	
123	Guidelines on Overweight and Obesity: Electronic Textbook	NHLBI (National Heart Lung and Blood Institute)	http://www.nhlbi.nih.gov/guidelines/obesity/e_txtbk/index.htm	2005-04-02	Aquest llibre electrònic permet el accés fàcil a l´informació continguda en les pautes clíniques en l´identificació, l´evaluació, i el tratament del excés de pes i de l´obesitat en adults.	Este libro electrónico permite el acceso fácil a la información contenida en las pautas clínicas en la identificación, la evaluación, y el tratamiento del exceso de peso y de la obesidad en adultos.	1	17	
126	Prevent and Decrease Overweight and Obesity	Surgeon General	http://www.surgeongeneral.gov/topics/obesity/	2005-04-02	És una crida general a l´acció de prevenir i disminuir l´excés de pes i obesitat.	Es una llamada general a la acción de prevenir y disminuir el exceso de peso y obesidad. 	1	17	
128	Hypertextbook of Regional Anaesthesia for Obstetrics	Stephen P. Gatt and Andrew Pybus	http://www.manbit.com/oa/oaindex.htm	2005-04-02	llibre electrònic que abarca de manera molt extensa el camp de l´anestèsia pels professionals de l´obstetrícia.	Libro electrónico que abarca de manera muy extensa el campo de la anestesia para profesionales de la obstetricia.	1	40	
221	MusculoSkeletal Imaging Teaching Files	Uhrad.com	http://www.uhrad.com/msiarc.htm	2005-05-01	Arxius de casos clìnics i imatges de trastorns mucle-esquelètics.	Archivos con casos clínicos e imágenes de trastornos muculo-esqueléticos.	1	48	
130	Medecine et Santé au Travail	G. Prost, A. Bergeret, P. Davezies, J.C. Normand	http://spiral.univ-lyon1.fr/polycops/MedecineTravail/MedTravail-1.html	2005-04-03	Es basa principalment en la descripció i pautes a seguir en el treball relacionat amb la salut pública com la seguretat social.	Se basa principalmente en la descripción y pautas a seguir en el trabajo relacionado con la salud pública como la seguridad social.	1	32	
131	A Revolutionary Approach to Prostate Cancer	Aubrey Pilgrim, David Crawford	http://prostate-help.org/download/pilgrim/005intro.pdf	2005-04-03	El propòsit primari d´aquest llibre es ajudar a informar en les seves opcions del tractament pel càncer de pròstata.	El propósito primario de este libro es ayudar a informar en sus opciones del tratamiento para el cáncer de próstata.	1	42	
132	Cancer Management : A Multidisciplinary Approach	Richard Pazdur, Lawrence R. Coia, William J. Hoskins, Lawrence D. Wagman	http://www.cancernetwork.com/handbook/contents.htm	2005-04-03	Llibre indicat pels especialistes sobre el càncer en el qual es descriu múltiples casos de càncer i les complicacions que poden presentar.	Libro indicado para los especialistas sobre el cáncer en el cual se describe múltiples casos de cáncer y las complicaciones que pueden presentar.	1	42	
133	Cancer Medicine	Robert C. Bast Jr., Donald W. Kufe, Raphael E. Pollock, Ralph R. Weichselbaum, James F. Holland, Emil Frei III, Ted S. Gansler.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=cmed.TOC&depth=2	2005-04-03	La quinta edició d´aquest llibre, segueix reflexant el pàs notable en el qual el nou coneixement està convertint-se i està accentuant l´importància de tindre la última informació per planejar la cura dels pacients de càncer.	La quinta edición de este libro, sigue reflejando el paso notable en el cual el nuevo conocimiento está siendo convertido y está acentuando la importancia de tener la última información para planear el cuidado de los pacientes del cáncer.  	1	42	
33	A Guide to the Clinical Care of Women with HIV2001 	Anderson, J.	http://hab.hrsa.gov/womencare.htm	2005-03-25	Aquesta guia mostra informació sobre els problemes ginecològics associats al HIV, i descriu les consideracions psicosocials, psiquiàtriques i farmacològiques associades a aquesta malaltia.	Esta guía muestra información sobre los problemas ginecológicos asociados con el HIV, y describe además las consideraciones psicosociales, psiquiátricas y farmacológicas asociadas a esta enfermedad.	1	0	
137	Mammography and Beyond: Developing Technologies for the Early Detection of Breast Cancer	Sharyl J. Nass, I. Craig Henderson, and Joyce C. Lashof, Editors.	http://www.nap.edu/books/0309072832/html	2005-04-23	Relacionat amb l´investigació actual sobre la detecció a temps del càncer de pit.	Relacionado con la investigación actual sobre la detección a tiempo del cáncer de pecho.	1	42	
138	Oftalmología	Francisco Javier Padilla de Alba, Claudia Recillas Gispert.	http://www.drscope.com/privados/pac/generales/oftalmologia/index.html	2005-04-23	Complet llibre que trata els transtorns típics com l´estrabisme, còrnia, glaucoma,...i que permet una autoevaluació sobre el tema.	Completo libro que trata los transtornos típicos como estrabismo, córnea, glaucoma,...y que permite una autoevaluación sobre el tema.	1	41	
146	WorldOrtho Orthopaedic Textbook	Eugene Sherry, Editor.	http://www.worldortho.com/database/etext/	2005-04-24	Llibre de text electrònic pels estudiants i professionals. Estructurat en 16 capítols que incideix en el món de l´ortopèdia.	Libro de textos electrónico para los estudiantes de medicina y profesionales. Estructurado en 16 capítulos que incide en el mundo de la ortopedia.	1	12	
147	Ambulatory Healthcare Pathways for Ear, Nose, and Throat Disorders 	Terence M. Davidson	http://www-surgery.ucsd.edu/ent/DAVIDSON/Pathway/	2005-04-24	Llibre electrónic encaminat a la cura dels transtorns relacionats amb la oïda, el nas i la gola.	Libro electrónico encaminado a la cura de los transtornos relacionados con el oído, la nariz y la garganta.	1	44	
149	Oral Pathology Images	William Crawford	http://www.usc.edu/hsc/dental/opath/index.html	2005-04-24	Guia d´estudi molt completa que inclou imatges de transtorns orals.	Guía de estudio muy completa que incluye imágenes de transtornos orales	1	11	
150	Practical ENT For Primary Care Physicians 	MM Carr	http://icarus.med.utoronto.ca/carr/manual/outline.html	2005-04-24	Llibre de medicina que tracta transtorns auditius i orals per les primeres cures i enfocat als metges locals.	Libro de medicina que trata transtornos auditivos y orales para sus primeros cuidados y enfocado a los medicos locales.	1	44	
153	Atlas of Liver Pathology	Frank A. Mitros	http://www.vh.org/adult/provider/pathology/LiverPathology/Text/AtlasLiverPathology.html	2005-04-24	Atlas de la patologia del fetge: un llibre de text multimèdia de la patologia del fetge.	Atlas de la patología del hígado:  Un libro de texto multimedia de la patología del hígado.	1	3	
154	Lecciones de Anatomía Patológica	Benedicto Chuaqui J., Editor	http://escuela.med.puc.cl/paginas/publicaciones/AnatomiaPatologica/Indice.html	2005-04-24	12 capitols on es tracta les anotomies patològiques de l´Aparell Cardiovascular, Respiratori, Digestiu, etc.	12 capítulos donde se trata las anatomías patológicas del Aparato Cardiovascular, Respiratorio, Digestivo, etc.	1	3	
157	Approaching Death: Improving Care at the End of Life 	Marilyn J. Field, Christine K. Cassel, Editors.	http://www.nap.edu/books/0309063728/	2005-04-24	Llibre que tracta sobre el sistema de la cura del metge i la responsabilitat sobre el pacient.	Libro que trata sobre el sistema del cuidado médico y la responsabilidad sobre el paciente.	1	20	
39	Dying to Quit: Why We Smoke and How We Stop 	Janet Brigham	http://www.nap.edu/books/0309064090/html/index.html	2005-03-25	Llibre basat en un ampli estudi de les conseqüències que comporta fumar i les seves possibles causes d´adicció.	Libro basado en un amplio estudio de las consecuencias que conlleva el fumar y sus posibles causas de adicción.	1	34	
177	When Death is Sought	New York State Department of Health	http://www.health.state.ny.us/nysdoh/provider/death.htm	2005-04-29	Suïcidi assitit i Euthanasia en el context mèdic.	Suicidio asistido y Euthanasia en el contexto médico.	1	0	
182	Pediatric Emergency Manual	Erica A. Kirsch, Editor	http://www.vnh.org/PediatricEmergencyManual/	2005-04-29	Manual Pediàtric d´emergència facilitat pel Departament de Pediatria Militar en Lackland, Texas.	Manual Pediatrico de emergencia facilitado por el Departamento de Pediatria Militar en Lackland, Texas.	1	45	
187	A First Course in Pharmacokinetics and Biopharmaceutics	David Bourne	http://www.boomer.org/c/p1/	2005-04-30	Primer curs sobre com les drogues es desenvolupen en el cos i els processos que controlen la seva absorció, distribució i metabolisme; entre altres temes.	Primer curso sobre cómo las drogas se desenvuelven en el cuerpo y los procesos que controlan su absorción, distribución y metabolismo; entre otros temas.	1	19	
224	Basic Chest X-Ray Review	W. Carpenter, Ph. D.	http://rad.usuhs.mil/rad/chest_review/index.html	2005-05-01	Indicacions bàsiques en el procediment d´aplicar raigs-X al pit.	Indicaciones básicas en el procedimiento de aplicar rayos-X al pecho.	1	48	
190	Drug Information	American Society of Health-System Pharmacists 	http://www.nlm.nih.gov/medlineplus/druginformation.html	2005-04-30	Un producte de la Societat Estadounidense de Farmacèutics del Sistema de Salut, on es dona informació sobre centenars de medicines de recepta y venta lliure.\r\n\n	Un producto de la Sociedad Estadounidense de Farmacéuticos del Sistema de Salud, donde se da información sobre centenares de medicinas de receta y de venta libre.	1	19	
191	Electronic Orange Book	FDA ( Food and Drug Administration)	http://www.fda.gov/cder/ob/default.htm	2005-04-30	Anàlisi en profunditat de una llarga llista sobre els tipus de drogues aprovades.	Análisis en profundidad de una larga lista sobre los tipos de drogas aprovados.	1	19	
192	Screening Physical Exam	Arcot J. Chandrasekhar	http://www.meddean.luc.edu/lumen/meded/medicine/pulmonar/pd/contents.htm	2005-04-30	Llibre enfocat als estudiants avançats i metges interessats en el diagnòstic fìsic.\r\n\n	Libro enfocado a los estudiantes avanzados y médicos interesados en el diagnótico físico.	1	28	
193	Shipwreck´s Go-By Physical Examination Guide	Frank Carvalho	http://www.vnh.org/Shipwreck/Shipwreck.html	2005-04-30	Guia general del trastorns físics i del mètode a seguir per la seva examinació.	Guía general de los trastornos físicos y del modo a seguir para su examinación.	1	28	
194	Manual de Fisiología y Biofísica para estudiantes de Medicina	Ricardo Montoreano	http://www.fundabiomed.fcs.uc.edu.ve/inicio_montoreano.html	2005-04-30	Manual dedicat als estudiants de Fisiologia i Biologia que consta de 8 capìtols bàsics de fàcil accés i comprensió.	Manual dedicado a los estudiantes de Fisiología y Biología que consta de 8 capítulos básicos de fácil acceso y compresión.	1	0	
195	Textbook in Medical Physiology And Pathophysiology: Essentials and clinical	Poul-Erik Paulev	http://www.mfi.ku.dk/ppaulev/content.htm	2005-04-30	33 capítols dedicats a les patologies físiques del sistema nerviós, respiratori, circular, etc.	33 capítulos dedicados a las patología físicas del sistema nervioso, respiratorio, circular, etc.	1	0	
196	CDC Prevention Guidelines System	Departamento de Salud y Servicios Humanos	http://www.phppo.cdc.gov/cdcrecommends/AdvSearchV.asp	2005-04-30	Web dedicada a la medicina preventiva on s´exposa i s´explica una gran quantitat de malalties. La web està disponible en diversos idiomes inclós el castellà.	Web dedicada a la medicina preventiva donde se expone y se explica una gran cantidad de enfermedades. La web está disponible en varios idiomas incluido el castellano.	1	34	
199	Depression in Primary Care: Volume 1	Agency for Health Care Policy and Research (AHCPR) 	http://www.mentalhealth.com/bookah/p44-d1.html	2005-04-30	Guia per la cura primaria en la detecció i diagnòstic de la depressió.	Guía para el cuidado primario en la detección y diagnóstico de la depresión.	1	47	
200	Depression in Primary Care: Volume 2	Agency for Health Care Policy and Research (AHCPR) 	http://www.mentalhealth.com/bookah/p44-d2.html	2005-04-30	Volum 2 del títol "Depression in Primary Care" on es tracta la depressió de caràcter agut.	Volumen 2 del título "Depression in Primary Care" donde se trata la depresión de carácter agudo.	1	47	
202	Mental Health: A Report of the Surgeon General	David Satcher, M.D	http://www.surgeongeneral.gov/library/mentalhealth/home.html	2005-04-30	Aquest informe fa evident que la neurologia de la salut mental ha emergit com una de les àreas més emocionants de l´activitat cientìfica i de l´investigació humana.	Este informe hace evidente que la neurología de la salud mental ha emergido como una de las areas más emocionantes de la actividad científica y de la investigación humana. 	1	47	
203	Mental Health: Culture, Race, and Ethnicity	Surgeon General	http://www.surgeongeneral.gov/library/mentalhealth/cre/	2005-04-30	Dedicat a la cultura, la raça i la pertinença ètnica de la salut mental dels pacients.	Dedicado a la cultura, la raza y la pertenencia étnica de la salud mental de los pacientes.	1	47	
206	Healthy People 2010	Healthy People	http://www.healthypeople.gov/document/tableofcontents.htm	2005-04-30	El projecte sa 2010 dona accés a l´informació sobre un projecte experimental per fer les estrategies evidents basades en la gent sana del 2010 i els seus objectius a trobar.	El proyecto sano 2010 da acceso a la información sobre un proyecto experimental para hacer las estrategias evidentes basadas en la gente sana del 2010 y sus objetivos a encontrar.	1	34	
207	Making Health Care Safer: A Critical Analysis of Patient Safety Practices	Robert M. Wachter	http://www.ahrq.gov/clinic/ptsafety/	2005-04-30	Anàlisi en profunditat de la cura mèdica en la pràctica amb la seguretat del pacients.	Análisis en profundidad del cuidado médico en la práctica con la seguridad de los pacientes.	1	34	
208	Asthma Management Handbook	National Asthma Council (Australia)	http://www.nationalasthma.org.au/publications/amh/amhcont.htm	2005-05-01	El manual 2002 sobre la gerència de l´asma conté moltes actualitzacions que reflexan l´evolució constant de la filosofia, de les tècniques i del coneixement de la gerència.	El manual 2002 sobre la gerencia del asma contiene muchas actualizaciones que reflejan la evolución constante de la filosofía, de las técnicas y del conocimiento de la gerencia.	1	46	
209	Atlas Pulmonaire	M. Decousus, F. Dubois, R.C. Munsch, L. Yeboles	http://www.univ-st-etienne.fr/lbti/mednucl/atlaspulm/atlaspulm.htm	2005-05-01	Atles electrònic en francès dedicat a la anatomia pulmonar.	Atlas electrónico en francés dedicado a la anatomía pulmonar.	1	46	
210	Bronchology	A. Haye Saeed	http://www.szabist.edu.pk/bronchology/p1.htm	2005-05-01	Basat en el passat, present i futur dels procediments de diagnòstic per la neumologia.	Basado en el pasado, presente y futuro de los procedimientos de diagnóstico para la neumología.	1	46	
211	Clearing the Air: Asthma and Indoor Air Exposures	Committee on the Assessment of Asthma and Indoor Air	http://books.nap.edu/books/0309064961/html/	2005-05-01	Llibre especialitzat en els transtorns respiratoris como l´asma i els agents externs que la causen.	Libro especializado en los transtornos respiratorios como el asma y los agentes externos que la causan.	1	46	
213	Emergency Management of Acute Asthma	Scottish Intercollegiate Guidelines Network ( SIGN)	http://www.sign.ac.uk/guidelines/published/support/guideline63/download.html	2005-05-01	14 capìtols en format PDF enfocat a la gerència d´emergencia en els casos d´asma agut.	14 capítulos en formato PDF enfocado a la gerencia de emergencia en los casos de asma agudo.	1	46	
216	Approaches To Differential Diagnosis In Musculoskeletal Imaging 	Michael L. Richardson	http://www.rad.washington.edu/mskbook/	2005-05-01	Llibre que parla sobre la radiologia musclesquelètica i el diagnòstic dels trastorns que es poden sufrir.	Libro que habla sobre la radiología musculoesquelética y el diagnóstico de los trastornos que se pueden sufrir.	1	48	
217	Basics of MRI	Joseph P. Hornak	http://www.cis.rit.edu/htbooks/mri/inside.htm	2005-05-01	Principis basics de la resonància magnètica nuclear.	Principios básicos de la resonancia magnética nuclear.	1	48	
228	Surgical Treatment	Holzheimer, Rene G., Mannick, John A.. Editors	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=surg.TOC	2005-05-01	16 capítols dedicats al tractament quirúrgic i las complicacions que poden surgir.	16 capítulos dedicados al tratamiento quirúrgico y las complicaciones que pueden surgir.	1	10	
225	Eaton´s Textbook of Hand Surgery	Charles Eaton	http://www.eatonhand.com/	2005-05-01	Web molt completa amb llibre electrònic, referéncies, imatges, tractaments, etc.	Web muy completa con libro electrónico, referencias, imágenes, tratemientos, etc.	1	10	
227	Online Pediatric Surgery Handbook	Humberto L. Lugo-Vicente	http://home.coqui.net/titolugo/handbook.htm	2005-05-01	Disponible en PDF, i enfocat a la pediatria sobre la cirurgia general.	Disponible en PDF, y enfocado a la pediatría sobre la cirugía general.	1	10	
233	Textbooks by Specialty	Virtual Hospital	http://www.vh.org/navigation/vh/textbooks/	2005-05-01	Gran varietat de llibre electrònics de diferents especialitats.	Gran variedad de libros eléctronicos de diferentes especialidades.	1	0	
234	Bookshelf	NCBI	http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=books	2005-05-01	Selecció de més de 30 manuals de biomedicina.	Selección de más de 30 manuales de biomedicina.	1	0	
236	Biblioteca Virtual	Ciberoteca.com	http://www.ciberoteca.com/search/results.asp	2005-05-01	Biblioteca virtual que dóna accés a més de 45.000 textos disponibles a Internet. Inclou: biologia, medicina i salut, medi ambient, química, etc.	Biblioteca virtual que da acceso a más de 45.000 textos disponibles en Internet. Incluye: biología, medicina y salud, medio ambiente, química, etc.	1	0	
6	El Cuerpo Virtual	MEDtropolis	http://www.medtropolis.com/VBody.asp	2005-03-10	Gràfics animats del cos humà. Dirigit al públic en general	Gráficos animados del cuerpo humano. Dirigido al público en general	5	3	cas
258	AIDSinfo Drug Database		http://aidsinfo.nih.gov/DrugsNew/Default.aspx?MenuItem=Drugs&Search=On	2005-05-17	Base de dades de substàncies biològiques provades relacionades amb la SIDA	Base de datos de sustancias biológicas provadas relacionadas con la SIDA	2	0	ang
158	CUIDATGE	Universitat Rovira i Virgili	http://teledoc.urv.es/cuidatge/	2005-04-27	Base de dades que, des de 1993, recull els articles de les revistes de la Biblioteca dInfermeria de la Universitat Rovira i Virgili. Buida unes 165 revistes. Les dinfermeria de manera exhaustiva.	Base de datos que, desde 1993, recoge los artículos de las revistas de la Biblioteca de Enfermería de la Universitat Rovira i Virgili. Vacía unas 165 revistas. Las de enfermería de manera exhaustiva.	2	0	cat
173	TOXNET	National Library of Medicine	http://toxnet.nlm.nih.gov	2005-04-29	Conjunt de bases de dades elaborada per la NLM. Conté informació química (nomenclatura, identificació, estructures) i referències bibliogràfiques sobre els efectes tòxics de medicaments i altres substàncies.	Conjunto de bases de datos elaborada por la NLM. Contiene información química (nomenclatura, identificación, estructuras) y referencias bibliográficas sobre los efectos tóxicos de medicamentos y otras sustancias.	2	19	ang
174	Infomed Drug Guide		http://www.infomed.org/100drugs/	2005-04-29	Informació completa sobre els 100 medicaments més importants (farmacologia, indicacions, contraindicacions, reaccions adverses i interaccions)	Información completa sobre los 100 medicamentos más importantes (farmacología, indicaciones, contraindicaciones, reacciones adversas e interacciones)	2	19	ang
293	Organ System Pathology Images		http://www-medlib.med.utah.edu/WebPath/ORGAN.html#1	2005-09-02	Imatges de diverses patologies elaborat pel "Florida State University College of Medicine"	Imágenes de varias patologías elaborado por el "Florida State University College of Medicine"	5	0	ang
281	dfghfgh		http://www.nba.com	2005-06-15	asdfasd	fasdfasdf	7	0	cat,cas
21	Glosario de términos para lectura crítica (CASP España)	CASP España	http://www.hrc.es/investigacion/mbe_glosario.html	2005-03-17	Glossari de termes per a la lectura crítica en MBE elaborat per CASP España que té per objectiu ensenyar i difondre habilitats de recerca i lectura crítica de l´evidència entre les persones que prenen decisions en els diferents nivells del sistema de salut. 	Glosario de términos para la lectura crítica en MBE elaborado por CASP España que tiene por objetivo enseñar y  difundir  habilidades de búsqueda y lectura crítica de la evidencia entre las personas que toman decisiones en los diferentes niveles del sistema de salud.	5	0	cas
255	Scottish Intercollegiate Guidelines Network 	Scottish Intercollegiate Guidelines Network	http://www.sign.ac.uk/guidelines/published/index.html	2005-05-13	The Scottish Intercollegiate Guidelines Network (SIGN) develops evidence based clinical practice guidelines for the National Health Service (NHS) in Scotland. SIGN guidelines are derived from a systematic review of the scientific literature and are designed as a vehicle for accelerating the translation of new knowledge into action to meet our aim of reducing variations in practice, and improving patient-important outcomes.	The Scottish Intercollegiate Guidelines Network (SIGN) develops evidence based clinical practice guidelines for the National Health Service (NHS) in Scotland. SIGN guidelines are derived from a systematic review of the scientific literature and are designed as a vehicle for accelerating the translation of new knowledge into action to meet our aim of reducing variations in practice, and improving patient-important outcomes.	5	0	ang
253	CMA Infobase. Canada´s database of clinical practice guidelines	Canadian Medical Association	https://www.cma.ca/En/Pages/clinical-practice-guidelines.aspx	2005-05-13	Base de dades de la Canadian Medical Association que recull les guies clíniques fetes per organitzacions mèdiques canadenques.\r\n\n	Base de datos de la Canadian Medical Association que recoge las guías clínicas hechas por organizaciones médicas canadienses.	3	0	ang
237	Centre for Evidence-Based Medicine	Centre for Evidence-Based Medicine	http://www.cebm.net/category/ebm-resources/	2005-05-02	"Centre for Evidence-Based Medicine" està ubicat a Oxford (UK) i el seu objectiu és promoure, donar suport i facilitar els recursos necessaris per desenvolupar la MBE.	"Centre for Evidence-Based Medicine" está ubicado en Oxford (Reino Unido) y su objetivo es promover, dar soporte y facilitar los recursos necesarios para desarrollar la MBE.	3	0	ang
28	Rare Diseases Terms	National Institutes of Health. Office of Rare Diseases	http://ord.aspensys.com/asp/diseases/diseases.asp	2005-03-17	Glossari que ofereix la "Office of Rare Diseases" sobre termes relacionats amb malalties rares o poc freqüents.	Glosario que ofrece la "Office of Rare Diseases" sobre términos relacionados con enfermedades raras o poco frecuentes.	6	0	ang
100	BloodLine Image Atlas	Carden Jennings Publishing Co., Ltd. 	http://image.bloodline.net	2005-04-02	Ofereix més de 800 imatges hematològiques que representen desordres i malalties de la sang.	Ofrece más de 800 imágenes hematológicas que representan desórdenes y enfermedades de la sangre.	5	21	ang
399	The Internet Journal of Plastic Surgery		http://www.ispub.com/ostia/index.php?xmlFilePath=journals/ijps/front.xml	2006-09-15	Revista online gratis	Revista online gratis	3	0	ang
77	Trauma Handbook	K. Gunning, Editor	http://www.swsahs.nsw.gov.au/livtrauma/education/handbook.asp	2005-03-26	Manual de Traumatologia del "Liverpool Hospital" molt ben estructurat, fàcil de consultar jeràrquicament.	Manual de Traumatología del "Liverpool Hospital" muy  bien estructurado, fácil de consultar jerárquicamente.	1	26	ang
286	Microbiology Glossary		http://www.unixl.com/dir/life_sciences/microbiology/	2005-09-02	Glossari de microbiologia elaborat per UniXL 	Glosario de microbiología elaborado por UniXL	6	0	ang
40	Reducing Tobacco Use: A Report of the Surgeon General	U.S. Department of Health and Human Servives	http://www.cdc.gov/tobacco/sgr/sgr_2000/FullReport.pdf	2005-03-25	Informe elaborat pel CDC que forma part del pla nacional nordamericà "Healthy People 2010"	Informe elaborado por el CDC que forma parte del plan nacional norteamericano "Healthy People 2010"	1	34	ang
176	Informació de medicaments de Medline Plus	National Library of Medicine (USA)	http://www.nlm.nih.gov/medlineplus/spanish/druginformation.html	2005-04-29	Aporta informació completa de més de 9000 medicaments	Brinda información completa de más de 9000 medicamentos	2	19	ang
124	Management of Severe Malnutrition	World Health Organization	http://whqlibdoc.who.int/hq/1999/a57361.pdf	2005-04-02	Manual per la direcció de la desnutrició indicat per metges i persones dedicades a la salut. (Font: WHO)	Manual para la dirección de la desnutrición indicado para médicos y personas dedicadas a la salud. (Fuente: WHO)	1	17	ang
397	Interactive cardiovascular and thoracic surgery		http://icvts.ctsnetjournals.org/	2006-09-15	Revista gratis online	Revista gratis online	3	0	ang
10	Introduction to Cardiothoracic Imaging	C. Carl Jaffe, MD, FACC i Patrick J. Lynch, MS (Yale Univ.)	http://www.yale.edu/imaging/	2005-03-11	Atles anatòmic del tòrax amb les seves corresponents imatges radiològiques. (Font: Yale Univ.)	Atlas anatómico del tórax con sus correspondientes imágenes radiológicas. (Fuente: Yale Univ.)	5	3	ang
284	PubMed	National Center for Biotechnology Information (NCBI)	http://www.ncbi.nlm.nih.gov/entrez/query.fcgi	2005-06-30	Base de Dades desenvolupada per National Center for Biotechnology Information (NCBI) que inclou més de 22 milions de referències bibliogràfiques d´articles publicats a revistes biomèdiques. 	Base de datos desarrollada por National Center for Biotechnology Information (NCBI) que incluye más de 22 millones de referencias bibliográficas de artículos publicados en revistas biomédicas.	2	0	ang
445	GuíaSalud: Preguntas Clínicas en español 	Gu�aSalud	http://www.guiasalud.es/opbe/busqueda/preguntas_clinicas/index.html	2009-03-10	Cercador personalitzat sobre preguntes clíniques. Els recursos inclosos en aquests cercadors han estat avaluats i valorats per GuíaSalud, garantint, així, la qualitat dels resultats. 	Buscador personalizado sobre preguntas clínicas. Los recursos incluidos en estos buscadores han sido evaluados y valorados por GuíaSalud, garantizando, así, la calidad de sus resultados. 	3	0	cas
301	Enciclopedia de Medicina		http://www.umm.edu/esp_ency/index/	2006-03-22	Enciclopedia en castellà de la "Univ. of Maryland Medical Center". Es pot cercar per símptomes, lesions, malalties, cirurgia, nutrició, exàmens, ...	Enciclopedia en español de la "Univ. of Maryland Medical Center". Se puede buscar por síntomas, lesiones, enfermedades, cirugéa, nutrición, exámenes, ...	6	0	cas
302	Glosario de términos utilizados en las enfermedades reumáticas		http://www.artritiscentral.com/html/spglossary.htm	2006-03-22	Glossari de termes de reumatologia elaborat per "Artritis Central"	Glosario de terminos de reumatología elaborado por "Artritis Central"	6	0	cas
305	Bulletin on the Rheumatic Diseases		http://www.arthritis.org/research/bulletin/archives.asp	2006-03-22	Es pot consultar el periode 2000-2004	Se puede consultar el período 2000-2004	3	0	ang
306	Manual de exploraciones en Medicina Nuclear para enfermería		http://www.juntadeandalucia.es/servicioandaluzdesalud/hrs/enfermeria_2003/publicaciones/medicina_nuclear.pdf	2006-03-22	Elaborat per: Hospital Universitario Reina Sofía	Elaborado por: Hospital Universitario Reina Sofía	1	0	cas
309	Lista de correo electrónico: RADIOLOGIA		http://www.rediris.es/list/info/radiologia.html	2006-03-23	Llista de distribució de RedIRIS	Lista de distribución de RedIRIS	3	0	cas
310	NEUROFISIO 		http://www.rediris.es/list/info/neurofisio.es.html	2006-03-23	Fòrum sobre Neurofisiologia Clínica (de redIRIS)	Foro sobre Neurofisiología Clínica (de redIRIS)	3	0	cas
315	Indicadores de Salud Ambiental		http://www.msc.es/ciudadanos/saludAmbLaboral/medioAmbiente/indAmbientales.htm	2006-03-24	Pàgina web del Ministerio de Sanidad y Consumo dedicat a Salut i Medi Ambient	Página web del Ministerio de Sanidad y Consumo dedicada a Salud y Medio Ambiente	3	0	cas
318	Diabetes dictionary		http://diabetes.niddk.nih.gov/dm/pubs/dictionary/index.htm	2006-03-24	Diccionari de la "Canadian Diabetes Association"	Diccionario de la "Canadian Diabetes Association"	6	0	ang
322	Cancer Informatics		http://www.la-press.com/caninfo.htm	2006-03-24	Revista sorgida el 2005 que tracta la Bioinformàtica i Informàtica mèdica en les seves aplicacions en el diagnòstic i tractament del càncer.	Revista surgida en 2005 entorno a la Bioinformática e Informática médica en sus aplicaciones en el diagnóstico y tratamiento del cáncer.	3	0	ang
331	GeriatricWeb		http://geriatricweb.sc.edu/	2006-03-27	Web acreditada amb molta informació sobre geriatria: sindromes, psiquiatria geriàtrica, cures, etc.	Web acreditada con mucha información sobre geriatría: síntomas, psiquiatría geriátrica, cuidados, etc.	3	0	ang
339	Restriction Enzyme Database, REBASE		http://rebase.neb.com/rebase/rebase.html	2006-03-28	Pàgina oficial de la base de dades REBASE, amb diferents opcions de cerca\r\n\n	Página oficial de la base de datos REBASE, con diferentes formas de búsqueda\r\n\n	3	0	ang
340	Neurovia		http://www.neurovia.org/	2006-03-28	Revista digital de neurocirurgia. Es poden descarregar els arxius i també conté casos clínics des de 1999	Revista digital de neurocirugía. Se pueden descargar los archivos y también contiene casos clínicos desde 1999	3	0	cas
341	NEUROCIRUGIA		http://www.rediris.es/list/info/neurocirugia.es.html	2006-03-28	Fòrum de RedIRIS sobre temes neuroquirúrgics que té com a objectiu la comunicació entre els membres de la comunitat neuroquirúrgica utilitzant els recursos que hi ha a Internet	Foro de RedIRIS sobre temas neuroquirúrgicos que tiene como objetivo la comunicación entre los miembros de la comunidad neuroquirúrgica usando los recursos que nos brinda Internet\r\n\n	3	0	cas
342	NEUROSURGERY: ON-CALL		http://www.neurosurgery.org/	2006-03-28	Recurs molt complet de la American Association of Neurological Surgeons (AANS) i el Congress of Neurological Surgeons (CNS)\r\n\n	Recurso muy completo de la American Association of Neurological Surgeons (AANS) y el Congress of Neurological Surgeons (CNS)	3	0	ang
349	Familydoctor		http://familydoctor.org/	2006-03-28	Portal de la American Academy of Family Physicians	Portal de la American Academy of Family Physicians	3	0	ang
350	Enfermedades Raras		http://www.hon.ch/HONselect/RareDiseases/index_sp.html	2006-03-28	Llista de la HON Foundation	Lista de la HON Foundation	3	0	cas
268	La gestión del cuidado en enfermería		http://www.fundaciogrifols.org/docs/pub12%20esp.pdf	2005-06-02	 Lètica del cuidar planteja que hi ha una dimensió ètica intrínseca a lacte de cuidar que enriqueix el discurs ètic sanitari i lajuda a situar des de la perspectiva de lusuari, del pacient i la família que reben latenció. De quina manera cuiden les infermeres planteja una noció sobre què sha de fer i com dur-ho a terme i adquireix una rellevància important si de debò es vol dirigir el model assistencial cap al client, pacient o usuari. En lorganització dun servei sanitari shan de considerar els principis bàsics del cuidar professional com a mínim amb la mateixa importància que els principis bàsics del tractament de les malalties. (Font: Fundació Víctor Grífols i Lucas)	 La ética del cuidar plantea que hay una dimensión ética intrínseca en los actos de cuidar que enriquece el discurso ético sanitario y ayuda a situarlo desde la perspectiva del usuario, paciente y familia que reciben la atención. Cómo cuidan las enfermeras plantea una noción acerca de lo que debe hacerse y cómo llevarlo a cabo y adquiere una relevancia importante si de verdad se quiere dirigir el modelo asistencial hacia el cliente, paciente o usuario. En la organización de un servicio sanitario hay que considerar los principios básicos del cuidado profesional como mínimo con la misma importancia que los principios básicos del tratamiento de las enfermedades. (Fuente: Fundació Víctor Grífols i Lucas)	1	51	cas
398	Videos of Surgical Procedures		http://www.nlm.nih.gov/medlineplus/surgeryvideos.html	2006-09-15	Videos de cirurgia (no cal descarregar-los)	Videos de cirugía (no requiere descarga)	5	0	ang
319	Haz-Map		http://hazmap.nlm.nih.gov/	2006-03-24	"Occupational Exposure to Hazardous Agents", de la NLM. Inclou diverses opcions de consulta i un golssari.	"Occupational Exposure to Hazardous Agents", de la NLM. Incluye varias opciones de consulta y un glosario.	2	0	ang
312	Actualización en Alergia Ocular		http://www.esteve.es/EsteveArchivos/1_8/Ar_1_8_46_APR_1.pdf	2006-03-23	Volum 1 de 3. <br>Anar al <a href="http://www.esteve.es/EsteveArchivos/1_8/Ar_1_8_47_APR_1.pdf"> vol. 2 </a><br> \r\n\nAnar al <a href="http://www.esteve.es/EsteveArchivos/1_8/Ar_1_8_49_APR_1.pdf"> vol. 3 </a> <br>\r\n\nAutors: JOAN BARTRA TOMÀS, ELENA ARRONDO MURILLO	Tomo 1 de 3. <br>Ir al <a href="http://www.esteve.es/EsteveArchivos/1_8/Ar_1_8_47_APR_1.pdf"> tomo 2 </a><br> \r\n\nIr al <a href="http://www.esteve.es/EsteveArchivos/1_8/Ar_1_8_49_APR_1.pdf"> tomo 3 </a><br>\r\n\nAutores: JOAN BARTRA TOMÀS, ELENA ARRONDO MURILLO	1	0	cas
127	A guide to Effective Care in Pregnancy and Childbirth	Murray Enkin, Marc J.N.C. Keirse, James Neilson, Caroline Crowther, Lelia Duley, Ellen Hodnett and Justus Hofmeyr	http://www.childbirthconnection.org/article.asp?ClickedLink=194&ck=10218&area=2	2005-04-02	Guia de fàcil accés i comprensió enfocada a la cura eficaç durant l´embaràs i el part. (Font: Childbirth Connection)	Guía de fácil acceso y comprensión enfocada al cuidado eficaz durante el embarazo y el parto. (Fuente: Childbirth Connection)	1	40	ang
198	Primary Care Clinical Practice Guidelines	Peter Sam, MD.	http://medicine.ucsf.edu/resources/guidelines/	2005-04-30	Lloc dedicat a establir unes pautes clíniques sobre les cures primàries al pacient. (Font: Univ. of California)	Sitio dedicado a establecer unas pautas clínicas sobre los cuidados primarios al paciente. (Fuente: Univ. of California)	1	26	ang
143	Oral Pathology	William Crawford	http://www.usc.edu/hsc/dental/opfs/	2005-04-23	Llibre molt complet de les patologies orals que inclou diccionari alfabètic. (Font: Univ. of Southern California School of Dentistry)	Libro muy completo de las patologías orales que incluye diccionario alfabético. (Fuente: Univ. of Southern California School of Dentistry)	1	11	ang
64	Guía Básica para el Tratamiento del Paciente quemado	Carlos De los Santos	http://www.quemados.com/	2005-03-26	Concreta el coneixement actualitzat sobre el tractament de les cremades, de forma senzilla però sense escatimar informacions i dades útils, també ens presenta el tractament del pacient cremat com una especialitat ben definida. (Autor: Dr. Carlos Enrique De Los Santos González)	Concreta el conocimiento actualizado sobre el tratamiento de las quemaduras, de forma sencilla pero sin escatimar informaciones y datos útiles, también nos presenta el manejo del paciente quemado como una especialidad bien definida. (Autor: Dr. Carlos Enrique De Los Santos González)	1	2	cas
109	Handbook of Medical Informatics	J.H van Bemmel, M.A. Musen	http://www.mieur.nl/mihandbook/r_3_3/handbook/homepage_self.htm	2005-04-02	El propòsit del manual és proporcionar una descripció sistemàtica de la informàtica mèdica pels estudiants de medicina i infermeria, i metges. (Editor: J.H. van Bemmel, Erasmus University, Rotterdam)	El propósito del manual es proporcionar una descripción sistemática de la informática médica para los estudiantes de medicina y enfermería, y médicos. (Editor: J.H. van Bemmel, Erasmus University, Rotterdam)	1	24	ang
17	Handbook of ocular disease management	Review of Optometry Editorial Review Board	http://www.revoptom.com/handbook/hbhome.htm	2005-03-13	Llibre electrònic que permet recuperar informació sobre el tractament de 50 malalties oculars. Informació sobre símptomes, patofisiologia i recomanacions sobre tractaments. (Font: Review of Optometry)	Libro electrónico que permite recuperar información sobre el tratamiento de 50 enfermedades oculares. Información sobre síntomas, patofisiología y recomendaciones sobre tratamientos. (Fuente: Review of Optometry)	1	41	ang
99	Hematology 2005	American Society of Hematology	http://www.asheducationbook.org/	2005-04-02	LLibre electrònic actulitzat on es tracten diversos temes i transtorns hematològics. (Font: American Society of Hematology)\r\n\n	Libro electrónico actualizado donde se tratan multitud de temas y transtornos hematológicos. (Fuente: American Society of Hematology)\r\n\n	1	21	ang
48	Immunobiology	Janeway, Charles A.; Travers, Paul; Walport, Mark; Shlomchik, Mark.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=imm.TOC&depth=2	2005-03-25	Anàlisi sobre la immunobiologia i la immunitat innata. (Font: National Center for Biotechnology Information)	Análisis sobre la inmunobiología y la inmunidad innata. (Fuente: National Center for Biotechnology Information)	1	0	ang
135	Improving Palliative Care for Cancer	Kathleen M. Foley and Hellen Gelband	http://www.nap.edu/books/0309074029/html/	2005-04-03	Llibre dedicat a millorar les cures pels pacients amb càncer. (Font: National Academies Press)	Libro dedicado a mejorar los cuidados para los pacientes con cáncer. (Fuente: National Academies Press)	1	42	ang
394	Guías de práctica clínica		http://www.secardiologia.es/main.asp?w=1024	2006-09-14	Web de la Sociedad Española de Cardiología. Visiteu la secció: Publicaciones/Guías	Web de la Sociedad Española de Cardiología. Visitar la sección: Publicaciones/Guías	1	0	cas
408	REMI - Casos clínicos		http://remi.uninet.edu/casos/album.htm	2006-09-19	Casos clínics publicats a la "Revista Electrónica de Medicina Intensiva"	Casos clínicos publicados en la "Revista Electrónica de Medicina Intensiva"	1	0	cas
277	Industria farmacéutica y progreso médico		http://www.fundaciogrifols.org/docs/pub3%20esp.pdf	2005-06-02	Aquest quadern tracta els conflictes ètics originats pel mateix concepte de progrés mèdic a la vegada que planteja els diferents interessos de la indústria farmacèutica. Compila la ponència La influencia del progreso médico y la industria farmacéutica sobre nuestra salud presentada pel Director del Fondo de Investigación Sanitaria, Dr. Fernando García Alonso, i la ponència La industria farmacéutica y el progreso médico impartida pel Director General dels Laboratorios S.A.L.V.A.T., Sr. Javier Peris. Aquestes dues visions van obrir el debat entre un grup de farmacòlegs, metges, filòsofs i periodistes, les aportacions dels quals també són recollides a la publicació. (Font: Fundació Víctor Grífols i Lucas)\r\n\n	Este cuaderno trata los conflictos éticos originados por el mismo concepto de progreso médico a la vez que plantea los distintos intereses de la industria farmacéutica. Compila la ponencia La influencia del progreso médico y la industria farmacéutica sobre nuestra salud presentada por el Director del Fondo de Investigación Sanitaria, Dr. Fernando García Alonso y la ponencia La industria farmacéutica y el progreso médico impartida por el Director General de los Laboratorios S.A.L.V.A.T., Sr. Javier Peris. Estas dos visiones abrieron el debate entre un grupo de farmacólogos, médicos, filósofos y periodistas, cuyas aportaciones también quedan recogidas en la publicación. (Fuente: Fundació Víctor Grífols i Lucas)\r\n\n	1	51	cas
269	Los fines de la medicina		http://www.fundaciogrifols.org/docs/pub11%20esp.pdf	2005-06-02	 El document que elaborà el grup dinvestigadors del Hastings Center, i que ara traduïm a lespanyol, és un intent de desmitificar la medicina, a fi que lexercici de la mateixa constitueixi efectivament un progrés per a la humanitat. Els fins de la medicina, a finals del segle XX, han de ser alguna cosa més que la curació de la malaltia i lallargament de la vida. (Font: Fundació Víctor Grífols i Lucas)\r\n\n	 El documento que elaboró el grupo de investigadores del Hastings Center, y que ahora traducimos al castellano, es un intento de desmitificar la medicina, a fin de que el ejercicio de la misma constituya efectivamente un progreso para la humanidad. Los fines de la medicina, a finales del siglo XX, deben ser algo más que la curación de la enfermedad y el alargamiento de la vida. (Fuente: Fundació Víctor Grífols i Lucas)\r\n\n	1	51	cas
229	Manual de Traumatología y Ortopedia	Juan Fortune Haverbeck, Jaime Paulos Arenas, Carlos Liendo Palma.	http://escuela.med.puc.cl/paginas/publicaciones/TextoTraumatologia/Trau_Portada.html	2005-05-01	Recull coneixements de traumatologia, ortopèdia, neoplàsies esquelètiques, infeccions osteo-articulars, etc. (Font: Escuela de Medicina Pontificia Univ. Católica de Chile)	Recoge conocimientos de traumatología, ortopedia, neoplasias esqueléticas, infecciones osteo-articulares, etc. (Fuente: Escuela de Medicina Pontificia Univ. Católica de Chile)	1	12	cas
91	Modern Genetic Analysis	Griffiths, Anthony J.F.; Gelbart, William M.; Miller, Jeffrey H.; Lewontin, Richard C.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=mga.TOC	2005-04-01	Llibre destinat als instructors i els estudiants que necessiten un llibre de text que s´apropi a l´estudi del primer ADN. (Font: National Center for Biotechnology Information)	Libro destinado a los instructores y los estudiantes que necesitan un libro de textos que se acerque al estudio del primer ADN. (Fuente: National Center for Biotechnology Information)	1	0	ang
113	Molecular Cell Biology	Lodish, Harvey; Berk, Arnold; Zipursky, S. Lawrence; Matsudaira, Paul; Baltimore, David; Darnell, James E.	http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=mcb.TOC	2005-04-02	Parla sobre els concentrats moleculars de la biologia de la cèl.lula en les macromolècules i les reaccions estudiades pels bioquímics, a més dels processos descrits pels biòlegs de la cèl.lula. (Font: National Center for Biotechnology Information)	Habla sobre los concentrados moleculares de la biología de la célula en las macromoléculas y las reacciones estudiadas por los bioquímicos, además de los procesos descritos por los biólogos de la célula. (Fuente: National Center for Biotechnology Information)	1	0	ang
120	Neurología	Ricardo A. Rangel-Guerra	http://www.drscope.com/privados/pac/generales/neurologia/index.htm	2005-04-02	Conté temes com: hemorràgia intracerebral, cefàlea, epilèpsia, demència, parkinson, etc.; a més, inclou autoevaluació. (Autor: Dr. Ricardo A. Rangel-Guerra)\r\n\n	Contiene temas como: hemorragia intracerebral, cefalea, epilepsia, demencia, parkinson, etc.; además, incluye autoevaluación. (Autor: Dr. Ricardo A. Rangel-Guerra)	1	39	cas
311	Neuroscience		http://www.ncbi.nlm.nih.gov/books/bv.fcgi?call=bv.View..ShowTOC&rid=neurosci.TOC&depth=10	2006-03-23	Per consultar aquest llibre electrònic cal fer una consulta a la barra de cerca (Font: National Center for Biotechnology Information)	Para consultar este libro electrónico hay que hacer una consulta en la casilla de búsqueda (Fuente: National Center for Biotechnology Information)	1	0	ang
364	Medicina de Urgencias y Emergencias		http://www.urgenciasmedicas.org/Revista/ultnum.html	2006-03-31	Revista virtual	Revista virtual	3	0	cas
365	Neumo Clínica		http://neumoclinica.faes.es/index2.html	2006-03-31	Revista digital	Revista digital	3	0	cas
275	Problemas prácticos del consentimiento informado		http://www.fundaciogrifols.org/docs/pub5%20esp.pdf	2005-06-02	 El present quadern reuneix la visió mèdica i la jurídica dels problemes pràctics originats pel consentiment informat. Aquests punts de vista són presentats pel doctor Pablo Simón, Doctor en Medicina per la Universidad Complutense de Madrid amb la ponència El consentimiento informado: abriendo nuevas brechas i pel jurista Carlos Romeo Casabona, Catedràtic de Dret Penal de la Universidad de Deusto amb la ponència El consentimiento informado en la relación entre el médico y el paciente: aspectos jurídicos. Aquesta monografia inclou a més una sèrie de casos pràctics i les visions de diversos especialistes en la matèria. (Font: Fundació Víctor Grífols i Lucas) 	 El presente cuaderno reúne la visión médica y la jurídica de los problemas prácticos originados por el consentimiento informado. Estos puntos de vista vienen presentados por el doctor Pablo Simón, Doctor en Medicina por la Universidad Complutense de Madrid con la ponencia El consentimiento informado: abriendo nuevas brechas y por el jurista Carlos Romeo Casabona, Catedrático de Derecho Penal de la Universidad de Deusto con la ponencia El consentimiento informado en la relación entre el médico y el paciente: aspectos jurídicos. Esta monografía incluye además una serie de casos prácticos y las visiones de diversos especialistas en la materia. (Fuente: Fundació Víctor Grífols i Lucas) 	1	51	cas
38	The 2002 Abbreviated Guide to Medical Management of HIV Infection	John G. Bartlett	http://www.hopkins-aids.edu/publications/abbrevgd/abbrevgd.pdf	2005-03-25	Llbre en format pdf de 161 pàgines on es descriu la infecció del HIV, la teràpia a seguir i les seves conseqüències. (Font: Johns Hopkins Univ. School of Medicine)	Libro en formato pdf de 161 páginas donde se describe la infección del HIV, la terapia a seguir y sus consecuencias. (Fuente: Johns Hopkins Univ. School of Medicine)	1	0	ang
41	Principios de Tratamientos para La Drogadicción: Una Guía Basada en Investigaciones	Instituto Nacional sobre el Abuso de Drogas 	http://www.drugabuse.gov/es/publicaciones/principios-de-tratamientos-para-la-drogadiccion/prologo	2005-03-25	L´Institut Nacional sobre l´Abús de Drogues va organitzar la Conferència Nacional sobre el Tractament per la Drogoaddicció: de l´Investigació a la Pràctica, i també va preparar aquesta guia. La primera secció d´aquesta guia proporciona un resum dels principis característics dels tractaments més efectius. (Font: NIDA)	El Instituto Nacional sobre el Abuso de Drogas organizó la Conferencia Nacional sobre el Tratamiento para la Drogadicción: de la Investigación a la Práctica, y también preparó esta guía. La primera sección de esta guía proporciona un resumen de los principios característicos de los tratamentos más efectivos. (Fuente: NIDA)	1	34	cas
46	The Virtual Anesthesia Textbook	Chris Thompson	http://www.virtual-anaesthesia-textbook.com/	2005-03-25	La seva última actualització considera edicions basades en l´evidència de la supervisió del pacient, el paper de l´entropia espectral d´EEG en la supervisió de l´efecte de la droga anestèsica, la supervisió neuromuscular, aspectes d´organització dels serveis obstètrics de l´anestèsia, etc. (Project co-ordinator:\r\n\nDr. Chris Thompson - Royal Prince Alfred Hospital)\r\n\n	Su última actualización considera ediciones basadas en la evidencia de la supervisión del paciente, el papel de la entropía espectral de EEG en la supervisión de efecto de la droga anestésica, la supervisión neuromuscular, aspectos de organización de los servicios obstétricos de la anestesia, etc. (Project co-ordinator:\r\n\nDr. Chris Thompson - Royal Prince Alfred Hospital)\r\n\n	1	4	ang
66	Atlas of Dermatology	Jeffrey L. Melton, Jason R. Swanson	http://www.meddean.luc.edu/lumen/MedEd/medicine/dermatology/melton/atlas.htm	2005-03-26	Atles molt complet relacionat amb tots el transtorns i malalties que poden afectar la pell. (Font: Loyola Univ.)	Atlas muy completo relacionado con todos los posibles transtornos y enfermedades que pueden afectar a la piel. (Fuente: Loyola Univ.)	5	16	ang
295	Microbiology Video Library		http://www-micro.msb.le.ac.uk/video/default.html	2005-09-02	Videos de microbiologia. (Font: Microbiology @ Leicester)	Videos de microbiología. (Fuente: Microbiology @ Leicester)	5	0	ang
320	Glosario de términos NSM		http://www.insm.es/glosariogr/glosarionsm/keep_upper.php3?url=http://www.insm.es/glosariogr/glosarionsm/terminos	2006-03-24	Glossari de termes associats amb les ciències neurològiques i la Psiquiatria amb unes definicions adaptades al nivell universitari superior. (Font: Instituto de Neurociencias y Salud Mental) 	Glosario de términos asociados con las ciencias neurológicas y la Psiquiatría con unas definiciones adaptadas al nivel universitario superior. (Fuente:  Instituto de Neurociencias y Salud Mental)	6	0	cas
29	Glossary of Oncology Terms	Cheshire Medical Center. Dartmouth-Hitchcock Keene	http://www.cheshire-med.com/programs/kingsbur/terms.html	2005-03-17	Glossari de termes relacionats amb la oncologia. (Font: Cheshire Medical Center) 	Glosario de términos relacionados con la oncología. (Fuente: Cheshire Medical Center)	6	42	ang
290	Glossary of Virology		http://allnurses.com/jump.cgi?ID=4258	2005-09-02	Glossari de Virologia. (Font: allnurses.com)	Glosario de Virología. (Fuente: allnurses.com)	6	0	ang
291	Talking Glossary of Genetic Terms		http://www.genome.gov/glossary.cfm	2005-09-02	Glossari de Genètica amb imatges i àudio. (Font: National Human Genome Research Institute)	Glosario de Genética con imágenes y audio. (Fuente: National Human Genome Research Institute)	6	0	ang
31	The TCRC Glossary For Testicular Cancer and Related Conditions	The Testicular Cancer Resource Center	http://tcrc.acor.org/dictionary.html	2005-03-17	Glossari de termes sobre càncer testicular. (Font: Testicular Cancer Resource Center)	Glosario de términos sobre cáncer testicular. (Fuente: Testicular Cancer Resource Center)	6	0	ang
72	The Electronic Textbook of Dermatology	Drugge Rhett, Dunn Heather A	http://telemedicine.org/stamford.htm	2005-03-26	Llibre electrónic de ràpid accés i multitut de contingut específic relacionat amb enfermetats de la pell. (Font: Internet Dermatology Society)	Libro electrónico de rápido acceso y multitud de contenido específico sobre enfermedades de la piel. (Fuente: Internet Dermatology Society)	1	16	ang
357	Family Practice Notebook		http://www.fpnotebook.com	2006-03-29	Tracta 30 especialitats mèdiques	Trata 30 especialidades médicas	1	0	ang
358	Fisterra		http://www.fisterra.com	2006-03-29	Desenes de guies clíniques a text complet, informació de medicaments, formació, llibres electrònics, etc. Registre gratuït.	Decenas de guías clínicas a texto completo, información de medicamentos, formación, libros electrónicos, etc. Registro gratuito.	3	0	cas
368	Images in Paediatric Cardiology		http://www.health.gov.mt/impaedcard	2006-03-31	Revista online. Es pot cercar per número, per tema, i es pot fer una cerca a la web.	Revista online. Se puede buscar por número, por tema, y se puede hacer una búsqueda en el web.	3	0	ang
360	CDC en español		http://www.cdc.gov/spanish/	2006-03-30	"Centros para el control y prevención de Enfermedades", tracta diversos temes de salut. (Font: Department of Health and Human Services, USA)	"Centros para el control y prevención de Enfermedades", trata varios temas de salud. (Fuente: Department of Health and Human Services, USA)	8	0	cas
362	Diario Médico		http://www.diariomedico.com	2006-03-30	Registre gratuït. Pots cercar informació per especialitat. Inclou cercador de congressos, arxiu per especialitats des de 1997, entrevistes, documents, etc.	Registro gratuito. Puede buscar información por especialidad. Incluye buscador de congresos, archivo por especialidades desde 1997, entrevistas, documentos, etc.	8	0	cas
372	Online Case Studies		http://path.upmc.edu/cases.html	2006-03-31	Casos clínics. (Font: Univ. Pittsburgh Sch. Medicine)	Casos clínicos. (Fuente: Univ. Pittsburgh Sch. Medicine)	8	0	ang
388	INFORME SOBRE LA ANALGESIA REGIONAL EN EL PARTO		http://demo1.sedar.es/index.php?option=content&task=view&id=2&Itemid=5	2006-09-14	Informe sol·licitat per la Dirección General de Atención Primaria y Especializada a la Sociedad Española de Obstetricia y Ginecología i a la Sociedad Española de Anestesiología, Reanimación y Terapia del Dolor.	Informe solicitado por la Dirección General de Atención Primaria y Especializada a la Sociedad Española de Obstetricia y Ginecología y a la Sociedad Española de Anestesiología, Reanimación y Terapia del Dolor.	1	0	cas
390	RECOMENDACIONES PARA COMPROBACIÓN DEL FUNCIONAMIENTO DE SISTEMAS DE ANESTESIA.		http://demo1.sedar.es/index.php?option=content&task=view&id=13&Itemid=5	2006-09-14	Publicat per la Sociedad Española de Anestesiología, Reanimación y Terapéutica del Dolor (SEDAR)	Publicado por la Sociedad Española de Anestesiología, Reanimación y Terapéutica del Dolor (SEDAR)	1	0	cas
396	Intraoperative Videos		http://www.med.nyu.edu/cvsurgery/sp/library/surgery.html	2006-09-14	Videos de cirurgia cardiotoràcica (no cal descarregar-los)	Vídeos de cirugía cardiotorácica (no requiere descarrga)	5	0	cas
409	Atlas de imágenes de Ginecología y Obstetrícia		http://www.zambon.es/areasterapeuticas/03mujer/atlas/atlas.htm	2006-09-19	Citologia, Coloposcopia, Histopatologia, Laparoscòpia, Radiologia, Ecografia, ... etc	Citología, Coloposcopia, Histopatología, Laparoscopia, Radiología, Ecografía, ... etc	5	0	cas
403	Protocol Online		http://www.protocol-online.org	2006-09-18	Protocols gratis 	Protocolos gratis	1	0	ang
356	The Merck Manuals		http://www.merck.com/pubs/	2006-03-29	Accés a: The Merck Manual, The Merck Manual of Health & Aging, The Merck Manual of Diagnosis and Therapy, The Merck Manual of Geriatrics.\r\n\n	Acceso a: The Merck Manual, The Merck Manual of Health & Aging, The Merck Manual of Diagnosis and Therapy, The Merck Manual of Geriatrics\r\n\n	1	0	ang
400	AACE Guidelines		http://www.aace.com/pub/guidelines/	2006-09-15	GPC de la American Association of Clinical Endocrinologists	GPC de la American Association of Clinical Endocrinologists	1	0	ang
117	Atlas of Diseases of the Kidney	Robert W. Schrier	http://www.kidneyatlas.org/toc.htm	2005-04-02	Estructurat en 5 volums de fàcil accés, dedicat al Ronyó. (Editor: Robert W. Schrier)\r\n\n	Estructurado en 5 volúmenes de fácil acceso, dedicado al Riñón. (Editor: Robert W. Schrier)	1	36	ang
89	Atlas of Genetics and Cytogenetics in Oncology and Haematology	Alain Bernheim, Philippe Dessen, Jean Louis Huret	http://www.infobiogen.fr/services/chromcancer/	2005-04-01	L´atles de genètica i citogenètica en oncologia i hematologia és un recurs online dedicat als gens, a la citogenètica, i a les entitats clíniques especialitzades en càncer i malalties propenses. (Font: Infobiogen)	El atlas de genética y citogenética en oncología y hematología es un recurso online online decicado a los genes, a la citogenética, y a las entidades clínicas especializadas en cáncer y enfermedades propensas. (Fuente: Infobiogen)	3	0	ang
50	Cardiac Surgery in the Adult		http://cardiacsurgery.ctsnetbooks.org/current.shtml?ck=nck	2005-03-25	Profund estudi sobre la cirurgia cardiovascular. (Editors: L. Henry Edmunds, Jr.; Lawrence H. Cohn)	Profundo estudio sobre la cirugía cardiovascular. (Editores: L. Henry Edmunds, Jr.; Lawrence H. Cohn)	1	9	ang
371	Casos Clínicos		http://www.servitel.es/aeartroscopia/C_CLINIC/casos/CASOS.htm	2006-03-31	Pàgina moderada per la Dra Yolanda Barón. 	Página moderada por la Dra Yolanda Barón. 	1	0	cas
134	Complications Sévères chez le Patient Cancéreux	Jean - Paul Sculier	http://www.oncorea.com/livres.html	2005-04-03	El llibre és molt útil i pràctic per tractar els pacients amb càncer i la seva cura intensiva. (Font: Oncorea)	El libro es muy útil y práctico para tratar los pacientes con cáncer y su cuidado intensivo. (Fuente: Oncorea)	1	42	fra
270	Corresponsabilidad empresarial en el desarrollo sostenible		http://www.fundaciogrifols.org/docs/pub10%20esp.pdf	2005-06-02	 El concepte de Desenvolupament Sostenible està àmpliament acceptat per la societat, per molts governs, administracions locals, agents socials i també per gran part del sector empresarial. És sabut que no es pot mantenir el creixement econòmic actual. La societat ha dassegurar la capacitat de creixement de les generacions futures sense que quedi limitada per les pràctiques actuals. Cal un canvi cultural on el ciutadà assumeixi la seva responsabilitat i participi daquesta nova forma de vida. Són molts els agents implicats en aquest canvi: el sector empresarial, les administracions, ONGs, escoles de negocis i universitats, organitzacions empresarials, sindicats i premsa. El quadern recull tots aquests punts de vista. La Fundació edita casos pràctics en un <b><a href="http://www.fundaciogrifols.org/docs/pub10casos.pdf"> annexe </a> </b>. (Font: Fundació Víctor Grífols i Lucas)	 El concepto de Desarrollo Sostenible está ampliamente aceptado por la sociedad, por muchos gobiernos, administraciones locales, agentes sociales y por gran parte del sector empresarial. Es sabido que no se puede mantener el crecimiento económico actual. La sociedad debe asegurar la capacidad de crecimiento de las generaciones futuras sin que quede limitada por las prácticas actuales. Es necesario un cambio cultural en el que el ciudadano asuma su responsabilidad y participe de esta nueva forma de vida. Son muchos los agentes implicados en este cambio: sector empresarial, administraciones, ONGs, escuelas de negocios y universidades, sindicatos y prensa. El cuaderno recoge todos estos puntos de vista. La Fundació edita casos prácticos en un <b><a href="http://www.fundaciogrifols.org/docs/pub10casos.pdf"> anexo </a> </b>. (Fuente: Fundació Víctor Grífols i Lucas)	1	51	cas
428	Centro Nacional de Epidemiología		http://www.isciii.es/htdocs/centros/epidemiologia/epidemiologia_presentacion.jsp	2007-02-21	Publica un butlletí setmanal, entre d`altres recursos.	Publica un boletín semanal, entre otros recursos	3	0	cas
391	Diagnòstic Vascular (SEACV)	Sociedad Española de Angiología y Cirugía Vascular (SEACV)	http://www.cdvni.org/	2006-09-14	Web creada per la Sociedad Española de Angiología y Cirugía Vascular (SEACV) per a l´estudi, difusió i aplicació de tècniques diagnòstiques aplicades a la fisiopatologia vascular.	Web creada por la Sociedad Española de Angiología y Cirugía Vascular (SEACV) para el estudio, difusión y aplicación de técnicas diagnósticas aplicadas a la fisiopatología vascular. 	9	0	cas
393	Vascular & Endovascular Surgery - Interesting Cases	Stanford School of Medicine	http://vascular.stanford.edu/techniques/cases.html	2006-09-14	Web de la Stanford School of Medicine amb un ampli contingut en Cirurgia Vascular i Endovascular.  	Web de la Stanford School of Medicine con un amplio contenido en Cirugía Vascular y Endovascular.	3	0	ang
271	Ética y sedación al final de la vida		http://www.fundaciogrifols.org/docs/pub9%20esp.pdf	2005-06-02	 La pràctica de la sedació involucra duna banda el respecte per lautonomia i la dignitat de la persona i per laltra, la promoció de lexcel·lència en els professionals sanitaris que socupen dels malalts en la proximitat de la mort.\r\n\nLobjectiu daquest quadern és publicar el debat que es dugué a terme entre pal·liativistes, oncòlegs, internistes, cirurgians, administradors sanitaris, periodistes, psiquiatres, psicòlegs, infermeres, juristes i bioètics tractant davançar en el coneixement i la bona praxi de la sedació per facilitar la labor dels clínics. (Font: Fundació Víctor Grífols i Lucas)	 La práctica de la sedación involucra por una parte el respeto por la autonomía y dignidad de la persona y por otra, la promoción de la excelencia en los profesionales sanitarios que se ocupan de los enfermos en la proximidad de la muerte.\r\n\nEl objetivo de ese cuaderno es publicar el debate que se realizó entre paliativistas, oncólogos, internistas, cirujanos, administradores sanitarios, periodistas, psiquiatras, psicólogos, enfermeras, juristas y bioéticos tratando de avanzar en el conocimiento y la buena praxis de la sedación para facilitar la labor de los clínicos. (Fuente: Fundació Víctor Grífols i Lucas)	1	51	cas
411	MEDICRIT		http://www.medicrit.com	2006-09-19	Revista gratis online	Revista gratis online	3	0	cas
412	Guías Clínicas		http://www.meiga.info/guias	2006-09-19	Font: Sociedad Gallega de Medicina Interna	Fuente: Sociedad Gallega de Medicina Interna	1	0	cas
413	psiquiatria.com		http://www.psiquiatria.com	2006-09-19	Portal especialitzat sobre Psiquiatria per a professionals en llengua espanyola, amb una difusió en més de 60 països.	Portal especializado sobre Psiquiatría para profesionales en lengua española, con una difusión en más de 60 países.	3	0	cas
414	Psiquiatría		http://www.rediris.es/list/info/psiquiatria.html	2006-09-19	Llista de distribució de RedIRIS	Lista de distribución de RedIRIS	3	0	cas
416	Atlas Parasitológico		http://www.drscope.com/privados/pac/generales/parasitologia/atlas.html	2006-09-19			5	0	cas
422	University of Pittsburgh School of Medicine - Department of Pathology		http://path.upmc.edu/	2007-02-02	Departament de Patologia de la Universitat de Pittsburgh. Més de 30 casos clínics.	Departamento de Patología de la Universidad de Pittsburgh. Más de 30 casos clínicos.	3	0	ang
423	PLoS		http://www.plos.org/	2007-02-15	Public Library of Science. Tot el que s`hi publica és de lliure accés	Public Library of Science. Todo lo que en ella se publica es de libre acceso.	8	0	ang
425	FreeBooks4Doctors		http://www.freebooks4doctors.com/	2007-02-21	Centenars de llibres electrònics de lliure accés	Centenares de libros electrónicos de libre acceso	1	0	ang
427	Online Medical & Bioscience Dictionaries, Glossaries and Terminologies		http://www.medbioworld.com/advice/dict.html	2007-02-21	Llistat de diccionaris online	Listado de diccionarios online	6	0	ang
429	Epidemiologí­a - WHO		http://www.who.int/topics/epidemiology/es/	2007-02-21	Versió en castellà de la secció d`epidemiologia de la OMS	Versión en español de la sección de epidemiología de la OMS	3	0	cas
430	Otorrinolaringología basada en la evidencia		http://www.orlevidencia.org/	2007-02-23	Feta per Otorrinolaringòlegs de l`Hospital U. Puerta del Mar de Cádiz	Creada por Otorrinolaringólogos del Hospital U. Puerta del Mar de Cádiz	3	0	cas
366	Casos Pediátricos On-Line		http://www.webpediatrica.com/casosped	2006-03-31	Col·lecció de casos clínics pediàtrics. Inclou arxiu de casos organitzats per llistat, per especialitats i per patologies. 	Colección de casos clínicos pediátricos. Incluye archivo de casos organizado por listado, por especialidades y por patologías. \r\n\n	3	0	cas
432	Dermatoweb		http://www.dermatoweb.net/	2007-02-23	Té un bon atles, també videos, casos clínics, etc.	Tiene un buen atlas, vídeos, casos clínicos, etc.	3	0	cas
433	Lab Test Online	American Association for Clinical Chemistry (AACC)	http://www.labtestsonline.es/	2007-03-20	Aquesta web és la traducció a la llengua espanyola de Lab Tests Online (LTO), un servei originat en la web de la American Association for Clinical Chemistry (AACC) els drets de la qual de traducció i adaptació a altres llengües pertanyen a la European Diagnostic Manufacturers Association (EDMA). Lab Tests Online s´ha dissenyat per a ajudar-li, com pacient o com professional de la sanitat, a entendre millor les moltes anàlisis que avui dia formen part de l´atenció rutinària als pacients així com del diagnòstic i tractament d´un ampli rang de situacions i malalties. 	Esta web es la traducción a la lengua española de Lab Tests Online (LTO), un servicio originado en la web de la American Association for Clinical Chemistry (AACC) cuyos derechos de traducción y adaptación a otras lenguas pertenecen a la European Diagnostic Manufacturers Association (EDMA). Lab Tests Online se ha diseñado para ayudarle, como paciente o como profesional de la sanidad, a entender mejor los muchos análisis que hoy en día forman parte de la atención rutinaria a los pacientes así como del diagnóstico y tratamiento de un amplio rango de situaciones y enfermedades.	3	0	cas
431	Enllaços de la SEORL		http://www.seorl.net/apartado.asp?apartado=89&iMenu=7	2007-02-23	Enllaços d´ORL: atles, llibres electrònics, videos, etc.	Enlaces de ORL: atlas, libros electrónicos, vídeos, etc.	3	0	cas
419	Sociedad Española de Anatomía Patológica	Sociedad Española de Anatomía Patológica	http://www.seap.es/	2007-02-02	La Sociedad Española de Anatomía Patológica (SEAP)és una societat mèdico-científica, d´àmbit nacional que el seu objectiu principal és fomentar, difondre i recolzar els estudis d´Anatomia Patològica procurant elevar el nivell professional docent i investigador de l´especialitat.	La Sociedad Española de Anatomía Patológica (SEAP)es una sociedad médico-científica, de ámbito nacional cuyo objetivo principal es fomentar, difundir y apoyar los estudios de Anatomía Patológica procurando elevar el nivel profesional docente e investigador de la especialidad.	3	0	cas
437	Evidence Matters	Evidence Matters, Inc	http://www.evidencematters.com/	2008-02-07	Evidence Matters és una eina electrònica de medicina basada en l evidència que permet als professionals clínics una presa de decisions sobre el tractament dels seus pacients basat en l evidència. El seu principal objectiu és oferir un accés ràpid i senzill a l evidència extreta d articles científics en diferents matèries.	Evidence Matters es una herramienta electrónica de medicina basada en la evidencia que permite a los profesionales clínicos una toma de decisiones sobre el tratamiento de sus pacientes basada en la evidencia. Su principal meta es ofrecer un acceso rápido y sencillo a la evidencia extraída de artículos científicos en diferentes materias.	2	0	ang
439	SciELO España - Scientific Electronic Library Online	Biblioteca Nacional de Ciencias de la Salud, Instituto de Salud Carlos III	http://scielo.isciii.es/scielo.php	2008-04-07	Scielo España és una biblioteca virtual formada per una col·lecció de revistes científiques espanyoles de ciències de la salut seleccionades d´acord a uns criteris de qualitat preestablerts. \r\n\nEl projecte és el resultat de la cooperació entre BIREME (Centre Llatinoamericà i del Carib d´informació en Ciències de la Salut),  FAPESP - Fundação de Amparo à Pesquisa do Estado de São Paulo, i està sent desenvolupat a Espanya per la "Biblioteca Nacional de Ciencias de la Salud", gràcies a l´acord de col·laboració establert entre l´OPS/OMS i el "Instituto de Salud Carlos III". \r\n\nLobjectiu principal del projecte és contribuir al desenvolupament de la investigació, augmentant la difusió de la producció científica nacional i millorant i ampliant els mitjans de publicació i l´avaluació dels resultats.   \r\n\n	Scielo España es una biblioteca virtual formada por una colección de revistas científicas españolas de ciencias de la salud seleccionadas de acuerdo a unos criterios de calidad preestablecidos.\r\n\nEl proyecto Scielo es el resultado de la cooperación entre BIREME (Centro Latinoamericano y del Caribe de información en Ciencias de la Salud),  FAPESP - Fundação de Amparo à Pesquisa do Estado de São Paulo, y está siendo desarrollado en España por la Biblioteca Nacional de Ciencias de la Salud, gracias al acuerdo de colaboración establecido entre la OPS/OMS y el Instituto de Salud Carlos III.\r\n\nEl principal objetivo es contribuir al desarrollo de la investigación, aumentando la difusión de la producción científica nacional y mejorando y ampliando los medios de publicación y la evaluación de sus resultados.\r\n\n	8	0	cas
448	TERMCAT, Centre de Terminologia	TERMCAT	http://www.termcat.cat/	2009-03-27	En el Centre de Terminologia TERMCAT, centre que vetlla pel desenvolupament i la integració de la terminologia catalana en els sectors especialitzats, es pot consultar la TO Ciències de la salut (Malalties), un repertori de la col·lecció Terminologia Oberta que recull 16.859 fitxes conceptuals, amb les denominacions en català i anglès. La col·lecció Terminologia Oberta aplega reculls terminològics procedents de treballs de recerca terminològica duts a terme pel centre que es poden baixar lliurement i exportar a qualsevol format. 	En el Centre de Terminologia TERMCAT, centro que vela por el desarrollo y la integración de la terminología catalana en los sectores especializados, se puede consultar la TO Ciències de la Salut (Malaties), un repertorio de la colección Terminologia Oberta que recoge 16.859 fichas conceptuales, con las denominaciones en catalán e inglés. La colección Terminologia Oberta agrupa recopilaciones terminológicas procedentes de trabajos de investigación llevadas a cabo por el centro que se pueden descargar libremente y exportar a cualquier formato. 	8	0	cat
460	JournalTOCS	Heriot-Watt University	http://www.journaltocs.ac.uk/index.php	2012-11-23	JournalTOCS Ã©s un portal gratuÃ¯t de revistes acadÃ¨miques que ofereix les actualitzacions dels seus sumaris. El recurs tÃ© agregades unes 20.257 revistes, de les quals 4.760 sÃ³n en sistema Open Access (lliure accÃ©s).\r\n\nJournalTOCS inclou les revistes mÃ©s valorades en els seus respectius Ã mbits temÃ tics, la qual cosa garanteix resultats de gran qualitat. 	JournalTOCS es un portal gratuito de revistas acadÃ©micas que ofrece las actualizaciones de sus sumarios de contenidos (TOC). El recurso tiene agregadas unas 20.257 revistas, de las cuales 4.760 son en sistema Open Access (libre acceso).\r\n\nJournalTOCS incluye las revistas mÃ¡s valoradas en sus respectivos Ã¡mbitos temÃ¡ticos, la cual cosa garantiza resultados de gran calidad.	8	0	ang
475	Flebologia (SEACV)	Sociedad Española de Angiología y Cirugía Vascular (SEACV)	http://www.capitulodeflebologia.org/	2013-12-05	Web creada per la Sociedad Española de Angiología y Cirugía Vascular (SEACV) per a l´estudi i difusió de la Flebologia.	Web creada por la Sociedad Española de Angiología y Cirugía Vascular (SEACV) para el estudio y la difusión de la Flebología. 	9	0	cas
450	 Protocolos de enfermería basada en la evidencia	Instituto Aragon�s de Ciencias de la Salud (I+CS)	http://www.iacs.aragon.es/awgc/contenido.detalle.do?idContenido=1431	2009-10-02	El Instituto Aragonés de Ciencias de la Salud (I+CS) ha publicat uns protocols\r\n\nd´infermeria basada en l´evidència. Per la seva qualitat i interès, és una guia que servirà perquè els professionals de la infermeria, i altres disciplines, puguin elaborar nous protocols d´actuació.	El Instituto Aragonés de Ciencias de la Salud (I+CS) ha publicado unos protocolos\r\n\nde enfermería basada en la evidencia. Por su calidad e interés, es una guía que servirá para que los profesionales de la enfermería, y otras disciplinas, puedan elaborar nuevos protocolos de actuación.	7	0	cas
387	TRIP Database		http://www.tripdatabase.com	2006-09-06	TRIP Database va néixer lany 1997 com a resultat de la feina que van realitzar els seus fundadors (Jon Brassey i el Dr. Chris Price) intentant respondre a qüestions clíniques utilitzant els principis de la medicina basada en levidència. Una de les seves premisses és permetre als usuaris i professionals de la salut identificar de manera ràpida levidència clínica de més alta qualitat per a una bona pràctica clínica. Recentment, la base de dades ha estat avaluada per un equip extern del Centre for Evidence-Based Medicine (www.cebm.net) i els resultats de linforme han estat de molta utilitat per a la millora i modernització del recurs. És un molt bon recurs de MBE, ara gratuït.	TRIP Database nació en el año 1997 como resultado del trabajo realizado por sus fundadores (Jon Brassey y el Dr. Chris Price), intentando responder a cuestiones clínicas utilizando los principios de la medicina basada en la evidencia. Una de sus premisas es permitir a los usuarios y profesionales de la salud identificar  de manera rápida la evidencia clínica de mejor calidad para una buena práctica clínica. Recientemente, la base de datos ha sido evaluada por un equipo del Centre for Evidence-Based Medicine (www.cebm.net) y los resultados del informe han sido de utilidad para la mejora y modernización del recurso. Es un buen recurso de MBE, ahora gratuito.	2	0	ang
442	ArtroImagen: Banco de imágenes en patología osteoarticular		http://www.artroimagen.com/pages/home	2009-03-03	ArtroImagen és un lloc web on professionals de la salut poden publicar i comentar imatges clíniques relacionades amb les patologies osteoarticulars. La visualització de les imatges és lliure però cal enregistrar-se amb el número de col·legiat per a poder publicar-ne de noves i per a fer comentaris. El registre és gratuït. En aquests moments conté més de 1.000 imatges de reumatologia i cirurgia ortopèdica, sobretot radiografies, que han estat prèviament validades per un comitè dexperts per tal de garantir la seva qualitat i veracitat. 	ArtroImagen es una página web donde profesionales de la salud pueden publicar i comentar imágenes clínicas relacionadas con las patologías osteoarticulares. La visualización de las imágenes es libre pero es necesario registrarse con el número de colegiado para poder publicar nuevas imágenes y hacer comentarios. El registro es gratuito. En estos momentos contiene más de 1.000 imágenes de reumatología y cirugía ortopédica, sobretodo radiografías, que han sido previamente validadas por un comité de expertos para garantizar su calidad y veracidad. 	3	0	cas
457	Diccionari doftalmologia TERMCAT	TERMCAT	http://www.termcat.cat/ca/Diccionaris_En_Linia/121/Fitxes/	2011-03-02	Diccionari de làmbit de loftalmologia que aplega prop de 1.200 termes. En presenta les denominacions i la definició en català, els equivalents en castellà i anglès i, si escau, els termes anatòmics internacionals.	Diccionario del ámbito de la oftalmología que reúne cerca de 1.200 términos. Presenta las denominaciones y la definición en catalán, en castellano y en inglés y, si es necesario, los términos anatómicos internacionales.	6	0	cat,cas,ang
170	The GDB Human Genome Database	The Hospital For Sick Children, Toronto  (1998 � 2002), & Johns Hopkins University, Baltimore, USA (1990-2002)	http://hgpd.lifesciencedb.jp/cgi/	2005-04-29	Base de dades del genoma humà. Dóna informació sobre cromosomes, articles publicats, seqüències i mapes, fonts del projecte genoma humà.	La base de datos del genoma GDB-Genome Database da información sobre cromosomas, artículos publicados, secuencias y mapas, fuentes del proyecto genoma humano.	2	0	ang
5	Atlas of the Human Body	AMA	http://www.ama-assn.org/ama/pub/physician-resources/patient-education-materials/atlas-of-human-body.page	2005-03-10	Recurs dissenyat per l´American Medical Association (AMA).	Recurso creado por la American Medical Association (AMA).	9	3	ang
473	Codi d´Ètica de les Infermeres i Infermers de Catalunya	Consell de Col·legis d´Infermeres i Infermers de Catalunya	http://www.coib.cat/uploadsBO/Generica/Documents/CODI%20D%27%C3%88TICA%20DE%20LES%20INFERMERES%20I%20INFERMERS%20DE%20CATALUNYA..PDF	2013-11-29	El Consell de Col·legis d´Infermeres i Infermers de Catalunya ha aprovat la renovació del codi d´ètica.\r\n\nL´objectiu del nou codi és respondre als problemes ètics actuals dels infermers/infermeres i donar a conèixer els valors que defensa la professió infermera, la seva bona pràctica professional i el seu compromís cap a la societat.	El Consell de Col·legis d´Infermeres i Infermers de Catalunya ha aprobado la renovación del código de ética.\r\n\nEl objetivo del nuevo código es responder a los problemas éticos actuales de las/los enfermeras/os y dar a conocer los valores que defiende la profesión enfermera, su buena práctica profesional y su compromiso hacia la sociedad.	9	0	cat
11	THE LARYNX	Collage of Physicians&Súrgenos Columbia University	https://www1.columbia.edu/sec/itc/hs/medical/anatomy_resources/anatomy/larynx/	2005-03-11	Atles de la laringe. Conté fotos de dissecció. (Font: Collage of Physicians&Súrgenos Columbia University)	Atlas esquemático de la anatomía de la laringe con pequeños videos. (Fuente: Collage of Physicians&Súrgenos Columbia University)	5	44	cas
470	REec: Registro Español de Ensayos Clínicos	Ministerio de Sanidad / Agencia Española de Medicamentos	https://reec.aemps.es/reec/faces/buscador/index.xhtml	2013-11-13	El Registro Español de Estudios Clínicos (REec) proporciona informació a professionals de la salut sobre investigacions clíniques permeses a Espanya per informar-los sobre els estudis que s´estan realitzant en relació a malalties o amb un o diversos medicaments determinats. Es registren tots els assajos clínics autoritzats a Espanya des del gener de 2013.	El Registro Español de Estudios Clínicos (REec) proporciona información a profesionales de la salud sobre investigaciones clínicas permitidas en España para informarles sobre los estudios que se están realizando en relación a enfermedades o con uno o varios medicamentos determinados. Se registran todos los ensayos clínicos autorizados en España desde enero de 2013.		0	cas
471	EU Clinical Trials Register	European Medicines Agency (EMA)	https://www.clinicaltrialsregister.eu/ 	2013-11-13	Permet l´accés públic a informació sobre assajos clínics amb medicaments autoritzats en els 27 estats membres de la Unió Europea, Islàndia, Liechtenstein i Noruega.\r\n\nLa informació procedeix de la base de dades europea d´assajos clínics, EudraCT.	Permite el acceso público a información sobre ensayos clínicos con medicamentos autorizados en los 27 estados miembros de la Unión Europea, Islandia, Liechtenstein y Noruega.\r\n\nLa información procede de la base de datos europea de ensayos clínicos, EudraCT.		0	ang
13	The Urbana Atlas of Pathology	University of Illinois 	https://www.med.illinois.edu/m2/pathology/PathAtlasf/	2005-03-11	The Urbana Atlas Pathology dóna a conèixer imatges digitalitzades sobre patologia i temes relacionats. (Font: University of Illinois)	The Urbana Atlas Pathology da a conocer imágenes digitalizadas sobre patología y temas relacionados. (Fuente: University of Illinois) 	5	3	ang
468	Atlas of Human Anatomy		http://liscuba.sld.cu/index.php?P=GoTo&ID=1300&MF=4	2013-10-29	Atles que aborda el tema d´Anatomia Humana, que proporciona un compendi d´imatges i videos, dirigida a estudiants de medicina, metges i especialistes. (Font: Anatomyatlases)	Atlas que aborda el tema de Anatomía Humana, que proporciona un compendio de imágenes y videos, dirigida a estudiantes de medicina, médicos y especialistas. (Fuente: Anatomyatlases)	9	0	ang
472	ENFISPO	Universidad Complutense de Madrid	http://alfama.sim.ucm.es/isishtm/enfispo/	2013-11-29	ENFISPO permet la consulta d´articles d´unes 90 revistes en espanyol que es reben a la Biblioteca de l´Escola d´Infermeria, Fisioteràpia i Podologia de la Universidad Complutense de Madrid.	ENFISPO permite la consulta de artículos de unas 90 revistas en español que se reciben en la Biblioteca de la Escuela de Enfermería, Fisioterapia y Podología de la Universidad Complutense de Madrid.	9	0	cas
474	Guía audiovisual de semiología médica	Universidad del Desarrollo y Clínica Alemana de Santiago de Chile	http://www.semiologiacasudd.cl/	2013-12-03	Aquesta guia consta de 21 capítols de semiologia mèdica on es barregen vídeos, imatges i anatomia 3D.\r\n\nEn la seva estructura s´analitzen temes com l´entrevista mèdica, l´exàmen del nounat, lactant i preescolar, l´exàmen ginecològic, l´exàmen geriàtric i l´exàmen segmentari de l´adult.	Esta guía consta de 21 capítulos de semiología médica donde se mezclan vídeos, imágenes y anatomía 3D.\r\n\nEn su estructura se analizan temas como la entrevista médica, el examen del neonato, lactante y preescolar, el examen ginecológico y obstétrico, el examen geriátrico y el examen segmentario del adulto.	9	0	cas
263	Base de Datos de Medicamentos	Consejo General de Colegios Oficiales de Farmac�uticos	http://www.portalfarma.com/profesionales/directorioenlaces/enlacesdeinter%C3%A9s/dbmedicamentos/Paginas/bbddmedicamentos.aspx	2005-05-27	Pàgina que permet accedir a la informació de la base de dades de medicaments, a través de diferents opcions: llista de productes, nom o codi, text, per laboratori, parafarmàcia, grups terapèutics, activitats farmacològiques, etc. <strong>Per consultar-la és necessari registrar-se</strong>.	Página que permite acceder a la información de la base de datos de medicamentos, a través de distintas opciones: lista de productos, nombre o código, texto, por laboratorio, parafarmacia, grupos terapéuticos, actividades farmacológicas, etc. <strong>Para consultarla es necesario registrarse</strong>.	6	0	cas
392	VascularWeb (Society for Vascular Surgery-Chicago)	Society for Vascular Surgery	http://www.vascularweb.org/	2006-09-14	VascularWeb® is the prime source for all vascular health and disease information, and is presented by the Society for Vascular Surgery®. Its members are vascular surgeons, specialists, and vascular health professionals who are specialty-trained in all treatments for vascular disease including medical management, non-invasive procedures, and surgery.	VascularWeb® is the prime source for all vascular health and disease information, and is presented by the Society for Vascular Surgery®. Its members are vascular surgeons, specialists, and vascular health professionals who are specialty-trained in all treatments for vascular disease including medical management, non-invasive procedures, and surgery.	3	0	ang
476	International Society of Endovascular Specialists		http://www.isesonline.org/index.html	2013-12-05	The International Society of Endovascular Specialists (ISES) is dedicated to enhancing global research, education and clinical expertise in the treatment of one of the world´s number one killers - vascular disease. Using innovative technologies and interventional techniques ISES strives to improve patient care throughout the world.	The International Society of Endovascular Specialists (ISES) is dedicated to enhancing global research, education and clinical expertise in the treatment of one of the world´s number one killers - vascular disease. Using innovative technologies and interventional techniques ISES strives to improve patient care throughout the world.	9	0	ang
477	Libro Blanco SEACV: La Angiología y Cirugía Vascular en España (2013) 	Sociedad Española de Angiología y Cirugía Vascular (SEACV)	http://www.seacv.es/publicaciones/otras_SEACV/libro_blanco_SEACV.pdf	2013-12-05	Document oficial publicat per la SEACV que neix amb la missió de servir d´informe o guia sobre la situació actual de l´especialitat a Espanya i permetre una predicció de la seva esdevenir, amb la finalitat última de facilitar la presa de decisions.	Documento oficial publicado por la SEACV que nace con la misión de servir de informe o guía sobre la situación actual de la especialidad en España y permitir una predicción de su devenir, con la finalidad última de facilitar la toma de decisiones.	9	0	cas
254	New Zealand Guidelines Group	Ministry of Health of Zealand	http://www.nzgg.org.nz/index.cfm?fuseaction=fuseaction_10&fusesubaction=docs&documentid=22	2005-05-13	The NZGG created evidence-based guidance, useable tools and implementation approaches. They also promoted the use of evidence in clinical and personal practice.	The NZGG created evidence-based guidance, useable tools and implementation approaches. They also promoted the use of evidence in clinical and personal practice.	5	0	ang
446	GuíaSalud: Preguntas Clínicas en inglés	Gu�aSalud	http://www.guiasalud.es/opbe/busqueda/preguntas_clinicas/index_en.html	2009-03-10	Cercador personalitzat sobre preguntes clíniques. Els recursos inclosos en aquests cercadors han estat avaluats i valorats per GuíaSalud, garantint, així, la qualitat dels resultats.	Buscador personalizado del portal GuíaSalud sobre Buscador personalizado sobre preguntas clínicas. Los recursos incluidos en estos buscadores han sido evaluados y valorados por GuíaSalud, garantizando, así, la calidad de sus resultados.preguntas clínicas en inglés. 	5	0	ang
469	NICE. National Institute for Health and Care Excellence	National Institute for Health and Care Excellence	http://www.nice.org.uk/	2013-10-29	Base de dades de guies de pràctica clínica redactades pel National Institute for Health and Care Excellence referents a totes les especialitats mèdiques. "NICE guidance helps health and social care professionals deliver the best possible care based on the best available evidence".	Base de datos de guías de práctica clínica redactadas por el National Institute for Health and Care Excellence referentes a todas las especialidades médicas. "NICE guidance helps health and social care professionals deliver the best possible care based on the best available evidence".  	3	0	ang
478	PEDro: Physiotherapy Evidence Database	The George Institute of Global Health	http://www.pedro.org.au/spanish/	2014-10-23	PEDro és la base de dades sobre Fisioteràpia Basada en lEvidència amb més de 28.000 assajos aleatoris controlats, revisions sistemàtiques i guies de pràctrica clínica de Fisioteràpia. De cada assaig, revisio o guia, PEDro ofereix detalls de la citació, el resum i lenllaç al text complet, quan es troba disponible.	PEDro es la base de datos sobre Fisioterapia Basada en la Evidencia con más de 28.000 ensayos aleatorios controlados, revisiones sistemáticas y guías de práctica clínica de Fisioterapia. De cada ensayo, revisión o guía, PEDro ofrece detalles para la citación, resumen y enlace al texto completo, cuando es posible.		0	cas,ang
251	Health Services Technology Assessment Texts (HSTAT)	National Library of Medicine	http://www.ncbi.nlm.nih.gov/books/NBK16710/	2005-05-13	Sistema desenvolupat per la NLM (National Library of Medicine) que permet accedir al text complet de diferents tipus de documents: guies de pràctica clínica, guies de referència ràpida per clínics, informes basats en proves i informació per al públic (en aquest cas, amb una secció en castellà)	Sistema desarrollado por la NLM (National Library of Medicine) que permite acceder al texto completo de diferentes tipos de documentos. Abarca guías de práctica clínica, guías de referencia rápida para clínicos, informes basados en pruebas e información para el público (en este último caso, con una sección en castellano)	3	0	ang
479	Biblioteca Cochrane Plus	Centro Cochrane Iberoamericano	http://www.bibliotecacochrane.com/	2014-11-07	La Biblioteca Cochrane Plus promou el treball de la Col·laboració Cochrane i daltres organismes que reuneixen informació fiable per a guiar les decisions en latenció sanitària. Laccés universal gratuït a la BCP, a tot el territori espanyol, és possible gràcies a la subscripció realitzada pel Ministeri de Sanitat, Serveis Socials i Igualtat.	La Biblioteca Cochrane Plus promueve el trabajo de la Colaboración Cochrane y de otros organismos que reúnen información fiable para guiar las decisiones en la atención sanitaria. El acceso universal gratuito a la BCP, en todo el territorio español, es posible gracias a la suscripción realizada por el Ministerio de Sanidad, Servicios Sociales e Igualdad.		0	cas
438	Connect+, cuidados de Salud Basados en la Evidencia : Recursos del Instituto Joanna Briggs	The Joanna Briggs Institute	http://connect.jbiconnectplus.org/Default.aspx	2008-03-25	El "Ministerio de Sanidad y Consumo" finança l´accés universal i gratuït des d´Espanya als recursos del "The Joanna Briggs Institute" per a tots els professionals de la salut, consumidors, cuidadors i qualsevol usuari interessat, permetent l´accés des de qualsevol ordinador ubicat al territori a través de la plataforma JBI COnNECT (Clinical Online Network of Evidence for Care and Therapeutics  Red clínica de Evidencia on-line sobre Cuidados). Aquesta plataforma proporciona als usuaris una sèrie de recursos i eines per buscar, valorar críticament i resumir levidència disponible; integrar-la, utilitzar-la en la pràctica clínica i avaluar el impacte de la seva utilització. \r\n\nEn el següent enllaç hi ha disponible una presentació on es descriuen els recursos de JBI COnNECT: http://www.isciii.es/htdocs/redes/investen/pdf/JBI_Difusion.pdf\r\n\n	El Ministerio de Sanidad y Consumo financia el acceso universal y gratuito desde España a los recursos del Instituto Joanna Briggs para todos los profesionales de la salud, consumidores, cuidadores y cualquier usuario interesado, permitiendo el acceso desde cualquier ordenador ubicado en el territorio a través de la plataforma JBI COnNECT (Clinical Online Network of Evidence for Care and Therapeutics  Red clínica de Evidencia on-line sobre Cuidados). Esta plataforma proporciona a los usuarios una serie de recursos y herramientas para buscar, valorar críticamente y resumir la evidencia disponible; integrarla, utilitzarla en la práctica clínica y evaluar el impacto de su utilización. \r\n\nEn el siguiente enlace está disponible una presentación donde se describen los recursos de JBI COnNECT: http://www.isciii.es/htdocs/redes/investen/pdf/JBI_Difusion.pdf	3	0	cas,ang
272	Uso racional de los medicamentos. Aspectos éticos		http://www.fundaciogrifols.org/polymitaImages/public/fundacio/Publicacions/PDF/cuaderno8.pdf	2005-06-02	 La contínua introducció de nous medicaments amb un cost cada vegada més gran, juntament amb una població que envelleix i consumeix més recursos sanitaris durant més temps, obliga a reflexionar sobre la millor manera de distribuir uns recursos limitats, reflexió que inclou els aspectes mèdics, econòmics, legislatius i ètics. En aquest quadern, les aportacions dels experts contribueixen a oferir diversos enfocaments que proporcionen al lector una visió multidisciplinar y amb suficients punts de reflexió per crear-se la seva pròpia opinió.	 La continua introducción de nuevos medicamentos con un coste cada vez mayor, junto con una población que envejece y consume más recursos sanitarios durante más tiempo, obliga a reflexionar sobre la mejor manera de distribuir unos recursos limitados, reflexión que incluye los aspectos médicos, económicos, legislativos y éticos. En este cuaderno, las aportaciones de los expertos contribuyen a ofrecer distintos enfoques que proporcionan al lector una visión multidisciplinar y con suficientes puntos de reflexión para crearse su propia opinión.	1	51	cas
480	DART-Europe E-theses Portal	DART-Europe	http://www.dart-europe.eu/basic-search.php	2016-04-21	DART-Europe és una associació biblioteques de recerca i de consorcis bibliotecaris que treballen conjuntament per a la millora de laccés global a les tesis doctorals europees. DART-Europe està ecolzat per LIBER (Ligue des Bibliothèques Européennes de Recherche), i és el Grup Europeu de Treball de la Networked Digital Library of Theses and Dissertations (NDLTD).	DART-Europe es una asociación de bibliotecas de investigación y de consorcios bibliotecarios que trabajan conjuntamente para la mejora del acceso global a las tesis doctorales europeas. DART-Europe está apoyado por LIBER (Ligue des Bibliothèques Européennes de Recherche) y es el Grupo Europeo de Trabajo de la Networked Digital Library of Theses and Dissertations (NDLTD). 		0	ang
481	TESEO	Ministerio de Educación, Cultura y Deporte	https://www.educacion.gob.es/teseo/irGestionarConsulta.do	2016-04-21	Base de dades de tesis doctorals llegides a Espanya.	Base de datos de tesis doctorales leídas en España.		0	cas
482	TDR - Tesis Doctorales en Red	CSUC	http://www.tesisenred.net/	2016-04-21	\r\n\nQuè és?\r\n\nTDX (Tesis Doctorals en Xarxa) és un repositori cooperatiu que conté, en format digital, tesis doctorals llegides a les universitats de Catalunya i daltres comunitats autònomes. La consulta de les tesis és d’accés lliure i permet realitzar cerques al text complet, per autor/a, director/a, títol, paraules clau, universitat i departament on sha llegit, any de defensa, etc. 	TDR (Tesis Doctorales en Red) es un repositorio cooperativo que contiene, en formato digital, tesis doctorales leídas en las universidades de Catalunya y otras comunidades autónomas. La consulta de las tesis es de acceso libre y permite realizar búsquedas en el texto completo, por autor/a, director/a, título, palabras clave, universidad y departamento donde se haya leído, año de defensa, etc. 		0	cat,cas,ang
483	DeCS: Descriptores en Ciencias de la Salud	Biblioteca Virtual en Salud	http://decs.bvs.br/E/homepagee.htm	2016-05-10	 \t\r\n\nDeCS - Descriptores en Ciencias de la Salud\r\n\nEl vocabulario estructurado y trilingüe DeCS - Descriptores en Ciencias de la Salud fue creado por BIREME para servir como un lenguaje único en la indización de artículos de revistas científicas, libros, anales de congresos, informes técnicos, y otros tipos de materiales, así como para ser usado en la búsqueda y recuperación de asuntos de la literatura científica en las fuentes de información disponibles en la Biblioteca Virtual en Salud (BVS) como LILACS, MEDLINE y otras.	 \t\r\n\nDeCS - Descriptores en Ciencias de la Salud\r\n\nEl vocabulario estructurado y trilingüe DeCS - Descriptores en Ciencias de la Salud fue creado por BIREME para servir como un lenguaje único en la indización de artículos de revistas científicas, libros, anales de congresos, informes técnicos, y otros tipos de materiales, así como para ser usado en la búsqueda y recuperación de asuntos de la literatura científica en las fuentes de información disponibles en la Biblioteca Virtual en Salud (BVS) como LILACS, MEDLINE y otras.		0	cas
\.


--
-- Data for Name: principal_old; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY principal_old (id, titol, autor, url, data_entrada, resum_cat, resum_cast, tipus, patologia, idioma) FROM stdin;
\.


--
-- Data for Name: projectes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectes (id, nom, descrip) FROM stdin;
\.


--
-- Data for Name: recxproj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY recxproj (idrec, idproj, cat01, cat02, cat03, cat04, cat05) FROM stdin;
3	3	001				
4	1					
6	7					
8	3	001				
12	1					
15	1					
39	1					
39	8					
24	1	007				
32	1	005				
41	7	001				
42	1	005				
53	1	005				
59	1	005				
5	7	001				
13	1	006				
16	1	006				
73	1					
19	1	007				
20	1	007				
25	1	007				
26	1	007				
29	8					
27	1	007				
1	2	001				
1	3	001				
162	1	003	004	005		
164	8					
169	1	001				
170	1	001				
172	1	001				
174	1	003				
175	1	003				
176	1	003				
237	1	002				
238	1	002				
238	8					
239	1	002				
240	1	002				
241	1	002				
242	1					
243	1	002				
244	1	003				
245	1	003				
246	1	003				
247	1	003				
248	1	002				
249	1	002				
250	1	002				
251	2	002				
251	1	002				
2	3	001				
2	2	002				
252	1	002				
252	3	001				
252	2	002				
253	3	001				
254	2	001	002			
254	3	001				
253	2	002	001			
255	1	002				
255	2	002				
255	3	001				
18	1	005				
256	1	005				
259	1	001				
259	2	001				
259	3	001				
260	8					
261	8					
263	1	003				
264	1	003				
268	1	004				
272	1	003				
171	1	003				
1	1	002				
2	1	002				
262	1	002				
254	1	002				
158	1	004				
159	1	004				
173	1	003				
160	1	004				
253	1	002				
21	1	002				
168	1	004				
167	1	004				
161	1	004				
163	1	004				
41	1	005				
24	7	001				
20	7	001				
31	8					
75	1	005				
223	1	005				
204	1	005				
118	1	005				
57	1	005				
111	1	005				
96	1	005				
94	1	005				
283	1	007				
78	1	005				
93	1	005				
101	1	005				
129	1	005				
180	1	005				
201	1	005				
284	1	001				
285	1	007				
288	1	007				
292	1	006				
293	1	006				
294	1	006				
296	1	004				
297	1	001				
298	1	001				
215	1	005				
299	1	005				
122	1	005				
183	1	005				
226	1	005				
300	1	005				
69	1	005				
205	1	005				
140	1	005				
71	1	005				
74	1	007				
86	1	005				
301	1	007				
303	1					
304	1					
305	1					
305	2					
307	1					
184	1	005				
54	1	005				
309	1					
310	1					
313	1	005				
315	1					
317	1	007				
319	1	003				
322	1					
323	1	007				
324	1	007				
325	1	007				
326	1	007				
327	1	007				
328	1	007				
148	1	005				
329	1	007				
330	1	007				
331	1					
332	1					
333	1					
334	1					
335	1					
336	1	006				
287	1					
338	1					
339	1					
340	1					
341	1					
342	1					
343	1	005				
344	1	005				
345	1	005				
346	1	003	005			
347	1	005				
348	1	005				
22	4					
145	4					
146	4					
300	4					
229	4					
77	4					
349	1					
198	1					
350	1					
351	1	005				
352	4					
352	1	001				
353	1					
354	1					
357	1	005				
358	1					
359	1					
360	1					
361	1					
363	1					
364	1					
365	1					
366	1					
367	4					
367	1	001				
368	1					
372	1	005				
373	1					
374	1					
375	1					
376	1					
362	1	000				
387	1	002	006			
392	1	000				
397	1	000				
399	1	000				
405	1					
406	1	005				
407	1					
410	1					
312	1					
127	1					
403	1	005				
316	1					
400	1					
391	1					
117	1					
89	1					
50	1					
369	1					
371	1					
134	1					
270	1					
67	1					
401	1					
151	1					
278	1					
274	1					
271	1					
64	1					
389	1					
394	1					
109	1					
17	1					
99	1					
36	1					
35	1					
34	1					
48	1					
135	1					
277	1					
388	1					
164	1	004				
273	1					
279	1					
269	1					
124	1					
337	1					
306	1	004				
229	1					
276	1					
91	1					
113	1					
120	1					
311	1					
143	1					
267	1					
275	1					
185	1					
197	1					
390	1					
40	1					
408	1					
38	1					
72	1					
46	1					
76	1	004				
77	1					
266	1					
393	1					
409	1					
66	1					
308	1					
5	1					
100	1					
370	1					
402	1					
314	1					
396	1					
395	1	005	006			
10	1					
11	1					
295	1					
14	1					
257	1					
7	1					
398	1					
282	1					
9	1					
321	1					
318	1					
404	1	002	007			
320	1					
302	1					
289	1					
29	1					
290	1					
30	1					
286	1					
28	1					
291	1					
31	1					
258	1					
265	1					
260	1					
261	1					
411	1					
412	1	005				
413	1					
414	1					
415	1					
416	1					
355	1	000	005			
356	1	000	005			
417	1	002				
418	1					
419	1					
420	1					
421	1					
422	1					
423	1	000				
424	1	000				
425	1	005				
426	1	006				
427	1	007				
428	1					
429	1					
430	1					
431	1					
432	1					
433	1	000				
434	1	001	000			
434	3	001				
434	4	001				
435	1	002				
436	1	001				
437	1					
438	1	002				
439	1					
3	3	001				
440	1	002	000			
4	1					
6	7					
8	3	001				
12	1					
15	1					
39	1					
39	8					
24	1	007				
32	1	005				
41	7	001				
42	1	005				
53	1	005				
59	1	005				
5	7	001				
13	1	006				
16	1	006				
73	1					
19	1	007				
20	1	007				
25	1	007				
26	1	007				
29	8					
27	1	007				
1	2	001				
1	3	001				
162	1	003	004	005		
164	8					
169	1	001				
170	1	001				
172	1	001				
174	1	003				
175	1	003				
176	1	003				
237	1	002				
238	1	002				
238	8					
239	1	002				
240	1	002				
241	1	002				
242	1					
243	1	002				
244	1	003				
245	1	003				
246	1	003				
247	1	003				
248	1	002				
249	1	002				
250	1	002				
251	2	002				
251	1	002				
2	3	001				
2	2	002				
252	1	002				
252	3	001				
252	2	002				
253	3	001				
254	2	001	002			
254	3	001				
253	2	002	001			
255	1	002				
255	2	002				
255	3	001				
18	1	005				
256	1	005				
259	1	001				
259	2	001				
259	3	001				
260	8					
261	8					
263	1	003				
264	1	003				
268	1	004				
272	1	003				
171	1	003				
1	1	002				
2	1	002				
262	1	002				
254	1	002				
158	1	004				
159	1	004				
173	1	003				
160	1	004				
253	1	002				
21	1	002				
168	1	004				
167	1	004				
161	1	004				
163	1	004				
41	1	005				
24	7	001				
20	7	001				
31	8					
75	1	005				
223	1	005				
204	1	005				
118	1	005				
57	1	005				
111	1	005				
96	1	005				
94	1	005				
283	1	007				
78	1	005				
93	1	005				
101	1	005				
129	1	005				
180	1	005				
201	1	005				
284	1	001				
285	1	007				
288	1	007				
292	1	006				
293	1	006				
294	1	006				
296	1	004				
297	1	001				
298	1	001				
215	1	005				
299	1	005				
122	1	005				
183	1	005				
226	1	005				
300	1	005				
69	1	005				
205	1	005				
140	1	005				
71	1	005				
74	1	007				
86	1	005				
301	1	007				
303	1					
304	1					
305	1					
305	2					
307	1					
184	1	005				
54	1	005				
309	1					
310	1					
313	1	005				
315	1					
317	1	007				
319	1	003				
322	1					
323	1	007				
324	1	007				
325	1	007				
326	1	007				
327	1	007				
328	1	007				
148	1	005				
329	1	007				
330	1	007				
331	1					
332	1					
333	1					
334	1					
335	1					
336	1	006				
287	1					
338	1					
339	1					
340	1					
341	1					
342	1					
343	1	005				
344	1	005				
345	1	005				
346	1	003	005			
347	1	005				
348	1	005				
22	4					
145	4					
146	4					
300	4					
229	4					
77	4					
349	1					
198	1					
350	1					
351	1	005				
352	4					
352	1	001				
353	1					
354	1					
357	1	005				
358	1					
359	1					
360	1					
361	1					
363	1					
364	1					
365	1					
366	1					
367	4					
367	1	001				
368	1					
372	1	005				
373	1					
374	1					
375	1					
376	1					
362	1	000				
387	1	002	006			
392	1	000				
397	1	000				
399	1	000				
405	1					
406	1	005				
407	1					
410	1					
312	1					
127	1					
403	1	005				
316	1					
400	1					
391	1					
117	1					
89	1					
50	1					
369	1					
371	1					
134	1					
270	1					
67	1					
401	1					
151	1					
278	1					
274	1					
271	1					
64	1					
389	1					
394	1					
109	1					
17	1					
99	1					
36	1					
35	1					
34	1					
48	1					
135	1					
277	1					
388	1					
164	1	004				
273	1					
279	1					
269	1					
124	1					
337	1					
306	1	004				
229	1					
276	1					
91	1					
113	1					
120	1					
311	1					
143	1					
267	1					
275	1					
185	1					
197	1					
390	1					
40	1					
408	1					
38	1					
72	1					
46	1					
76	1	004				
77	1					
266	1					
393	1					
409	1					
66	1					
308	1					
5	1					
100	1					
370	1					
402	1					
314	1					
396	1					
395	1	005	006			
10	1					
11	1					
295	1					
14	1					
257	1					
7	1					
398	1					
282	1					
9	1					
321	1					
318	1					
404	1	002	007			
320	1					
302	1					
289	1					
29	1					
290	1					
30	1					
286	1					
28	1					
291	1					
31	1					
258	1					
265	1					
260	1					
261	1					
411	1					
412	1	005				
413	1					
414	1					
415	1					
416	1					
355	1	000	005			
356	1	000	005			
417	1	002				
418	1					
419	1					
420	1					
421	1					
422	1					
423	1	000				
424	1	000				
425	1	005				
426	1	006				
427	1	007				
428	1					
429	1					
430	1					
431	1					
432	1					
433	1	000				
434	1	001	000			
434	3	001				
434	4	001				
435	1	002				
436	1	001				
437	1					
438	1	002				
439	1					
440	1	002	000			
451	1					
442	1	006				
445	1	002				
443	1	001				
447	1	002				
446	1	002				
449	1	000				
444	1	000				
450	1	004				
448	1	000				
452	1					
453	1					
454	1					
456	1					
457	1					
459	1					
459	4	001				
455	4	001				
455	1	001				
463	1					
460	1	000				
\.


--
-- Data for Name: rev2pat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rev2pat (id, idrev, idpat) FROM stdin;
1	5	17
7	2511	4
8	2514	30
9	2519	34
5	2534	17
10	2515	34
11	2516	34
12	2520	52
40	2535	7
401	3975	68
15	2516	52
16	2517	52
17	2518	52
28	2528	10
19	2519	52
20	2521	52
21	2521	34
22	2522	52
23	2523	52
24	2523	34
25	2524	52
26	2525	52
27	2525	34
186	2496	64
30	2526	32
187	4964	10
188	4968	39
189	4970	45
34	2531	26
35	2512	32
36	2517	31
37	2517	34
38	2532	47
39	2533	31
42	2537	45
43	2538	47
44	2544	47
45	2549	23
46	2550	57
47	2551	20
70	2591	19
49	2533	51
50	2561	1
51	2562	1
71	2592	47
53	2564	51
54	2565	27
55	2565	45
56	2569	27
57	2574	8
58	2572	47
59	2578	29
60	2579	19
61	2581	20
62	2581	47
63	2582	34
64	2583	34
65	2584	54
66	2585	31
67	2586	30
68	2587	36
69	2588	34
72	2595	47
73	2596	34
74	2597	59
162	2522	34
163	2567	18
164	2568	17
78	2598	59
566	2330	41
80	2599	44
81	2599	1
82	2599	14
569	1365	9
84	2600	34
85	2566	44
86	2573	44
87	2601	28
88	2602	34
89	2604	28
90	2605	10
91	2607	4
92	2607	29
93	2608	4
94	2608	29
95	2609	56
96	2609	64
97	2611	4
98	2610	56
99	2617	1
100	2617	23
101	2620	7
102	2621	52
103	2621	35
104	2622	47
105	2624	47
106	2625	30
107	2627	42
108	2628	44
109	2629	10
110	2629	42
111	2630	45
112	2631	9
113	2632	49
114	2633	7
144	2571	34
116	2637	54
117	2638	20
118	2639	1
119	2639	23
120	2641	35
121	2642	39
122	2645	19
123	2651	34
124	2654	52
125	2659	48
126	2660	57
127	2661	57
128	2662	45
129	2663	45
130	2664	32
131	2665	14
132	2666	27
133	2667	47
134	2668	30
135	2669	39
136	2670	41
137	2671	10
138	2671	44
139	2673	45
145	2613	5
141	2675	10
142	2677	34
143	2682	10
146	2614	5
147	2686	26
148	2688	27
149	2689	34
150	2692	31
151	2693	44
152	2694	28
153	2697	34
154	2698	40
155	2699	4
156	2700	62
165	2576	17
158	2704	42
159	2705	8
160	2706	7
161	2709	57
166	2589	28
167	2590	64
168	2606	35
169	2611	18
170	2618	27
172	2626	17
173	2683	44
174	2529	44
175	2530	48
176	2600	44
177	2644	17
178	2656	44
179	2681	17
180	2687	18
777	4947	19
779	1307	47
781	2226	10
782	2260	29
185	2707	64
190	4980	28
191	4969	10
192	2502	10
193	4965	8
194	4978	12
195	4971	29
196	4984	42
1607	2663	40
198	4984	40
199	4979	35
200	4981	50
403	2542	68
202	4982	10
1610	4342	40
1613	4343	35
205	4966	40
206	4977	45
207	4976	12
208	4973	45
209	4983	4
210	4983	39
211	4972	51
212	4985	42
213	4986	57
214	4987	47
215	4988	44
216	4989	40
217	4990	21
218	2163	27
219	1878	55
220	2499	20
221	2194	40
222	2500	10
223	2415	32
224	2446	20
225	2505	40
226	2462	59
227	2462	29
228	2474	7
229	2506	30
230	2448	47
231	2459	41
232	2460	44
233	2449	49
234	2466	17
235	2468	4
236	2468	39
237	2469	40
238	2470	6
239	4949	12
240	4950	12
241	2476	50
242	2507	12
1605	2730	88
1608	4063	40
245	2451	39
1611	3039	40
247	2473	48
248	2456	10
1860	3093	69
250	2204	48
251	1382	4
252	1395	57
253	2168	55
254	2492	34
255	2189	34
256	2492	35
257	4991	34
258	2191	7
259	2189	32
260	2242	48
261	1357	52
262	4952	29
263	1345	23
264	2297	39
265	2297	47
266	2352	10
294	4992	6
268	2291	5
269	2285	12
270	2286	12
271	2361	41
272	2275	6
273	2296	54
274	2366	37
275	2366	39
276	2366	47
277	2356	59
278	2356	15
279	4952	4
280	4946	1
281	4946	59
282	4946	23
283	2202	57
284	2292	27
285	2292	34
286	2200	47
287	2198	39
288	2198	47
289	2201	45
290	2199	10
291	2203	44
292	1301	17
293	1355	17
295	4993	59
296	1308	59
297	1308	29
298	2227	30
299	2228	44
300	2336	19
301	1367	47
302	2231	19
303	2413	35
304	1408	35
305	2284	7
306	1352	7
307	2479	6
308	2236	40
309	1403	57
310	1385	1
311	1385	59
312	2480	1
313	2480	59
314	1388	39
315	2414	21
316	1391	20
317	1404	21
318	2269	52
319	2269	34
320	2245	59
321	1369	59
322	2482	40
323	1334	6
1865	4377	69
325	2206	42
326	2207	23
327	2208	10
328	1300	8
329	2211	26
1872	4379	84
331	1306	40
332	2216	41
333	2219	10
334	1311	26
335	2230	9
336	4994	54
337	2511	66
338	1741	4
339	1741	66
340	3960	66
341	3960	32
342	3959	4
343	3959	66
344	2512	66
345	2513	66
346	3961	66
347	3962	30
348	3963	52
1873	4379	34
350	3964	52
351	3964	34
352	3965	52
353	3965	34
354	3966	52
355	3966	34
356	3967	66
357	2527	66
358	3968	48
359	3969	26
360	3970	47
361	3971	17
362	2535	60
363	3972	7
364	3972	60
365	2536	64
366	2536	39
367	3973	64
368	3973	39
369	3974	67
370	2539	67
371	2235	21
372	2235	42
373	2241	42
374	2248	7
375	2249	17
376	2251	48
377	2257	57
379	2274	5
380	1335	6
381	2280	64
570	2340	59
572	1374	10
384	2281	23
385	2491	42
386	2491	48
387	1341	1
388	1341	23
389	2288	52
390	2288	34
400	2540	68
392	1349	29
393	1349	26
394	2290	26
395	2328	66
396	1331	66
397	2487	66
398	2489	66
399	2282	66
402	2541	68
404	2543	68
405	2544	69
406	3976	69
407	3976	47
408	2545	69
409	2545	47
410	3977	69
411	3977	47
412	2546	70
413	2546	69
414	2547	47
415	3978	47
565	2312	42
417	3979	47
568	1365	8
571	1370	49
420	2548	47
421	2547	45
422	3979	45
423	2548	45
424	3978	45
425	3980	57
426	2552	20
427	2553	20
428	2554	20
429	3981	20
430	3982	20
431	3983	66
432	2555	66
433	2556	66
434	3984	66
435	3985	68
436	3986	68
437	2557	68
438	2558	68
439	2559	68
440	2560	68
441	2563	67
442	3987	1
443	3988	67
444	3989	51
445	3990	45
446	3990	27
447	4995	20
448	3991	44
449	3992	17
450	2570	28
451	3993	27
452	3994	44
453	2575	47
454	3995	47
455	3996	47
456	2577	47
457	3997	29
458	2578	66
459	3997	66
460	2579	68
461	3998	34
462	2580	34
463	3999	20
464	3999	47
465	4000	34
466	4001	54
467	4002	31
468	4003	36
469	2588	66
573	2354	37
471	4004	28
472	2589	71
473	4004	71
474	4005	64
475	4006	19
476	2593	47
477	4007	47
478	4008	47
479	2594	47
480	4009	47
481	4010	47
482	4011	34
483	2598	29
484	2597	72
485	4012	59
486	4012	72
487	4014	44
488	4014	1
489	4014	14
490	4015	34
491	4015	44
492	4016	66
493	2603	66
494	4017	10
495	4018	35
496	4019	4
497	4019	29
498	4020	56
499	4021	4
500	4021	18
501	2612	5
502	4022	5
503	4023	5
504	2615	73
505	2616	73
506	4024	73
507	4025	1
508	4025	23
509	4025	59
510	2617	59
511	4027	7
512	2619	74
513	4026	74
514	4028	35
515	4029	47
4609	3911	59
517	4031	47
518	4032	30
519	4033	17
520	4034	42
521	4035	44
522	4036	10
523	4036	42
524	4037	45
525	2630	75
526	4037	75
527	4038	9
528	4039	49
529	4040	7
530	4041	72
531	2634	72
532	2635	76
533	4042	76
534	4044	54
535	4045	23
1455	4307	78
537	4047	35
538	4045	1
1458	2995	82
540	2643	66
541	2636	77
542	4043	77
543	2244	76
544	2241	76
545	4048	39
546	4049	66
547	4050	17
548	2272	54
574	2307	52
575	2307	34
551	2293	9
552	2293	15
553	2278	6
554	2295	52
555	1362	45
556	2302	47
557	2367	8
558	1356	9
559	1356	15
560	2304	5
562	2308	39
563	2309	42
564	2312	21
576	2307	23
577	2332	35
578	4996	30
579	2645	78
580	4051	19
581	4051	78
582	2646	7
583	4052	7
584	2647	79
585	4053	79
586	2648	74
587	4054	74
588	2649	74
589	4055	74
590	2650	47
591	4056	47
592	4057	34
593	2652	80
594	4058	80
595	2653	47
596	4059	79
597	4059	47
598	2655	62
599	2655	81
600	4060	57
601	2656	47
602	2657	47
603	2658	79
604	2658	47
680	4997	4
606	2672	64
607	4062	45
608	4063	45
609	4064	32
610	4065	14
611	4066	27
612	4067	47
613	4061	57
614	4068	30
615	4069	39
616	4070	41
617	4071	10
618	4071	44
619	4072	64
620	4073	45
621	2674	80
622	4074	80
623	4075	10
624	4076	35
625	2676	35
626	2678	8
627	2679	49
628	4077	49
629	2682	66
630	4078	17
631	4079	10
632	4079	66
633	4080	44
634	2684	44
635	4081	44
636	4082	7
637	2685	7
638	2686	29
639	4083	26
640	4083	29
641	2690	66
642	4084	18
643	4085	27
644	4086	34
645	4087	66
646	4088	66
647	4089	28
648	4090	66
649	2691	66
650	2696	66
651	2695	34
652	4091	4
653	1329	17
654	2495	72
655	2495	17
656	1344	17
657	2338	48
658	1347	42
659	2321	39
660	2321	47
661	2360	4
662	2223	4
663	2246	8
1861	3094	69
665	2259	29
666	1315	47
667	1406	59
668	1326	19
669	2311	21
670	2311	42
671	2317	72
1866	4378	69
673	2318	42
674	2319	76
675	2319	72
1874	3100	69
677	2324	19
678	2324	39
679	2324	47
840	2751	69
841	2751	47
683	2702	82
684	2703	21
685	2708	67
843	2754	47
846	2756	17
688	2711	44
689	2713	26
690	2714	17
691	2715	27
692	2716	6
693	2717	54
694	2718	54
695	2719	20
776	2218	28
697	2720	69
698	2721	23
699	2722	52
700	2723	31
701	2723	34
702	4092	62
849	2759	51
851	2757	85
705	4094	82
706	4095	21
707	4096	42
708	4097	8
709	4098	7
710	4099	64
711	4100	67
712	4101	57
852	2757	19
853	2757	54
715	4103	44
716	4105	26
717	4106	17
718	4107	27
719	4108	6
720	4109	54
721	4110	54
722	4111	20
723	4112	69
724	4113	23
725	4114	52
726	4115	31
727	4115	34
728	2712	83
729	4104	83
730	2724	81
731	4116	27
732	2591	84
733	2724	84
734	4006	84
735	4116	84
736	2725	51
737	4117	51
738	2726	54
739	2727	48
740	2728	62
741	2729	84
742	2729	81
743	2729	34
778	2214	66
745	2731	35
746	2732	72
747	2733	49
1708	1425	85
749	2734	36
750	2735	39
751	2736	39
752	2738	66
753	2737	48
754	2739	18
755	2740	29
756	2741	45
757	4118	54
758	4119	48
759	4120	62
760	4121	84
780	2224	5
762	4121	34
763	4121	81
1711	1427	21
765	4123	35
766	4124	72
767	4125	49
768	4126	36
769	4127	39
770	4128	39
771	4129	48
772	4130	66
773	4131	18
774	4132	29
775	4133	45
783	2261	52
784	2262	76
785	2262	72
786	2262	7
4146	4850	76
788	2263	42
789	4948	17
790	2196	19
791	2305	12
792	2305	28
793	2305	29
794	4998	47
795	2701	85
839	4999	49
797	4093	85
842	2752	47
799	2635	72
800	2635	54
801	2710	76
802	2710	72
803	2710	54
804	4042	72
805	4042	54
806	4102	76
807	4102	72
808	4102	54
809	2742	40
810	2742	45
811	2743	47
812	2744	34
813	2745	59
814	2746	72
815	2747	10
816	2748	50
817	2749	8
818	4134	40
819	4134	45
820	4135	47
821	4136	34
822	4137	59
823	4138	72
824	4139	10
825	4140	50
826	4141	8
827	2750	54
828	4142	54
829	2287	8
830	2287	19
831	1348	19
832	2289	19
833	2289	47
834	2298	39
835	2298	41
836	2300	12
837	2300	45
838	1361	39
844	2755	39
845	2755	47
847	2758	76
848	2758	7
850	2760	47
854	2757	39
855	4143	47
856	4144	47
857	4145	39
858	4145	47
859	4146	76
860	4146	7
861	4147	62
862	4148	85
863	2761	62
864	2762	85
865	2763	18
866	2764	82
870	2767	69
868	2765	86
869	2766	86
871	2767	86
872	2768	86
873	2769	86
874	4149	82
875	4150	86
876	4151	86
877	4152	86
878	2770	87
879	2772	87
880	2771	85
881	2773	82
882	2774	82
883	2775	82
884	2776	21
885	4153	87
886	4154	85
887	4155	87
4147	4850	72
889	4157	39
890	2777	34
4148	4850	89
892	2779	39
893	2780	76
894	2780	39
895	2781	39
896	2782	39
897	2783	39
898	2783	83
899	2783	47
900	2784	42
901	4159	39
902	4158	76
903	4158	39
904	4160	39
905	4161	83
906	4161	39
907	4161	47
908	4162	42
909	2785	42
910	2786	42
911	4163	42
912	2787	17
913	2787	45
914	4164	17
915	4164	45
916	2788	47
917	2789	62
918	2790	82
919	2790	54
920	4165	62
921	4166	82
922	4166	54
923	4167	18
924	2791	18
925	2792	4
926	2793	86
927	4168	4
928	4169	86
929	4170	42
930	2794	42
931	2795	47
932	2796	31
933	2797	84
934	2797	47
935	2798	47
936	2799	62
937	2800	37
938	2801	17
939	2802	41
940	2803	19
941	2804	47
942	2805	47
943	2806	28
944	4171	47
945	4172	47
946	4173	17
947	4174	41
948	4175	19
949	4176	47
950	4177	47
951	4178	28
952	4179	30
953	4180	30
954	4181	7
955	4184	49
956	4183	39
957	4183	47
958	4182	84
959	2807	30
960	2808	30
961	2809	31
962	2810	7
963	2811	84
964	2812	39
965	2812	47
966	2813	49
967	2814	69
968	2815	66
969	2815	36
970	2816	26
971	2817	42
972	2818	28
973	4185	66
974	4185	36
975	4186	26
976	4187	7
977	4187	12
978	2818	7
979	2818	12
980	4187	28
981	2819	69
982	2819	51
983	4188	69
984	4188	51
985	2820	48
986	4189	48
987	2821	17
988	4190	17
989	2822	47
990	4191	47
991	2823	35
992	4192	35
993	2824	71
994	4193	71
995	2825	19
996	2825	47
997	4194	19
998	4194	47
999	2325	37
1000	2329	40
1001	2217	44
1002	2334	52
1003	2334	45
1004	2335	19
1005	2335	54
1006	2339	14
1007	2337	47
1008	2341	41
1009	2351	39
1010	2355	7
1011	2355	19
1012	1299	20
1013	1303	52
1014	1303	34
1015	2238	39
1016	2239	4
1017	2243	8
1018	2270	52
1019	2270	34
1020	2271	8
1021	1342	35
1022	1380	42
1023	2826	47
1024	2827	47
1025	2828	34
1026	2829	59
1027	2830	27
1028	2831	10
1452	2994	78
1030	2833	66
1031	2834	66
1032	4195	47
1033	4196	34
1034	4197	27
1035	4198	10
1456	2996	83
1037	4200	66
1038	4201	66
1039	4201	4
1040	2834	4
1041	2835	19
1042	2835	42
1043	2835	48
1044	2836	42
1045	4202	19
1046	4202	42
1047	4202	48
1048	4203	42
1123	2865	60
1050	2837	42
1051	2838	19
1052	2838	42
1053	2839	54
1054	2839	42
1055	4204	54
1056	4204	42
1057	2837	54
1058	4205	19
1059	4205	42
1060	4206	54
1061	4206	42
1062	4207	23
1063	4207	42
1064	2841	23
1065	2841	42
1066	2840	54
1067	2840	42
1068	2842	42
1069	2843	66
1070	2843	42
1071	2844	66
1072	2844	42
1073	4208	42
1074	2845	42
1075	2846	42
1076	2847	42
1077	2848	42
1078	4209	42
1079	2849	8
1080	2850	8
1081	2851	8
1082	2852	8
1083	2852	45
1084	2853	8
1085	2854	8
1086	2855	8
1087	2855	19
1088	2856	8
1089	2856	86
1090	2856	19
1091	2857	8
1092	4210	8
1093	4212	8
1094	4212	45
1095	4213	8
1096	4214	8
1097	4214	19
1098	4215	8
1099	2859	69
1100	4216	69
1101	2860	18
1102	4217	18
1103	2861	76
1104	2862	76
1105	2863	76
1106	2864	76
1107	2865	76
1129	2868	34
1109	4219	76
1110	4220	76
1111	4218	76
1112	2866	76
1130	2869	39
1114	2867	76
1131	4225	39
1116	4221	76
1117	4222	76
1132	2870	39
1119	4223	76
1133	4226	39
1121	4224	76
1134	2871	7
1124	2866	60
1125	2867	60
1126	4222	60
1127	4223	60
1128	4224	60
1135	4227	7
1136	2872	42
1137	4228	42
1138	2873	59
1139	2873	15
1140	2873	29
1141	4229	59
1142	4229	15
1143	4229	29
1144	2874	45
1145	2874	70
1146	2875	45
1147	2875	34
1148	4230	45
1149	2876	45
1150	2877	45
1151	4231	45
1152	2878	67
1153	4232	59
1154	2879	59
1155	2880	8
1156	2881	8
1157	4233	8
1158	4234	8
1159	2882	56
1160	2882	11
1161	4235	56
1162	4235	11
1163	2883	40
1164	2883	42
1165	4236	40
1166	4236	42
1167	2884	42
1168	4237	42
1169	4238	38
1170	4239	7
1171	2885	38
1172	2886	7
1173	2887	17
1174	4240	39
1175	2888	39
1176	2889	66
1177	4241	52
1178	2892	52
1179	2890	69
1180	2890	34
1181	2891	69
1182	2891	34
1183	2893	66
1184	2893	42
1185	4242	66
1186	4242	42
1187	2894	67
1188	4243	82
1189	4243	19
1190	2895	82
1191	2895	19
1857	5002	42
1193	2897	66
1194	4244	18
1195	2898	42
1196	2899	18
1197	4245	45
1198	2900	45
1199	2901	47
1200	2902	28
1201	4246	28
1202	2903	81
1203	4247	81
1204	2904	81
1205	2905	1
1206	4248	7
1207	4248	21
1208	4248	23
1209	4248	35
1210	4248	42
1211	2907	36
1212	2906	7
1213	2906	21
1214	2906	23
1215	2906	35
1216	2906	42
1217	4249	36
1218	2908	72
1219	2908	35
1220	4250	72
1221	4250	35
1222	2909	72
1223	2909	35
1224	4251	72
1225	4251	35
1226	2910	1
1227	4252	1
1228	2911	39
1229	4253	39
1230	2912	54
1231	4254	54
1232	2913	47
1233	4255	47
1234	2914	66
1235	2914	27
1236	4256	66
1237	4256	27
1238	2915	6
1239	4257	6
1240	2916	34
1241	4258	20
1242	4259	66
1243	2917	68
1244	2918	20
1245	2919	20
1246	2920	66
1247	2921	10
1248	2922	69
1249	4260	69
1250	4261	66
1251	2923	47
1252	2924	66
1253	2925	29
1254	4262	29
1255	4263	66
1256	4263	29
1257	2926	66
1258	2926	29
1259	2927	66
1260	2927	29
1261	4264	66
1262	4264	29
1263	2928	72
1264	2928	7
1265	4265	72
1266	4265	7
1267	2929	82
1268	4266	82
1269	1368	48
1270	2346	44
1297	5000	30
1298	5001	12
1273	1373	47
1274	1354	48
1275	2349	48
1276	2250	12
1277	2250	28
1278	1373	38
1279	2273	72
1280	2273	48
1281	1358	29
1282	1376	10
1283	4953	12
1284	4953	28
1285	4955	44
1862	3095	69
1287	1379	37
1288	2350	21
1289	1375	21
1290	1319	76
1291	1319	42
1867	3098	69
1293	1322	76
1294	1322	42
1295	1323	52
1296	1323	34
1299	1313	39
1300	2234	49
1301	2240	10
1302	2264	40
1303	2369	40
1304	2640	88
1305	4046	88
1306	2832	88
1307	4199	88
1308	2896	89
1309	2930	76
1310	2930	7
1311	2930	23
1312	2930	35
1313	4267	76
1314	4267	7
1315	4267	23
1316	4267	35
1317	2931	84
1318	2931	48
1319	4268	84
1320	4268	48
1321	2932	17
1322	4269	17
1323	2933	35
1324	4270	35
1325	2934	78
1326	4271	78
1327	2935	84
1328	2935	47
1329	2935	34
1330	4272	84
1331	4272	34
1332	4272	47
1333	2936	8
1334	2936	81
1335	2936	89
1336	4273	8
1337	4273	81
1338	4273	89
1339	2937	88
1340	2938	88
1341	4274	19
1342	4274	84
1343	4274	89
1344	2939	19
1345	2939	84
1346	2939	89
1347	2940	7
1348	2940	89
1349	4275	7
1350	4275	89
1351	2941	47
1352	4276	19
1353	2942	19
1354	2943	57
1355	4277	57
1356	2944	54
1357	4278	54
1358	2945	20
1359	2945	47
1360	2946	20
1361	2946	47
1362	4279	20
1363	4279	47
1364	2948	18
1365	4281	18
1366	2949	18
1367	2950	18
1368	2951	18
1369	2952	18
1370	2953	18
1371	2954	34
1372	4282	57
1373	2955	57
1453	4308	83
1375	2956	57
1376	2956	66
1377	2957	57
1378	4283	57
1379	4283	66
1380	2958	47
1381	4284	47
1382	2959	39
1383	2959	45
1384	4285	39
1385	4285	45
1386	2960	39
1387	4286	39
1388	2961	17
1389	2962	17
1390	2963	17
1391	2964	17
1392	2965	17
1393	2966	17
1394	2967	48
1395	4287	17
1396	4288	17
1397	4289	17
1398	4290	17
1399	4291	6
1400	4292	6
1401	4293	61
1402	2968	6
1403	2969	6
1404	2970	61
1405	2971	66
1406	2971	29
1407	4294	66
1408	4294	29
1409	2972	34
1410	4295	6
1411	2973	34
1412	2974	6
1413	2975	41
1414	4296	41
1415	2976	19
1416	2977	19
1417	2978	19
1418	2979	68
1419	2980	79
1420	4297	79
1421	2981	6
1422	4298	6
1423	2982	32
1424	4299	32
1425	2983	7
1426	2983	54
1427	2983	39
1428	2984	7
1429	4300	7
1430	4300	54
1431	4300	39
1432	4301	7
1433	2985	26
1434	4302	26
1435	2986	44
1436	4303	44
1437	2987	88
1438	4304	83
1439	4304	78
1440	2988	83
1441	2988	78
1442	2989	69
1443	2989	19
1444	4305	26
1445	2990	31
1446	2991	26
1447	2992	66
1448	2992	26
1449	4306	66
1450	4306	26
1451	2993	17
1454	4308	78
1457	2996	78
1459	2995	17
1460	2997	52
1461	4309	52
1462	2998	47
1463	4310	47
1464	2999	51
1465	2999	88
1466	4311	51
1467	4311	88
1468	3000	88
1469	4312	8
1470	3001	8
1471	3002	47
1472	3002	39
1473	4313	39
1474	4313	47
1475	3003	45
1476	3003	47
1477	4314	45
1478	4314	47
1479	3004	8
1480	4315	8
1481	4316	4
1482	3005	4
1483	3006	42
1484	4317	76
1485	3007	76
1486	3008	17
1487	4318	17
1488	3009	19
1489	4319	19
1490	3010	40
1491	3011	34
1492	3012	54
1493	3013	48
1494	3014	17
1495	4320	40
1496	4321	34
1497	4322	54
1498	4323	48
1499	4324	17
1500	3	79
1501	8	76
1502	8	72
1503	8	79
1504	5	79
1505	4	76
1506	4	79
1507	6	6
1508	6	79
1509	7	8
1510	7	79
1511	9	85
1512	9	79
1513	10	36
1514	10	79
1515	1532	69
1516	1532	88
1517	1416	52
1518	1416	89
1522	11	23
1520	1416	35
1521	1417	47
1523	11	52
1524	11	35
1525	1418	49
1526	12	66
1527	1333	23
1528	1336	54
1529	1336	42
1530	2276	44
1531	2279	54
1532	2299	12
1533	2299	28
1534	2359	64
1858	3092	17
1863	3096	69
1537	4975	88
1538	4967	88
1539	2493	88
1540	2165	83
1541	2368	61
1542	1360	38
1543	3015	18
1544	4325	18
1545	2492	52
1546	2472	88
1547	2475	88
1548	2452	88
1549	3016	45
1550	4326	45
1551	3017	7
1552	3017	82
1553	3017	83
1554	4327	7
1555	4327	82
1556	4327	83
1557	3018	34
1558	4328	34
1559	3019	12
1560	3019	26
1561	4329	39
1562	3020	39
1563	3021	12
1564	3021	37
1565	4330	12
1566	4330	37
1567	3022	69
1606	4122	88
1569	3023	81
1570	3023	18
1571	4331	81
1572	4331	18
1573	3024	81
1574	4332	66
1575	4332	81
1576	4333	35
1577	3025	66
1578	3025	81
1579	3026	35
1580	3027	39
1581	4334	39
1582	3028	72
1583	3028	54
1584	4335	72
1585	4335	54
1586	3029	41
1587	4336	41
1588	3030	19
1589	4338	42
1590	3031	69
1591	4337	69
1592	3032	42
1593	3033	27
1594	4339	27
1595	3034	27
1596	3035	69
1597	3035	27
1598	4340	69
1599	4340	27
1600	3036	27
1601	3036	47
1602	4341	27
1603	4341	47
1604	3037	27
1609	3038	40
1612	3040	35
1614	3041	28
1615	3041	34
1616	4344	66
1617	3042	66
1618	3043	76
1619	3043	72
1620	4345	76
1621	4345	72
1622	3044	40
1623	4346	60
1624	3045	60
1625	4347	35
1626	3046	75
1627	3047	35
1628	3048	44
1629	4348	44
1630	3049	73
1631	4349	73
1632	3050	17
1633	3050	19
1634	4350	69
1635	3051	17
1636	3052	19
1637	3053	69
1709	1424	85
1639	3054	54
1710	1424	62
1712	1427	23
1642	4351	54
1824	1420	86
1644	3054	76
1645	3054	7
1646	4351	76
1647	4351	7
1648	3055	39
1649	4352	39
1650	3056	45
1651	4353	45
1652	3057	6
1653	3057	42
1654	4354	6
1655	4354	42
1656	3058	6
1657	4355	54
1658	4356	54
1659	4356	23
1660	3059	54
1661	3060	54
1662	3061	54
1663	3061	23
1664	3062	54
1665	4357	54
1666	3063	54
1667	4358	54
1668	3064	54
1669	3064	47
1670	4359	54
1671	4359	47
1672	3065	54
1673	3066	54
1674	4361	54
1675	3069	54
1676	4362	54
1677	3070	54
1678	3067	54
1679	3068	54
1680	3070	76
1681	3070	72
1682	4363	76
1683	4363	72
1684	4363	54
1685	3071	54
1686	4364	20
1687	3072	20
1688	3073	20
1689	3074	20
1690	3075	20
1691	3075	66
1692	3076	20
1693	3077	20
1694	3078	14
1695	3079	76
1696	3079	72
1697	4365	20
1698	4365	66
1699	4366	20
1700	4367	20
1701	4368	76
1702	4368	72
1703	4369	6
1704	3080	6
1705	1421	4
1706	1423	7
1826	15	85
1827	15	7
1715	17	42
1716	1428	8
1830	1480	40
1718	1429	76
1719	1431	7
1720	4370	40
1721	3081	40
1722	3082	17
1723	3082	40
1724	1432	64
1725	4371	17
1726	4371	40
1727	3083	69
1728	1432	89
1729	4372	51
1730	1433	19
1731	1433	89
1732	3084	51
1733	3084	31
1734	4372	31
1735	1434	67
1736	1435	57
1737	3085	21
1738	3085	42
1739	4373	51
1831	1480	42
1741	1436	76
1742	1436	72
1743	3086	88
1744	1437	44
1745	1438	83
1746	1439	26
1747	3087	51
1748	3088	62
1749	3088	88
1750	4374	88
1751	4374	70
1752	1440	17
1823	1419	82
1754	1441	76
1755	1441	72
1756	1441	7
1757	3127	88
1758	3126	34
1759	18	27
1760	3089	88
1761	3090	88
1762	3090	70
1763	1443	6
1764	1444	54
1778	1426	82
1766	3091	88
1825	1420	82
1768	1445	54
1769	3091	69
1770	4375	69
1771	4375	88
1772	1446	20
1773	1447	84
1774	1447	34
1775	1448	23
1776	1449	52
1828	16	7
1779	1436	54
1780	1450	31
1781	1450	34
1782	1451	84
1783	1451	81
1784	1452	51
1785	1453	54
1786	1454	48
1787	1455	62
1788	1456	84
1789	1456	81
1790	1456	34
1791	1457	88
1792	1458	35
1793	1459	72
1794	1460	34
1795	1460	49
1796	1461	34
1797	1461	36
1798	1462	39
1799	1463	39
1800	1464	48
1801	1465	66
1802	1467	18
1803	1468	29
1804	1469	45
1805	1473	40
1806	1473	45
1807	1474	47
1808	1476	59
1809	1477	72
1810	1478	10
1811	1479	50
1812	1466	41
1813	1470	19
1814	1471	79
1815	1472	72
1816	1472	74
1817	19	34
1818	19	40
1819	14	81
1820	14	34
1821	13	81
1822	13	34
1829	16	21
1832	2316	88
1833	2317	88
1834	2310	44
1835	2197	88
1836	1359	89
1837	1889	88
1838	1364	88
1839	2347	88
1840	2306	88
1841	1343	79
1842	2359	35
1843	1352	76
1844	1352	72
1845	1352	84
1846	4954	84
1847	4954	81
1848	4954	89
1849	2243	84
1850	1395	52
1851	2501	88
1852	2213	88
1853	4961	88
1854	1322	84
1855	2358	10
1856	2357	10
1859	4376	69
1864	3097	69
1868	3099	69
1869	3099	27
1870	3099	34
1871	3099	47
1875	3101	84
1876	3101	34
1877	3102	84
1878	3102	47
1879	4380	69
1880	3103	69
1881	3104	69
1882	3105	69
1883	3106	69
1884	3107	31
1885	3108	31
1886	3109	31
1887	4381	31
1888	3110	34
1889	3111	62
1890	4382	62
1891	3112	69
1892	3112	34
1911	1481	76
1894	3113	88
1895	4383	69
1896	3114	48
1897	3115	69
1898	3116	69
1899	3117	69
1900	4384	69
1901	4385	69
1902	3118	69
1903	4386	69
1904	3119	69
1905	4387	69
1906	3120	34
1907	3121	69
1908	3122	69
1909	3123	69
1910	4388	69
1912	1481	42
1913	24	42
1914	1482	8
1915	1482	17
1916	1483	8
1917	1484	76
1918	1485	76
1919	1485	72
1920	25	88
1921	27	89
1922	28	35
1923	26	23
1924	26	89
1925	1486	1
1933	3124	34
1927	69	52
1928	1487	6
1929	1488	69
1930	1489	29
1931	29	8
1932	29	89
1934	4389	34
1935	3125	34
1936	3128	34
1937	4390	69
1938	3129	69
1939	3130	69
1940	3131	69
1941	4391	69
1942	3133	8
1943	4392	8
1944	3132	88
1945	3134	8
1946	4393	8
1947	3135	8
1948	4394	8
1949	3137	21
1950	4395	54
1951	3138	6
1952	4396	8
1953	3139	54
1954	3140	8
1955	4397	76
1956	4397	60
1957	3142	76
1958	3142	60
1959	3141	34
1960	4398	51
1961	4398	66
1962	3143	51
1963	3143	66
1964	3144	17
1965	3144	39
1966	4399	69
1967	3145	69
1968	3145	66
1969	3146	69
1970	3147	69
1971	4400	69
1972	3148	69
1973	3147	31
1974	4399	31
1975	3149	69
1976	4401	69
1977	3150	69
1978	3151	69
1979	4402	69
1980	3152	85
1981	4403	85
1982	3153	86
2071	3185	32
1984	4404	86
1985	3154	54
1986	3155	54
1987	4405	54
1988	4406	54
1989	3156	54
1990	3157	54
1991	4407	54
1992	4408	54
1993	4409	54
1994	3158	54
1995	3159	40
2072	3185	34
1997	3160	40
1998	3161	51
1999	3161	54
2000	3161	40
2001	4410	40
2002	4411	40
2003	4412	51
2004	4412	54
2005	4412	40
2006	4413	69
2007	4414	78
2008	3162	69
2009	3163	78
2010	3164	8
2011	4415	8
2073	4427	32
2013	3165	69
2014	3166	23
2015	3167	23
2016	4416	23
2017	3168	76
2018	3168	82
2019	4417	76
2020	4417	82
2021	3169	42
2022	4418	42
2023	3170	29
2024	3171	57
2025	4419	57
2026	3172	84
2027	3172	88
2028	3173	88
2029	4420	84
2030	4420	88
2031	4421	88
2032	3174	19
2033	3175	14
2034	3176	10
2035	3177	45
2036	3178	52
2037	3178	34
2038	4422	52
2039	4422	34
2040	3179	52
2041	3179	34
2042	4423	52
2043	4423	34
2044	3180	52
2045	3180	34
2046	4424	52
2047	4424	34
2048	4424	40
2049	3181	52
2050	3181	34
2051	3181	45
2052	3182	52
2053	3182	34
2054	3182	40
2055	3183	76
2056	3183	19
2057	3183	49
2058	3183	78
2059	3184	19
2060	3184	54
2061	3184	60
2062	3184	23
2063	4425	76
2064	4425	19
2065	4425	49
2066	4425	78
2067	4426	19
2068	4426	54
2069	4426	60
2070	4426	23
2074	4427	34
2075	3186	69
2076	4428	29
2077	3188	29
2078	3187	39
2079	3189	5
2080	4429	5
2081	3190	1
2082	3190	23
2083	4430	1
2084	4430	23
2085	3191	27
2086	4431	27
2087	3192	23
2088	4432	23
2089	3193	34
2090	4433	69
2091	4433	34
2092	3193	69
2093	3194	69
2094	4434	69
2095	3195	20
2096	3196	5
2097	3197	47
2098	3198	17
2099	3198	34
2100	3198	47
2101	4435	17
2102	4435	34
2103	4435	47
2104	3199	8
2105	3199	48
2106	4436	8
2107	4436	48
2108	3200	42
2109	4437	42
2110	3201	89
2111	4438	6
2112	3202	6
2113	3203	17
2114	3203	47
2115	3204	34
2116	3205	17
2117	4439	34
2118	4440	47
2119	3206	20
2120	3206	47
2121	4441	69
2122	3207	47
2123	3208	69
2124	3209	69
2125	3210	34
2126	4442	34
2127	3211	80
2128	4443	80
2129	3212	52
2130	4444	52
2131	3213	31
2132	4445	31
2133	4446	23
2134	3214	23
2135	3214	52
2136	3214	35
2137	4446	52
2138	4446	35
2139	3215	35
2140	4447	35
2141	3216	19
2142	3216	39
2143	3216	47
2144	4448	19
2145	4448	39
2146	4448	47
2147	3217	66
2148	4449	66
2149	3218	17
2150	4450	17
2151	3219	32
2152	4451	32
2153	3220	32
2154	4452	32
2155	3221	47
2156	4453	47
2157	3222	47
2158	4454	52
2159	4454	34
2160	3223	47
2161	3224	28
2162	3225	52
2163	3225	34
2164	3226	47
2165	3227	64
2166	3227	10
2167	4455	64
2168	4455	10
2169	3228	86
2170	3228	84
2171	3228	34
2172	4456	86
2173	4456	84
2174	4456	34
2175	3229	41
2176	4457	41
2177	3230	44
2178	4458	20
2179	4458	47
2180	3231	20
2181	3231	47
2182	3232	84
2183	4459	36
2184	4459	50
2185	3233	47
2186	3234	36
2187	3234	50
2188	3236	19
2189	3235	23
2190	4076	23
2191	3235	35
2192	4460	23
2193	4460	35
2194	2676	23
2195	3237	47
2196	3238	31
2197	4461	19
2198	4462	47
2199	4463	31
2200	3239	88
2201	3240	17
2202	4465	17
2203	3241	42
2204	4466	42
2205	3242	41
2206	4464	88
2207	4467	41
2208	3243	66
2209	3243	45
2210	4468	66
2211	4468	45
2212	3244	45
2213	3244	47
2214	4469	45
2215	4469	47
2216	3245	52
2217	3247	20
2218	4470	59
2219	4470	19
2220	4470	79
2221	4470	78
2222	3246	59
2223	3246	19
2224	3246	79
2225	3246	78
2226	3247	70
2227	3248	20
2228	3249	20
2229	3250	69
2230	3250	84
2231	4471	69
2232	4471	84
2233	3251	69
2234	4472	69
2235	3252	84
2236	3252	88
2237	4473	84
2238	4473	88
2239	3253	73
2240	3254	72
2241	3254	35
2242	4474	73
2243	4475	72
2244	4475	35
2245	30	57
2246	31	50
2247	32	19
2248	1491	79
2249	1491	28
2250	33	45
2251	261	52
2252	261	34
2253	1492	32
2254	1492	34
2255	1492	78
2256	4963	45
2257	34	72
2258	34	89
2259	35	27
2260	36	27
2261	38	45
2262	36	69
2263	1493	75
2264	1493	35
2265	39	76
2266	39	54
2267	1494	54
2268	40	54
2269	1495	72
2270	1495	54
2271	41	72
2272	41	54
2273	42	20
2274	43	21
2275	1496	68
2306	3255	47
2277	1498	69
2278	1498	34
2279	1496	78
2280	1497	69
2281	1497	34
2282	44	89
2283	1499	69
2284	1499	34
2285	45	45
2286	1500	34
2287	1501	17
2288	1501	28
2289	1501	71
2290	1502	34
2291	46	45
2292	1503	10
2293	1503	42
2294	47	66
2295	48	4
2296	49	26
2297	49	29
2298	50	40
2299	51	30
2300	52	37
2301	53	41
2302	54	10
2303	55	9
2304	55	15
2305	56	88
2307	4476	47
2308	3256	20
2309	4477	54
2310	4477	40
2311	3257	54
2312	3257	40
2314	3258	28
2315	3259	47
2316	3259	45
2317	4478	45
2318	4478	47
2319	3260	84
2320	3260	39
2321	3260	47
2322	4479	47
2323	3261	47
2324	3260	69
2325	4480	85
2326	3262	85
2327	3264	85
2328	3264	76
2329	3264	35
2330	4481	85
2331	4481	76
2332	4481	35
2333	3265	12
2334	3266	12
2335	4482	12
2336	4483	12
2337	4484	42
2338	3267	42
2339	3268	8
2340	3268	66
2341	4485	8
2342	4485	66
2343	3269	9
2344	4486	9
2345	3270	76
2346	3270	72
2347	4487	76
2348	4487	72
2349	3271	39
2350	4488	38
2351	4488	39
2352	3271	38
2353	3272	45
2354	3272	47
2355	4489	45
2356	4489	47
2357	3273	45
2367	1506	85
2359	4490	39
2360	4490	45
2361	3273	39
2362	57	19
2363	58	79
2364	59	35
2365	1504	85
2366	1505	42
2368	1506	79
2369	62	35
2370	1507	23
2371	63	62
2372	63	88
2373	64	72
2374	64	89
2375	1508	82
2376	1509	85
2377	1509	84
2378	1509	88
2379	3274	45
2380	3274	47
2381	4491	45
2382	4491	47
2383	3275	66
2384	3275	45
2385	3275	47
2386	4491	66
2387	3276	19
2388	3276	45
2389	3276	47
2390	4492	19
2391	4492	45
2392	4492	47
2393	3277	85
2394	3277	76
2395	3277	35
2396	4493	85
2397	4493	76
2398	4493	35
2399	3278	23
2400	4494	23
2401	4495	84
2506	1514	34
2403	3279	84
2507	1514	75
2405	3280	86
2406	4496	86
2407	3281	69
2408	4497	64
2409	3282	64
2410	3283	19
2411	4498	27
2412	4498	34
2413	3284	39
2414	3285	47
2415	3286	69
2416	3287	27
2417	3287	34
2418	3288	66
2419	3288	27
2420	3288	34
2421	3289	66
2422	3289	27
2423	3289	34
2424	4499	62
2425	4499	39
2426	3290	62
2427	3290	39
2428	3291	47
2429	4500	84
2430	4500	66
2431	3292	84
2432	3292	66
2433	4501	69
2434	4501	34
2435	3293	69
2436	3293	34
2437	3294	10
2438	3294	57
2439	4502	10
2440	4502	57
2441	65	36
2442	1510	39
2443	3295	76
2444	3295	7
2445	3295	17
2446	3295	79
2447	4503	76
2448	4503	7
2449	4503	17
2450	4503	79
2451	66	38
2452	3296	44
2453	4504	44
2454	3297	18
2455	4505	18
2456	3298	45
2457	3298	47
2458	4506	48
2459	3299	48
2460	3300	19
2461	3300	89
2462	3300	31
2463	3301	19
2464	3301	89
2465	3301	31
2466	4507	8
2467	3302	51
2468	3302	31
2469	3302	47
2508	1515	23
2509	77	88
2472	3303	45
2473	3304	47
2474	3305	20
2475	3305	66
2476	3306	8
2477	67	19
2478	3307	72
2479	3307	35
2510	1516	82
2481	4508	35
2482	4508	72
2483	68	19
2484	71	79
2485	72	39
2486	72	47
2487	1511	84
2488	1511	81
2489	4509	37
2490	4509	39
2491	4509	48
2492	3308	47
2493	3309	37
2494	3309	39
2495	3309	48
2496	74	35
2497	61	18
2498	4959	84
2499	4959	88
2500	75	88
2501	1512	35
2502	76	39
2503	76	47
2504	76	71
2505	1513	17
2511	1516	54
2512	1516	35
2513	78	72
2514	78	35
2515	79	76
2516	79	72
2517	1517	72
2518	1517	42
2519	81	72
2520	81	19
2521	82	72
2522	82	41
2523	80	72
2524	80	35
2525	85	88
2526	83	39
2527	84	79
2528	1518	7
2529	86	66
2530	87	17
2531	1519	17
2532	88	42
2533	1533	88
2534	89	19
2535	90	79
2536	1520	34
2537	91	88
2538	1521	72
2539	1521	7
2540	92	88
2541	1618	28
2542	1618	38
2543	1618	39
2544	1618	71
2545	1522	17
2546	1522	85
2547	1522	40
2548	1523	34
2549	1523	40
2550	1524	59
2551	1525	64
2552	1525	76
2553	1525	54
2554	1525	23
2555	2508	66
2556	93	45
2557	94	1
2558	94	23
2559	95	34
2560	96	88
2561	99	34
2562	98	39
2563	100	34
2564	101	88
2565	102	88
2566	1526	85
2567	1526	81
2568	1527	64
2569	1527	5
2570	1527	21
2571	1527	89
2572	1528	10
2573	1528	42
2574	3310	7
2575	3310	32
2576	3310	34
2577	4510	7
2578	4510	32
2579	4510	34
2580	3311	52
2581	3311	34
2582	4511	52
2583	4511	34
2584	3312	85
2585	3312	83
2586	4512	74
2587	3313	74
2588	3313	7
2589	4512	7
2590	3314	34
2591	3314	7
2592	4513	7
2593	4513	34
2594	3315	66
2595	3315	27
2596	3316	47
2597	4514	47
2598	3317	6
2599	4515	6
2600	3318	54
2601	4516	54
2602	3319	30
2603	4517	47
2624	3330	12
2605	3321	74
2606	4518	54
2607	3320	79
2608	3322	47
2609	3323	19
2610	3324	54
2611	3325	54
2612	3325	47
2613	4519	54
2614	4519	47
2615	3326	20
2616	3326	28
2617	4520	20
2618	4520	28
2619	3328	20
2620	3328	66
2621	4521	20
2622	4521	66
2623	3329	20
2625	4522	12
2626	3331	28
2627	4523	28
2628	3332	39
2629	3332	47
2630	4524	39
2631	4524	47
2632	3333	39
2633	4525	39
2634	3334	69
2635	4526	69
2636	3335	34
2637	3335	70
2638	4527	34
2639	4527	70
2640	3336	69
2641	4528	69
2642	3337	69
2643	3338	69
2644	4529	69
2645	3339	69
2646	3340	69
2647	4530	69
2648	3342	69
2649	4532	69
2650	3341	34
2651	3341	47
2652	4531	34
2653	4531	47
2654	3343	34
2655	3343	35
2656	4533	34
2657	4533	35
2658	3344	54
2659	4534	54
2660	3345	66
2661	3346	8
2662	4535	8
2663	3347	34
2664	3347	70
2665	4536	34
2666	4536	70
2667	3348	23
2668	4537	23
2669	3349	52
2670	4538	52
2671	3350	7
2672	3350	54
2673	3350	23
2674	4539	7
2675	4539	54
2676	4539	23
2677	3351	69
2678	3352	47
2679	4540	7
2680	4540	82
2681	3353	7
2682	3353	82
2683	3354	8
2684	3354	86
2685	3354	79
2686	4541	8
2687	4541	86
2688	4541	79
2689	3355	57
2690	4542	57
2691	3356	57
2692	3356	84
2693	4543	57
2694	4543	84
2695	3357	12
2696	4544	12
2697	3358	44
2698	4545	44
2699	3359	51
2700	3359	31
2701	4546	51
2702	4546	31
2703	3360	47
2704	4547	47
2705	3361	64
2706	3361	42
2707	4548	64
2708	4548	42
2741	3375	86
2710	3362	47
2711	4549	47
2712	3363	40
2713	3363	45
2714	4550	40
2715	4550	45
2716	3364	88
2717	4551	88
2718	3365	51
2719	4552	51
2720	3366	54
2721	4553	54
2722	3367	69
2723	4554	69
2724	3368	34
2725	4555	34
2726	3369	78
2727	4556	78
2728	3370	51
2729	3371	85
2730	3371	7
2731	3371	79
2732	4557	85
2733	4557	7
2734	4557	79
2735	3372	47
2736	3373	10
2737	3374	72
2738	3374	82
2739	4558	72
2740	4558	82
2742	4559	86
2743	4559	39
2744	3375	39
2745	3376	66
2746	3376	34
2747	3376	70
2748	3377	28
2749	3377	49
2750	4560	47
2751	3378	47
2752	3378	67
2753	4560	67
2754	3379	82
2755	3379	86
2756	4561	82
2757	4561	86
2758	3380	81
2759	4562	81
2760	3381	39
2761	3381	47
2762	4563	39
2763	3382	39
2764	3383	39
2765	3383	42
2766	2258	81
2767	2561	90
2768	2562	90
2769	3987	90
2770	2599	90
2771	4014	90
2772	2617	90
2773	4025	90
2774	2639	90
2775	4045	90
2776	2905	90
2777	4252	90
2778	2910	90
2779	3190	90
2780	4430	90
2781	1529	28
2782	813	12
2783	1531	12
2784	814	12
2785	1530	12
2786	4946	90
2787	1385	90
2788	1385	81
2789	2480	90
2790	2480	81
2791	1341	90
2792	2481	90
2793	1486	90
2794	94	90
2795	4564	39
2796	4564	42
2797	4566	37
2798	4566	39
2799	4566	47
2800	3384	39
2801	3385	37
2802	3385	39
2803	3385	47
2804	3386	39
2805	4567	39
2806	3387	39
2807	3387	47
2808	4568	39
2809	4568	47
2810	3388	66
2811	3388	39
2812	4569	66
2813	4569	39
2814	3389	37
2815	4570	37
2816	3390	39
2817	3391	48
2818	4571	39
2819	4572	48
2820	3392	48
2821	4573	48
2822	3393	69
2823	3393	66
2824	3394	69
2825	3394	66
2826	4574	69
2827	4574	66
2828	3395	84
2829	3395	66
2830	4575	84
2831	4575	66
2832	3396	69
2833	3396	66
2834	3396	31
2835	4576	69
2836	4576	66
2837	4576	31
2838	3397	66
2839	4577	66
2840	3398	84
2841	3398	66
2842	4578	84
2843	4578	66
2844	3399	17
2845	3399	47
2846	4579	17
2847	4579	20
2848	3400	17
2849	3400	20
2850	3401	17
2851	4580	17
2852	3402	17
2853	3402	34
2854	3402	90
2855	3402	7
2856	3402	78
2857	4581	32
2858	4581	28
2859	3403	40
2860	3404	32
2861	3404	28
2862	4582	19
2863	4582	42
2865	3405	32
2866	3405	34
2867	3405	78
2868	3406	32
2869	3407	19
2870	3407	42
2871	3408	18
2872	4583	18
2873	3409	18
2874	4584	18
2875	3410	12
2876	3411	12
2877	4585	12
2878	4586	12
2879	3412	44
2880	3413	45
2881	4587	44
2882	4588	29
2883	3414	29
2884	3415	39
2885	3415	45
2886	4589	41
2887	4589	45
2888	3416	41
2889	3416	45
2890	3417	70
2891	4590	66
2953	3437	81
2893	3418	66
2954	3437	34
2895	3418	40
2896	4590	40
2897	3419	40
2898	4591	40
2899	3420	47
2900	4592	47
2901	3421	47
2902	3422	28
2903	3423	74
2904	4593	74
2905	4593	79
2906	3423	79
2907	3423	72
2908	3423	7
2909	3423	82
2910	4593	72
2911	4593	7
2912	4593	82
2913	3424	88
2914	4594	88
2915	4595	66
2916	3425	66
2917	3426	34
2918	3426	47
2919	4596	34
2920	4596	47
2921	3427	29
2922	3427	47
2923	4597	39
2924	4597	47
2925	3428	31
2926	3428	47
2927	3429	39
2928	3429	47
2929	3430	68
2930	3430	47
2931	4598	68
2932	4598	47
2933	3431	44
2934	3431	47
2935	4599	44
2936	4599	47
2937	3432	47
2938	4600	47
2939	3433	66
2940	3433	47
2941	4601	66
2942	4601	47
2943	3433	69
2944	4601	69
2945	3434	42
2946	3434	47
2947	4602	40
2948	4602	47
2949	3435	40
2950	3435	47
2951	3436	34
2952	4603	34
2955	4604	81
2956	4604	34
2957	3438	69
2958	3438	34
2959	4605	69
2960	4605	34
2961	3439	34
2962	3439	47
2963	3440	48
2964	3440	42
2965	3441	47
2966	3442	10
2967	3442	41
2968	4606	10
2969	4606	41
2970	3443	28
2971	3444	28
2972	4607	28
2973	3445	45
2974	3445	47
2975	3445	40
2976	3446	32
2977	3446	34
2978	3447	86
2979	3447	62
2980	3448	84
2981	3448	88
2982	4608	84
2983	4608	88
2984	3449	84
2985	3449	66
2986	4609	84
2987	4609	66
2988	3450	28
2989	4610	28
2990	3450	34
2991	4610	34
2992	3451	80
2993	4611	80
2994	3452	47
2995	4612	47
2996	3453	47
2997	3454	84
2998	3454	47
2999	4613	44
3000	3455	44
3001	3456	44
3002	4614	28
3003	4614	34
3004	3457	28
3005	3457	34
3006	3458	28
3007	3458	34
3008	4615	28
3009	4615	34
3010	3459	68
3011	3460	68
3012	3460	47
3013	4616	84
3014	4616	62
3015	4616	88
3016	3461	84
3017	3461	62
3018	3461	88
3019	3462	8
3020	3462	21
3021	4617	8
3022	4617	21
3023	3463	76
3024	3463	7
3025	3463	79
3026	4618	76
3027	4618	7
3028	4618	79
3171	795	50
3030	3464	81
3031	3464	34
3032	4619	81
3033	4619	34
3034	3465	12
3035	3465	66
3036	4620	12
3037	4620	66
3038	3466	47
3039	4621	47
3040	3467	75
3041	3467	45
3042	4622	75
3043	4622	45
3044	3468	82
3045	3468	19
3046	4623	5
3047	3469	5
3048	3470	84
3049	3470	88
3050	4624	84
3051	4624	88
3052	3471	45
3053	3471	47
3054	4625	66
3055	3472	66
3056	3473	47
3057	4626	47
3173	798	4
3059	3474	73
3060	4627	73
3061	3475	20
3062	4628	62
3063	3476	62
3064	3477	44
3065	3478	66
3066	3478	52
3067	4629	44
3068	4630	47
3069	3479	47
3070	3481	88
3071	3480	84
3072	4631	88
3073	2811	88
3074	3481	84
3075	4182	88
3076	4631	84
3077	3482	39
3078	3482	47
3079	4632	39
3080	4632	47
3081	3483	84
3082	3483	47
3083	4633	84
3084	3484	84
3085	3485	42
3086	4634	42
3087	3486	88
3088	4635	88
3089	3487	34
3090	4636	20
3091	4637	20
3092	3489	20
3093	3488	20
3094	3490	66
3095	4638	66
3096	3491	51
3097	4639	51
3098	4640	66
3099	3492	66
3100	3493	8
3101	3493	36
3102	4641	8
3103	4641	36
3104	3494	36
3170	796	8
3106	3495	35
3107	4643	35
3108	3496	19
3109	3496	47
3110	4642	36
3111	3497	69
3112	3498	73
3113	4644	73
3114	3498	84
3115	4644	84
3116	3499	64
3117	3499	84
3118	3499	81
3119	4645	64
3120	4645	84
3121	4645	81
3122	3500	69
3123	3501	88
3124	4646	88
3125	3502	44
3126	4647	44
3127	3503	44
3128	4648	44
3129	3504	86
3130	3504	88
3131	4649	86
3132	4649	88
3133	3505	31
3134	3505	47
3135	4650	31
3136	4650	47
3137	3506	47
3138	4651	47
3139	3507	66
3140	3507	28
3141	3507	39
3142	3507	47
3143	4652	42
3144	3508	31
3145	3508	47
3146	3509	42
3147	3510	19
3148	4653	87
3149	3511	87
3150	3512	7
3151	3513	7
3152	3513	78
3153	4654	7
3154	4655	7
3155	4655	78
3156	3514	84
3157	3514	88
3158	4656	84
3159	4656	88
3160	3515	69
3161	3515	66
3162	4657	59
3163	3516	59
3164	3517	23
3165	4658	23
3166	3517	57
3167	3517	49
3168	4658	57
3169	4658	49
3172	797	4
3174	799	8
3175	800	29
3176	796	21
4629	5014	12
3178	5007	89
4632	5016	12
3197	2222	44
4633	5016	14
4635	5018	12
3183	1	88
4636	5018	88
4638	5013	89
4642	2333	45
4644	5011	7
4648	5025	69
4649	5025	90
4650	5025	56
4653	5024	28
4655	5026	71
3193	4938	66
3194	2479	19
3195	2210	6
3196	2210	19
3198	2221	45
3199	3518	88
3200	3519	69
3201	4659	69
3202	3520	87
3203	3520	52
3204	3520	34
3205	4660	87
3206	4660	52
3207	4660	34
3208	3521	52
3209	3521	34
3210	3521	35
3211	4661	52
3212	4661	34
3213	4661	35
3214	3522	52
3215	3522	34
3216	3522	75
3217	3522	35
3218	3521	75
3219	4661	75
3220	3523	69
3221	4662	69
3222	3524	69
3223	3525	69
3224	3525	19
3225	3525	81
3226	4663	69
3227	3526	69
3228	3527	69
3229	3529	69
3230	3530	69
3231	3528	83
3232	3528	34
3233	4664	69
3234	4665	40
3235	4665	45
3236	3531	40
3237	3531	45
3238	3532	85
3239	3532	88
3240	4666	85
3241	4666	88
3242	3533	88
3243	4667	30
3244	3534	30
3245	3535	28
3246	3536	69
3330	4679	32
3248	3536	34
3332	3568	47
3335	3570	47
3251	3538	34
3337	4681	47
3253	3539	34
3254	3540	81
3255	3540	34
3256	3541	69
3339	4682	47
3341	3574	31
3342	3574	47
3345	3575	17
3346	3575	38
3262	3544	69
3263	3545	88
3264	4670	88
3265	3546	48
3266	3547	48
3267	3548	88
3268	4671	88
3269	3549	89
3270	4672	89
3271	3551	31
3272	3551	34
3273	3552	19
3274	3553	52
3275	3554	19
3276	4673	23
3277	4673	35
3278	3555	23
3279	3555	35
3329	3567	32
3281	3556	72
3331	4680	47
3333	3569	69
3284	4674	72
3334	3569	47
3286	3559	88
3287	3560	84
3288	3561	84
3289	3561	88
3290	3562	88
3291	3542	69
3336	3571	47
3293	4669	69
3338	3572	47
3295	3543	69
3296	3543	86
3297	3537	84
3298	3537	88
3299	4668	84
3300	4668	88
3301	3539	84
3302	3545	84
3303	4670	84
3304	3550	86
3305	3550	88
3306	3553	34
3307	3556	7
3308	3556	23
3309	4674	7
3310	4674	23
3311	3557	69
3312	3558	69
3313	3563	88
3314	3563	34
3315	4675	88
3316	4675	34
3317	3564	51
3318	4676	51
3319	3565	11
3320	3565	19
3321	3565	84
3322	4677	11
3323	4677	19
3324	4677	84
3325	4677	88
3326	3565	88
3327	4678	66
3328	3566	66
3340	3573	47
3343	4683	31
3344	4683	47
3347	3575	39
3348	3575	47
3349	4684	17
3350	4684	38
3351	4684	39
3352	4684	47
3353	3576	7
3354	3576	82
3355	3576	54
3356	3576	35
3357	3577	72
3358	3577	19
3359	3577	35
3360	3578	72
3361	3578	7
3362	3578	82
3363	3578	83
3364	3578	54
3365	3578	35
3366	3579	84
3367	3579	35
3368	3580	69
3369	3580	34
3370	3581	10
3371	3581	88
3372	4689	10
3373	4689	88
3374	3582	84
3375	3582	47
3376	3583	66
3377	4690	66
3378	3584	69
3379	4691	69
3380	3585	18
3381	4692	64
3382	3586	64
3383	3587	49
3384	3588	72
3385	4693	72
3386	3589	76
3387	3589	72
3388	3589	23
3389	3589	42
3390	4694	76
3391	4694	72
3392	4694	23
3393	4694	42
3394	3590	72
3395	3590	17
3396	3590	79
3397	3590	54
3398	3590	52
3399	3590	40
3400	3590	42
3401	4695	72
3402	4695	17
3403	4695	79
3404	4695	54
3405	4695	52
3406	4695	40
3407	4695	42
3408	3591	76
3409	3591	72
3410	3591	19
3411	3591	89
3412	3591	47
3413	4696	76
3414	4696	72
3415	4696	19
3416	4696	89
3417	4696	47
3418	3592	72
3419	4697	72
3420	3593	7
3421	3593	23
3422	3593	28
3423	3593	35
3424	3593	39
3425	3593	47
3426	4698	7
3427	4698	23
3428	4698	28
3429	4698	35
3430	4698	39
3431	4698	47
3432	3594	7
3433	3594	54
3434	4699	7
3435	4699	54
3436	3595	83
3437	3595	23
3438	3595	35
3439	4700	83
3440	4700	23
3441	4700	35
3442	3596	66
3443	4701	66
3444	3598	34
3445	3599	84
3446	3599	88
3447	4702	84
3448	4702	88
3449	3597	69
3450	3600	7
3451	3600	82
3452	4703	7
3453	4703	82
3454	3601	76
3455	4704	76
3456	3602	7
3457	4705	7
3458	3603	54
3459	4706	54
3460	3604	23
3461	4707	23
3462	3605	86
3463	4708	86
3464	4709	72
3465	4709	88
3466	3606	72
3467	3606	88
3468	3607	7
3469	3607	19
3470	3607	84
3471	4710	7
3472	4710	19
3473	4710	84
3474	3608	39
3475	4711	38
3476	4711	39
3498	3617	88
3499	3618	45
3479	3608	38
3480	3609	42
3481	4712	42
3482	3610	19
3483	4713	19
3484	3611	54
3485	4714	54
3486	3612	23
3487	4715	23
3488	3613	35
3489	4716	35
3490	3614	76
3491	3614	72
3492	4717	76
3493	4717	72
3494	3615	39
3495	4718	39
3496	3616	72
3497	4719	72
3500	4720	45
3501	3619	66
3502	3619	36
3503	3619	50
3504	4721	66
3505	4721	36
3506	4721	50
3507	3620	36
4142	3806	76
3509	4722	36
4143	3806	72
3511	3621	17
3512	3621	19
3513	3621	23
3514	3621	36
3515	3621	50
3516	4723	17
3517	4723	19
3518	4723	23
3519	4723	36
3520	4723	50
3521	3622	39
3522	3622	47
3523	4724	39
3524	4724	47
3525	3623	7
3526	3623	39
3527	4725	7
3528	4725	39
3529	3624	17
3530	3624	19
3531	3624	38
3532	4726	17
3533	4726	19
3534	4726	38
3535	3625	52
3536	3625	39
3537	4727	52
3538	4727	39
3539	3626	54
3540	3626	38
3541	4728	54
3542	4728	38
3543	3627	72
3544	3627	37
3545	3627	39
3546	3627	42
3547	3627	47
3548	4729	72
3549	4729	37
3550	4729	39
3551	4729	42
3552	4729	47
3553	3628	39
3554	4730	39
3555	3629	39
3556	4731	39
3557	3630	38
4144	3806	89
3559	4732	38
3560	4732	47
3561	3631	54
3562	3631	38
3563	3631	39
3564	3631	47
3565	4732	54
3566	4732	39
3567	3632	39
3568	3632	47
3569	4733	39
3570	4733	47
3571	3633	19
3572	3633	39
3573	3633	47
3574	4734	19
3575	4734	39
3576	4734	47
3577	3634	39
3578	3634	48
3579	4735	39
3580	4735	48
3581	3635	19
3582	3635	38
3583	3635	39
3584	3635	47
3585	4736	19
3586	4736	38
3587	4736	39
3588	4736	47
3589	3636	88
3590	3637	10
3591	3637	88
3592	4737	10
3593	4737	88
3594	3638	66
3595	4738	66
3596	3639	18
3597	4739	18
3598	3640	34
3599	3640	44
3600	4740	34
3601	4740	44
3602	3641	72
3603	3641	17
3604	3641	19
3605	3641	54
3606	4741	72
3607	4741	17
3608	4741	19
3609	4741	54
3610	3641	7
3611	4741	7
3612	3642	72
3613	3642	7
3614	3642	54
3615	4742	72
3616	4742	7
3617	4742	54
3618	3643	84
3619	3643	66
3620	4743	84
3621	4743	66
3622	3644	84
3623	3644	66
3624	4744	84
3625	4744	66
3626	3645	66
3627	4745	66
3628	3646	69
3629	3646	66
3630	4746	69
3631	4746	66
3632	3647	66
3633	4747	66
3634	3648	69
3635	3648	66
3636	4748	69
3637	4748	66
3638	3649	84
3639	3649	66
3640	4749	84
3641	4749	66
3642	3650	51
3643	3650	66
3644	4750	51
3645	4750	66
3646	3651	66
3647	4751	66
3648	4752	66
3649	3652	66
3650	3653	20
3651	3653	66
3652	3654	66
3653	4753	66
3654	3655	66
3655	4754	66
3656	3656	69
3657	3656	66
3658	4755	69
3659	4755	66
3660	3657	69
3661	3657	66
3662	4756	69
3663	4756	66
3664	5010	48
3665	3658	20
3666	3658	66
3667	4757	20
3668	4757	66
3669	3659	66
3670	4758	66
3671	3660	66
3672	3661	17
3673	3662	17
3674	3663	17
3675	3664	17
3676	4759	17
3677	3665	17
3678	4760	17
3679	3666	17
3680	3667	28
3681	3668	40
3682	3669	32
3683	3670	66
3684	3670	42
3685	4761	66
3686	4761	42
3687	3672	69
3688	4762	69
3689	3673	10
3690	3673	23
3691	3673	44
3692	4763	10
3693	4763	23
3694	4763	44
3695	3676	17
3696	3676	28
3697	3677	69
3698	3677	32
3699	3678	32
3700	4764	32
3701	3679	32
3702	4765	32
3703	3680	32
3704	4766	32
3705	3681	32
3706	4767	32
3707	3682	10
3708	3682	41
3745	3671	6
3746	3671	61
3711	3684	11
3712	3684	18
3713	4768	11
3714	4768	18
3715	3685	72
3716	3685	7
3717	3685	19
3718	3685	54
3719	4769	72
3720	4769	7
3721	4769	19
3722	4769	54
3723	3687	42
3724	4770	42
3725	3690	42
3726	4772	42
3727	3691	42
3728	4773	42
3729	3688	69
3730	3688	42
3731	3689	66
3732	3689	42
3733	4771	66
3734	4771	42
3776	3704	28
3777	3704	39
3737	3693	66
3738	4775	66
3739	3695	10
3740	3695	86
3741	3695	41
3742	4777	10
3743	4777	86
3744	4777	41
3747	3674	71
3748	3675	17
3749	3686	69
3750	3694	19
3751	3694	41
3752	4776	19
3753	4776	41
3754	3696	41
3755	4778	41
3756	3697	11
3757	3697	18
3758	3698	12
3759	3698	19
3760	3698	66
3761	4779	12
3762	4779	19
3763	4779	66
3764	3699	12
3765	3700	12
3766	4780	12
3767	3701	12
3768	3702	64
3769	3702	28
3770	4781	64
3771	4781	28
3772	3692	73
3773	4774	73
3774	3703	5
3775	3703	27
3778	3705	66
3779	3705	45
3780	4782	66
3781	4782	45
3783	3706	39
3784	3707	39
3785	4783	39
3786	3711	6
3787	3711	61
3788	3711	17
3789	3711	19
3790	3711	23
3791	3711	42
3792	4786	6
3793	4786	61
3794	4786	17
3795	4786	19
3796	4786	23
3797	4786	42
3798	3712	23
3799	3712	35
3800	4787	23
3801	4787	35
3802	3713	64
3803	3713	76
3804	3713	72
3805	3713	7
3806	3713	10
3807	3713	23
3808	3713	30
3809	3713	35
3810	3713	42
3811	4788	64
3812	4788	76
3813	4788	72
3814	4788	7
3815	4788	10
3816	4788	23
3817	4788	30
3818	4788	35
3819	4788	42
3820	3714	64
3821	4789	64
3822	3716	55
3823	3716	27
3824	3717	69
3825	3717	55
3826	3717	66
3827	4790	69
3828	4790	55
3829	4790	66
3830	3718	45
3831	4791	45
3832	3719	36
3833	3719	45
3834	4792	36
3835	4792	45
3836	3720	37
3837	3720	45
3838	4793	37
3839	4793	45
3840	3721	66
3841	3721	45
3842	4794	66
3843	4794	45
3844	3722	45
3845	3722	48
3846	4795	45
3847	4795	48
3848	3723	10
3849	3723	45
3850	4796	10
3851	4796	45
3852	3724	64
3853	3724	45
3854	4797	64
3855	4797	45
3856	3725	45
3857	4798	45
3858	3726	45
3859	3727	45
3860	3728	83
3861	3728	35
3862	4799	83
3863	4799	35
3864	3729	47
3865	4800	47
3866	3730	9
3867	4801	9
3868	3731	69
3869	3732	85
3870	3732	84
3871	3732	88
3872	4802	85
3873	4802	84
3874	4802	88
3875	3733	66
3876	3733	47
3877	4803	66
3878	4803	47
3879	3734	40
3880	3734	80
3881	4804	40
3882	4804	80
3883	3736	19
3884	3735	19
3885	3737	69
3886	3737	19
3887	3738	69
3888	3738	19
3889	3739	7
3890	3739	19
3891	3739	84
3892	3739	78
3893	4805	7
3894	4805	19
3895	4805	84
3896	4805	78
3897	3740	19
3898	3740	54
3899	4806	19
3900	4806	54
3901	3741	19
3902	3742	19
3903	3742	84
3904	4807	19
3905	4807	84
3906	3743	5
3907	3743	8
3908	3744	85
3909	3744	7
3910	4808	85
3911	4808	7
3912	3745	28
3913	4809	28
3914	3746	69
3915	3749	7
3916	3749	19
3917	3749	79
3918	3749	23
3919	4810	7
3920	4810	19
3921	4810	79
3922	4810	23
3923	3747	69
3924	3748	17
3925	3748	28
3926	3750	74
3927	3750	67
3928	4811	74
3929	4811	67
3930	3751	72
3931	3751	17
3932	3751	37
3933	3751	45
3934	4812	72
3935	4812	17
3936	4812	37
3937	4812	45
3938	3752	72
3939	3752	7
3940	3752	79
3941	3752	35
3942	4813	72
3943	4813	7
3944	4813	79
3945	4813	35
3946	3753	76
3947	3753	72
3948	3753	79
3949	4814	76
3950	4814	72
3951	4814	79
3952	3333	91
3953	4525	91
3954	3377	91
3955	4783	91
3956	3706	91
3957	3707	84
3958	3707	91
3959	4783	84
3960	3708	84
3961	3708	39
3962	3708	91
3963	3818	4
3964	3818	91
3965	4855	4
3966	4855	91
3967	3709	29
3968	4784	29
3969	4785	29
3970	3710	29
3971	3754	76
3972	3754	74
3973	3754	83
3974	3754	79
3975	4815	76
3976	4815	74
3977	4815	83
3978	4815	79
3979	3755	14
3980	3755	66
3981	4816	14
3982	4816	66
3983	3756	87
3984	3756	34
3985	4817	87
3986	4817	34
3987	3757	84
3988	3757	88
3989	4818	84
3990	4818	88
3991	3758	84
3992	3758	88
3993	4819	84
3994	4819	88
3995	3759	85
3996	3759	73
3997	4820	85
3998	4820	88
3999	3760	27
4000	4821	27
4001	3761	26
4002	4822	26
4003	3762	34
4004	3763	34
4005	4823	34
4006	3764	34
4007	3765	41
4008	3765	55
4009	3766	55
4010	3767	55
4011	3767	84
4012	3768	83
4013	3768	79
4014	3768	54
4015	4824	83
4016	4824	79
4017	4824	54
4018	3769	82
4019	3769	86
4020	4825	82
4021	4825	86
4022	3770	17
4023	3770	34
4024	4826	17
4025	4826	34
4026	3771	69
4027	3771	32
4028	3772	76
4029	3772	7
4030	3772	60
4031	4827	76
4032	4827	7
4033	4827	60
4034	3774	84
4035	4829	84
4036	3775	42
4037	4830	42
4038	3776	7
4039	3776	82
4040	3776	86
4041	4831	7
4042	4831	82
4043	4831	86
4044	3777	7
4045	3777	54
4046	4832	7
4047	4832	54
4048	3778	7
4049	3778	82
4050	3778	54
4051	3778	42
4052	2778	92
4053	4156	92
4054	3620	92
4055	4722	92
4056	3773	92
4057	4828	92
4058	3897	92
4059	4895	92
4060	3779	35
4061	4833	35
4062	3780	47
4063	3781	47
4064	4834	47
4065	3782	47
4066	4835	47
4067	3783	69
4068	3783	47
4069	4836	69
4070	4836	47
4071	3784	47
4072	4837	47
4073	3785	51
4074	3785	42
4075	3785	47
4076	3786	47
4077	3787	47
4078	3788	84
4079	3788	47
4080	4838	84
4081	4838	47
4082	3789	20
4083	3789	47
4084	3790	47
4085	3791	47
4086	4839	47
4087	3792	84
4088	3792	47
4089	4840	84
4090	4840	47
4091	3793	89
4092	3793	47
4093	4841	89
4094	4841	47
4095	3794	87
4096	3794	84
4097	3794	47
4145	3806	30
4099	4842	84
4100	4842	47
4101	3795	84
4102	3795	47
4103	3796	47
4104	4843	47
4105	3797	19
4106	3797	84
4107	3797	39
4108	3797	47
4109	4844	19
4110	4844	84
4111	4844	39
4112	4844	47
4113	3798	19
4114	3798	47
4115	4845	19
4116	4845	47
4117	3799	86
4118	3799	79
4119	3799	84
4120	3799	47
4121	3800	79
4122	3800	89
4123	3800	47
4124	3801	69
4125	3801	19
4126	3801	47
4127	4846	69
4128	4846	19
4129	4846	47
4130	3802	84
4131	3802	89
4132	3802	47
4133	4847	84
4134	4847	89
4135	4847	47
4136	3803	17
4137	3803	34
4138	4848	17
4139	4848	34
4140	3805	34
4141	4849	34
4149	4850	30
4150	3807	84
4151	3807	47
4152	3808	69
4153	3808	34
4154	3809	69
4155	4851	69
4156	3810	69
4157	4852	69
4158	3811	69
4159	3811	20
4160	3812	72
4161	3812	7
4162	3812	48
4163	4853	72
4164	4853	7
4165	4853	48
4166	3813	85
4167	3813	48
4168	4854	85
4169	4854	48
4170	3814	7
4171	3814	89
4172	3815	66
4173	3816	69
4174	3817	45
4175	3817	47
4176	3817	70
4177	3819	84
4178	3819	47
4179	3820	66
4180	3820	28
4181	3820	47
4182	4856	66
4183	4856	28
4184	4856	47
4185	3821	76
4186	3821	17
4187	4857	76
4188	4857	17
4189	4858	28
4190	4858	34
4191	3822	28
4192	3822	34
4193	3823	84
4194	3823	66
4195	4859	84
4196	4859	66
4197	3824	69
4198	3824	84
4199	3825	84
4200	3825	66
4233	3827	84
4236	4862	17
4203	3826	84
4204	3826	20
4205	3826	47
4206	3828	64
4207	3828	59
4208	3828	7
4209	3828	19
4210	3828	79
4211	3828	23
4212	3828	89
4213	4860	64
4214	4860	59
4215	4860	7
4216	4860	19
4217	4860	79
4218	4860	23
4219	4860	89
4220	3829	59
4221	3829	19
4222	3829	84
4223	3829	54
4224	3829	23
4225	3829	52
4226	4861	59
4227	4861	19
4228	4861	84
4229	4861	54
4230	4861	23
4231	4861	52
4232	3830	59
4234	3831	17
4235	3831	84
4237	4862	84
4238	3832	84
4239	3832	23
4240	3832	52
4241	3832	35
4242	4863	84
4243	4863	23
4244	4863	52
4245	4863	35
4246	3833	75
4247	4864	75
4248	3834	49
4249	4865	49
4250	3835	88
4251	4866	88
4252	3836	40
4253	3837	32
4254	3838	32
4255	3839	12
4256	3839	28
4257	3840	32
4258	4867	32
4259	3841	47
4260	4868	47
4261	3842	84
4262	3842	88
4263	4869	84
4264	4869	88
4265	3843	84
4266	3843	88
4308	3858	84
4309	3858	88
4269	3844	84
4270	3845	82
4271	3845	86
4272	3845	84
4273	3846	51
4274	3846	84
4275	3847	23
4276	4870	23
4277	3848	82
4278	3848	86
4279	3849	47
4280	3849	80
4281	3849	70
4282	3849	34
4283	3850	34
4284	3850	47
4285	3850	80
4286	3850	70
4287	3851	52
4288	3851	80
4289	3852	52
4290	3852	80
4291	4871	52
4292	4871	80
4293	3853	28
4294	3854	57
4295	3854	19
4296	3854	79
4297	4872	57
4298	4872	19
4299	4872	79
4300	3855	47
4301	3856	84
4302	3856	54
4303	4873	84
4304	4873	54
4305	3857	87
4306	3857	84
4307	3857	34
4310	4874	84
4311	4874	88
4312	3859	47
4313	4875	47
4314	3860	34
4315	3860	47
4316	3860	70
4317	3861	69
4318	3861	34
4319	4876	69
4320	4876	34
4321	3862	84
4322	3862	66
4442	4890	76
4324	3862	47
4325	3863	70
4326	4877	70
4327	3864	84
4328	3864	88
4329	3862	88
4330	3865	66
4331	4878	66
4332	3866	34
4333	3866	75
4334	4879	34
4335	4879	75
4336	3867	10
4337	3867	28
4338	3867	38
4339	3867	47
4340	4880	10
4341	4880	28
4342	4880	38
4343	4880	47
4344	3868	12
4345	3868	86
4346	3869	87
4347	4881	87
4348	4881	84
4349	3869	84
4350	3870	87
4351	3870	84
4352	3871	76
4353	3871	54
4354	3872	28
4355	3873	8
4356	3873	19
4357	3873	23
4358	3873	47
4360	3874	28
4361	3874	29
4362	3874	30
4363	3874	37
4364	3874	39
4365	3874	48
4443	4890	72
4367	4882	28
4368	4882	29
4369	4882	30
4370	4882	37
4371	4882	39
4372	4882	48
4373	3875	84
4374	3876	84
4375	3876	34
4376	3876	80
4377	3877	47
4378	4883	47
4379	3878	6
4380	3878	10
4381	3878	40
4382	3878	50
4383	4884	6
4384	4884	10
4385	4884	40
4386	4884	50
4387	3880	85
4388	3880	84
4389	3880	54
4390	4885	85
4391	4885	84
4392	4885	54
4393	3881	35
4394	4886	35
4395	3879	10
4396	3879	84
4397	3882	52
4398	3882	35
4399	3883	84
4400	3883	47
4401	3884	6
4402	3884	61
4403	4887	6
4404	4887	61
4405	4882	5
4406	3874	5
4444	4890	86
4446	4891	34
4409	3885	62
4410	3885	88
4411	3886	69
4412	3886	62
4413	3887	62
4414	3887	88
4415	3888	7
4416	3888	19
4417	3888	84
4418	3888	78
4419	3889	64
4420	3889	59
4421	3889	15
4422	3889	86
4423	3889	23
4424	4888	64
4425	4888	59
4426	4888	15
4427	4888	86
4428	4888	23
4429	3890	64
4430	3890	5
4431	3890	9
4432	3890	17
4433	3890	21
4434	4889	64
4435	4889	5
4436	4889	9
4437	4889	17
4438	4889	21
4439	3891	76
4440	3891	72
4441	3891	86
4445	3892	34
4447	3893	66
4448	3893	26
4449	4892	66
4450	4892	26
4451	3894	69
4452	4893	69
4453	3895	88
4458	3899	51
4455	3896	78
4456	4894	78
4457	3898	12
4459	3899	31
4460	3900	38
4461	3900	39
4462	3901	75
4463	4896	75
4464	3902	52
4465	3902	34
4466	3902	75
4467	3902	35
4468	3903	69
4469	3903	86
4470	4897	69
4471	4897	86
4472	3904	52
4473	3904	34
4474	3904	35
4475	3905	17
4476	3906	42
4477	4898	42
4478	3907	42
4479	3908	45
4480	4899	45
4481	3909	34
4482	3910	40
4483	3912	17
4484	3912	28
4485	3913	66
4486	3913	50
4487	4901	66
4488	4901	50
4489	3914	19
4490	3914	23
4491	3914	34
4492	3915	5
4493	3915	8
4494	3915	84
4495	3915	89
4496	4902	5
4497	4902	8
4498	4902	84
4499	4902	89
4500	3916	5
4501	4903	5
4502	3917	17
4503	3918	73
4504	4904	73
4505	3919	47
4506	3920	47
4507	4905	47
4508	3921	84
4509	3921	23
4510	4906	84
4511	4906	23
4512	3922	54
4513	3922	35
4514	3921	35
4515	4907	54
4516	4907	35
4517	4906	35
4518	3923	23
4519	3923	35
4520	3924	39
4521	4908	39
4522	3925	18
4523	3926	69
4524	3926	21
4525	3926	23
4526	3927	52
4527	4909	52
4528	3928	17
4529	3929	88
4530	4910	88
4531	3930	66
4532	3931	83
4533	3931	79
4534	3931	28
4535	4911	83
4536	4911	79
4537	4911	28
4538	3932	84
4539	3932	34
4540	3932	40
4541	3933	28
4542	3934	20
4543	3934	70
4544	3935	23
4545	3935	52
4546	3935	34
4547	3936	34
4548	3937	34
4549	4912	34
4550	3938	10
4551	4913	10
4552	3939	10
4553	3939	42
4554	4914	10
4555	4914	42
4556	3940	50
4557	4915	50
4558	3941	90
4559	4916	90
4560	3942	4
4561	3942	29
4562	4917	4
4563	4917	29
4564	3943	17
4565	4918	17
4566	3944	17
4567	4919	17
4568	3945	6
4569	4920	6
4570	4921	40
4571	3946	40
4572	3947	8
4573	4922	8
4574	3948	8
4575	4923	8
4576	3949	8
4577	3949	9
4578	4924	8
4579	4924	9
4580	3950	39
4581	4925	39
4582	3951	64
4583	4926	64
4584	3952	40
4585	4927	40
4586	4928	48
4587	3953	48
4588	3954	36
4589	4929	36
4590	3955	59
4591	4930	59
4592	3956	19
4593	3956	67
4594	4931	19
4595	4931	67
4596	3957	52
4597	3957	34
4598	3958	76
4599	3958	72
4600	4932	76
4601	4932	72
4602	2623	81
4603	2623	39
4604	2623	47
4605	4030	81
4606	4030	39
4607	4030	47
4608	4900	59
4610	2229	19
4611	2301	45
4612	2227	81
4613	2501	81
4614	4944	66
4615	2233	59
4616	2233	30
4617	2247	10
4618	5012	44
4619	5003	12
4620	5004	12
4621	5004	14
4622	5005	12
4623	5005	14
4624	5006	12
4625	5007	12
4626	5008	89
4627	5008	28
4628	5009	12
4630	5015	12
4631	5015	14
4634	5013	12
4637	5014	89
4643	5019	30
4640	5017	89
4641	5017	28
4645	5023	56
4646	5023	5
4647	5023	6
4651	5021	79
4652	5021	28
4654	5020	28
4656	5042	68
4657	5043	68
4658	5045	47
4659	5045	69
4660	5046	69
4661	5046	47
4662	5047	47
4663	5047	45
4664	5053	68
4665	5055	1
4666	5055	90
4667	5061	18
4668	5062	17
4669	5064	47
4670	5054	68
4671	5065	34
4672	5066	34
4673	5116	40
4674	5142	30
4675	5167	45
4676	5167	70
4677	5180	82
4678	5180	19
4679	5346	76
4680	5346	82
4681	5372	52
4682	5392	88
4683	5398	52
4684	5502	81
4685	5502	34
4686	5557	34
4687	5557	84
4688	5560	89
4689	5556	34
4690	5615	42
4691	5615	42
4692	5658	34
4693	5069	54
4694	5071	31
4695	5057	51
4696	5076	34
4697	5077	59
4698	5077	29
4699	5027	32
4700	5027	66
4701	5028	34
4702	5029	52
4703	5029	31
4704	5029	34
4705	5030	52
4706	5031	34
4707	5031	52
4708	5032	52
4709	5034	52
4710	5034	34
4711	5035	52
4712	5037	52
4713	5037	34
4714	5084	73
4715	5086	27
4716	5087	30
4717	5088	17
4718	5092	20
4719	5093	1
4720	5093	23
4721	5093	90
4722	5094	17
4723	5095	34
4724	5099	45
4725	5100	32
4726	5102	30
4727	5103	64
4728	5104	45
4729	5107	35
4730	5107	23
4731	5109	17
4732	5112	18
4733	5115	34
4734	5124	87
4735	5127	87
4736	5128	82
4737	5130	42
4738	5131	42
4739	5135	18
4740	5137	86
4741	5139	47
4742	5146	17
4743	5149	34
4744	5153	19
4745	5153	42
4746	5153	48
4747	5154	42
4748	5155	19
4749	5155	42
4750	5156	54
4751	5156	42
4752	5157	23
4753	5157	42
4754	5158	42
4755	5159	42
4756	5160	42
4757	5161	18
4758	5163	34
4759	5166	59
4760	5166	15
4761	5166	29
4762	5168	45
4763	5168	34
4764	5172	45
4765	5176	7
4766	5178	17
4767	5179	52
4768	5183	18
4769	5186	81
4770	5193	47
4771	5194	66
4772	5194	27
4773	5197	68
4774	5200	17
4775	5201	78
4776	5202	84
4777	5202	47
4778	5202	34
4779	5209	34
4780	5212	17
4781	5213	17
4782	5215	17
4783	5220	7
4784	5220	54
4785	5220	39
4786	5221	7
4787	5226	83
4788	5226	78
4789	5227	31
4790	5228	26
4791	5234	78
4792	5240	83
4793	5240	78
4794	5242	52
4795	5245	47
4796	5247	88
4797	5248	17
4798	5249	34
4799	5251	17
4800	5252	45
4801	5254	34
4802	5256	69
4803	5257	81
4804	5257	18
4805	5264	69
4806	5267	27
4807	5267	47
4808	5269	27
4809	5272	40
4810	5275	35
4811	5283	69
4812	5284	54
4813	5284	76
4814	5284	7
4815	5288	6
4816	5288	42
4817	5289	54
4818	5290	54
4819	5290	23
4820	5291	54
4821	5292	54
4822	5294	20
4823	5301	88
4824	5301	70
4825	5302	88
4826	5302	69
4827	5304	69
4828	5305	69
4829	5309	84
4830	5309	34
4831	5310	84
4832	5310	47
4833	5311	69
4834	5311	34
4835	5312	48
4836	5313	69
4837	5314	69
4838	5315	69
4839	5318	69
4840	5321	34
4841	5324	69
4842	5325	69
4843	5327	54
4844	5328	76
4845	5328	60
4846	5334	69
4847	5336	54
4848	5337	54
4849	5338	40
4850	5339	40
4851	5344	23
4852	5351	52
4853	5351	34
4854	5352	52
4855	5352	34
4856	5354	52
4857	5354	34
4858	5355	52
4859	5355	34
4860	5355	40
4861	5356	32
4862	5356	34
4863	5358	69
4864	5360	23
4865	5361	69
4866	5362	42
4867	5366	17
4868	5366	47
4869	5367	34
4870	5369	69
4871	5373	35
4872	5374	32
4873	5375	32
4874	5380	52
4875	5380	34
4876	5381	86
4877	5381	84
4878	5381	34
4879	5384	84
4880	5402	69
4881	5402	84
4882	5403	69
4883	5409	54
4884	5409	40
4885	5412	47
4886	5413	85
4887	5413	76
4888	5413	35
4889	5414	42
4890	5418	23
4891	5419	64
4892	5421	27
4893	5421	34
4894	5422	66
4895	5422	27
4896	5422	34
4897	5423	66
4898	5423	27
4899	5423	34
4900	5428	69
4901	5428	34
4902	5429	45
4903	5429	47
4904	5431	19
4905	5431	89
4906	5431	31
4907	5433	45
4908	5436	7
4909	5436	32
4910	5436	34
4911	5439	52
4912	5439	34
4913	5440	34
4914	5440	7
4915	5441	66
4916	5441	27
4917	5444	20
4918	5444	66
4919	5449	69
4920	5450	34
4921	5450	70
4922	5451	69
4923	5452	69
4924	5453	69
4925	5454	34
4926	5454	47
4927	5456	69
4928	5457	34
4929	5457	35
4930	5460	34
4931	5460	70
4932	5462	7
4933	5462	82
4934	5466	47
4935	5470	54
4936	5471	34
4937	5474	39
4938	5474	42
4939	5476	69
4940	5476	66
4941	5477	84
4942	5477	66
4943	5478	17
4944	5478	47
4945	5481	17
4946	5481	34
4947	5481	90
4948	5481	7
4949	5481	78
4950	5484	32
4951	5484	28
4952	5485	32
4953	5485	34
4954	5485	78
4955	5486	32
4956	5488	45
4957	5492	40
4958	5494	28
4959	5498	34
4960	5498	47
4961	5499	66
4962	5499	47
4963	5499	69
4964	5501	34
4965	5503	69
4966	5503	34
4967	5504	34
4968	5504	47
4969	5505	28
4970	5508	32
4971	5508	34
4972	5512	28
4973	5512	34
4974	5513	28
4975	5513	34
4976	5514	68
4977	5518	75
4978	5518	45
4979	5523	45
4980	5523	47
4981	5524	66
4982	5525	20
4983	5529	42
4984	5534	64
4985	5534	84
4986	5534	81
4987	5539	42
4988	5540	87
4989	5541	7
4990	5544	87
4991	5544	52
4992	5544	34
4993	5546	69
4994	5549	69
4995	5550	83
4996	5550	34
4997	5552	40
4998	5552	45
4999	5554	30
5000	5555	84
5001	5555	88
5002	5558	81
5003	5558	34
5004	5561	52
5005	5561	34
5006	5562	23
5007	5562	35
5008	5563	47
5009	5565	72
5010	5565	19
5011	5565	35
5012	5567	10
5013	5567	88
5014	5570	69
5015	5575	69
5016	5578	34
5017	5580	54
5018	5581	23
5019	5582	42
5020	5583	54
5021	5584	23
5022	5585	35
5023	5586	76
5024	5586	72
5025	5587	52
5026	5587	39
5027	5589	34
5028	5589	44
5029	5590	72
5030	5590	7
5031	5590	54
5032	5591	66
5033	5594	66
5034	5597	17
5035	5599	17
5036	5600	17
5037	5603	40
5038	5604	32
5039	5605	17
5040	5607	17
5041	5607	28
5042	5610	32
5043	5610	32
5044	5612	32
5045	5613	72
5046	5613	7
5047	5613	19
5048	5613	54
5049	5614	42
5050	5617	11
5051	5617	18
5052	5618	64
5053	5618	28
5054	5621	23
5055	5621	35
5056	5623	64
5057	5623	76
5058	5623	72
5059	5623	7
5060	5623	10
5061	5623	23
5062	5623	30
5063	5623	35
5064	5623	42
5065	5625	45
5066	5627	45
5067	5630	40
5068	5630	80
5069	5643	34
5070	5644	34
5071	5645	34
5072	5646	55
5073	5647	55
5074	5647	84
5075	5649	69
5076	5649	32
5077	5651	42
5078	5657	17
5079	5657	34
5080	5661	69
5081	5661	34
5082	5664	84
5083	5664	47
5084	5665	28
5085	5665	34
5086	5666	84
5087	5666	66
5088	5667	75
5089	5673	32
5090	5674	23
5091	5676	52
5092	5676	80
5093	5677	52
5094	5677	80
5095	5678	87
5096	5678	84
5097	5678	34
5098	5682	47
5099	5683	34
5100	5683	47
5101	5683	70
5102	5684	69
5103	5684	34
5104	5685	84
5105	5685	66
5106	5685	47
5107	5685	88
5108	5686	70
5109	5689	34
5110	5689	75
5111	5693	87
5112	5693	84
5113	5695	87
5114	5695	84
5115	5696	76
5116	5696	54
5117	5699	28
5118	5700	47
5119	5702	52
5120	5702	35
5121	5706	64
5122	5706	59
5123	5706	15
5124	5706	86
5125	5706	23
5126	5707	34
5127	5708	78
5128	5712	75
5129	5713	52
5130	5713	34
5131	5713	75
5132	5713	35
5133	5714	52
5134	5714	34
5135	5714	35
5136	5715	17
5137	5716	42
5138	5717	42
5139	5719	34
5140	5721	19
5141	5721	23
5142	5721	34
5143	5722	17
5144	5724	84
5145	5724	23
5146	5724	35
5147	5725	54
5148	5725	35
5149	5726	23
5150	5726	35
5151	5732	52
5152	5733	17
5153	5734	84
5154	5734	34
5155	5734	40
5156	5738	34
5157	5742	52
5158	5742	34
5159	5756	20
5160	5754	19
5161	5754	47
5162	5776	88
5163	5782	34
5164	5778	30
5165	5779	88
5166	5780	47
5167	5786	18
5168	5787	28
5169	5788	28
5170	5788	47
5171	5788	70
5172	5790	32
5173	5791	32
\.


--
-- Data for Name: revhits; Type: TABLE DATA; Schema: public; Owner: root
--

COPY revhits (idrev, insti, paquet, dia) FROM stdin;
1435	mutual	fbjl	2015-01-27
1492	mutual	fbjl	2015-01-27
85	mutual	fbjl	2015-02-01
5015	mutual	cyclops	2015-02-04
1518	mutual	fbjl	2015-02-06
41	mutual	fbjl	2015-02-08
40	mutual	fbjl	2015-02-08
40	mutual	fbjl	2015-02-08
5764	mutual	fbjl	2015-02-09
5016	mutual	cyclops	2015-02-10
91	mutual	fbjl	2015-02-10
40	mutual	fbjl	2015-02-10
41	mutual	fbjl	2015-02-10
40	mutual	fbjl	2015-02-10
79	mutual	fbjl	2015-02-12
1495	mutual	fbjl	2015-02-12
41	mutual	fbjl	2015-02-12
81	mutual	fbjl	2015-02-12
4963	mutual	fbjl	2015-02-12
5766	mutual	fbjl	2015-02-12
44	mutual	fbjl	2015-02-12
44	mutual	fbjl	2015-02-12
41	mutual	fbjl	2015-02-13
79	mutual	fbjl	2015-02-13
81	mutual	fbjl	2015-02-13
1492	mutual	fbjl	2015-02-13
5018	mutual	cyclops	2015-02-13
5018	mutual	cyclops	2015-02-13
28	mutual	fbjl	2015-02-13
90	mutual	fbjl	2015-02-13
78	mutual	fbjl	2015-02-14
44	mutual	fbjl	2015-02-14
1426	mutual	fbjl	2015-02-14
17	mutual	fbjl	2015-02-14
40	mutual	fbjl	2015-02-14
1533	mutual	fbjl	2015-02-14
1489	mutual	fbjl	2015-02-14
1438	mutual	fbjl	2015-02-14
44	mutual	fbjl	2015-02-14
1426	mutual	fbjl	2015-02-14
17	mutual	fbjl	2015-02-14
28	mutual	fbjl	2015-02-14
1482	mutual	fbjl	2015-02-15
40	mutual	fbjl	2015-02-15
84	mutual	fbjl	2015-02-15
1496	mutual	fbjl	2015-02-15
1432	mutual	fbjl	2015-02-15
1441	mutual	fbjl	2015-02-15
1443	mutual	fbjl	2015-02-15
1428	mutual	fbjl	2015-02-15
1486	mutual	fbjl	2015-02-16
82	mutual	fbjl	2015-02-16
1429	mutual	fbjl	2015-02-16
1488	mutual	fbjl	2015-02-16
1419	mutual	fbjl	2015-02-16
81	mutual	fbjl	2015-02-16
1519	mutual	fbjl	2015-02-16
41	mutual	fbjl	2015-02-16
1438	mutual	fbjl	2015-02-16
1432	mutual	fbjl	2015-02-16
1443	mutual	fbjl	2015-02-16
1420	mutual	fbjl	2015-02-16
84	mutual	fbjl	2015-02-16
1439	mutual	fbjl	2015-02-16
1516	mutual	fbjl	2015-02-17
1421	mutual	fbjl	2015-02-17
41	mutual	fbjl	2015-02-17
1496	mutual	fbjl	2015-02-17
1441	mutual	fbjl	2015-02-17
18	mutual	fbjl	2015-02-17
39	mutual	fbjl	2015-02-17
1481	mutual	fbjl	2015-02-17
1483	mutual	fbjl	2015-02-17
1435	mutual	fbjl	2015-02-17
43	mutual	fbjl	2015-02-17
1426	mutual	fbjl	2015-02-17
39	mutual	fbjl	2015-02-17
43	mutual	fbjl	2015-02-17
80	mutual	fbjl	2015-02-18
17	mutual	fbjl	2015-02-18
5018	mutual	cyclops	2015-02-18
5014	mutual	cyclops	2015-02-18
1531	mutual	cyclops	2015-02-18
5013	mutual	cyclops	2015-02-18
814	mutual	cyclops	2015-02-18
1441	mutual	fbjl	2015-02-18
1494	mutual	fbjl	2015-02-18
26	mutual	fbjl	2015-02-18
1496	mutual	fbjl	2015-02-18
17	mutual	fbjl	2015-02-18
1436	mutual	fbjl	2015-02-18
25	mutual	fbjl	2015-02-18
1426	mutual	fbjl	2015-02-19
1440	mutual	fbjl	2015-02-19
85	mutual	fbjl	2015-02-19
1484	mutual	fbjl	2015-02-19
1487	mutual	fbjl	2015-02-19
79	mutual	fbjl	2015-02-20
1517	mutual	fbjl	2015-02-20
5017	mutual	cyclops	2015-02-20
1423	mutual	fbjl	2015-02-20
1429	mutual	fbjl	2015-02-20
69	mutual	fbjl	2015-02-20
28	mutual	fbjl	2015-02-20
1434	mutual	fbjl	2015-02-20
1424	mutual	fbjl	2015-02-20
1485	mutual	fbjl	2015-02-21
1443	mutual	fbjl	2015-02-21
1425	mutual	fbjl	2015-02-21
84	mutual	fbjl	2015-02-21
43	mutual	fbjl	2015-02-21
1439	mutual	fbjl	2015-02-21
5014	mutual	cyclops	2015-02-21
24	mutual	fbjl	2015-02-21
1435	mutual	fbjl	2015-02-21
27	mutual	fbjl	2015-02-21
1428	mutual	fbjl	2015-02-21
84	mutual	fbjl	2015-02-21
43	mutual	fbjl	2015-02-21
1419	mutual	fbjl	2015-02-22
17	mutual	fbjl	2015-02-22
1426	mutual	fbjl	2015-02-22
77	mutual	fbjl	2015-02-22
77	mutual	fbjl	2015-02-22
1434	mutual	fbjl	2015-02-22
1440	mutual	fbjl	2015-02-22
43	mutual	fbjl	2015-02-22
17	mutual	fbjl	2015-02-22
1427	mutual	fbjl	2015-02-22
77	mutual	fbjl	2015-02-22
1425	mutual	fbjl	2015-02-23
1443	mutual	fbjl	2015-02-23
1435	mutual	fbjl	2015-02-23
1424	mutual	fbjl	2015-02-23
1419	mutual	fbjl	2015-02-23
43	mutual	fbjl	2015-02-23
84	mutual	fbjl	2015-02-23
1426	mutual	fbjl	2015-02-23
1428	mutual	fbjl	2015-02-23
1436	mutual	fbjl	2015-02-23
5017	mutual	cyclops	2015-02-23
5017	mutual	cyclops	2015-02-23
1437	mutual	fbjl	2015-02-23
1433	mutual	fbjl	2015-02-24
1429	mutual	fbjl	2015-02-24
1423	mutual	fbjl	2015-02-24
43	mutual	fbjl	2015-02-24
25	mutual	fbjl	2015-02-24
1441	mutual	fbjl	2015-02-25
89	mutual	fbjl	2015-02-25
1438	mutual	fbjl	2015-02-25
1421	mutual	fbjl	2015-02-25
1435	mutual	fbjl	2015-02-25
43	mutual	fbjl	2015-02-25
1498	mutual	fbjl	2015-02-25
43	mutual	fbjl	2015-02-25
1453	mutual	fbjl	2015-02-26
1492	mutual	fbjl	2015-02-26
1432	mutual	fbjl	2015-02-26
1453	mutual	fbjl	2015-02-27
84	mutual	fbjl	2015-02-27
39	mutual	fbjl	2015-02-27
1457	mutual	fbjl	2015-02-27
1463	mutual	fbjl	2015-02-27
1511	mutual	fbjl	2015-02-27
74	mutual	fbjl	2015-02-27
1424	mutual	fbjl	2015-02-27
1436	mutual	fbjl	2015-02-27
1458	mutual	fbjl	2015-02-27
1425	mutual	fbjl	2015-02-27
28	mutual	fbjl	2015-02-27
5018	mutual	cyclops	2015-02-27
1467	mutual	fbjl	2015-02-27
1464	mutual	fbjl	2015-02-28
1419	mutual	fbjl	2015-02-28
1468	mutual	fbjl	2015-02-28
84	mutual	fbjl	2015-02-28
1460	mutual	fbjl	2015-02-28
1423	mutual	fbjl	2015-02-28
1463	mutual	fbjl	2015-02-28
1431	mutual	fbjl	2015-02-28
1436	mutual	fbjl	2015-02-28
1519	mutual	fbjl	2015-02-28
1458	mutual	fbjl	2015-02-28
39	mutual	fbjl	2015-02-28
26	mutual	fbjl	2015-02-28
74	mutual	fbjl	2015-02-28
1459	mutual	fbjl	2015-03-01
100	mutual	fbjl	2015-03-01
1421	mutual	fbjl	2015-03-01
1499	mutual	fbjl	2015-03-01
84	mutual	fbjl	2015-03-01
1457	mutual	fbjl	2015-03-01
1432	mutual	fbjl	2015-03-01
74	mutual	fbjl	2015-03-01
1434	mutual	fbjl	2015-03-01
4963	mutual	fbjl	2015-03-01
1450	mutual	fbjl	2015-03-01
1461	mutual	fbjl	2015-03-01
25	mutual	fbjl	2015-03-01
79	mutual	fbjl	2015-03-01
1521	mutual	fbjl	2015-03-01
26	mutual	fbjl	2015-03-01
33	mutual	fbjl	2015-03-02
1456	mutual	fbjl	2015-03-02
101	mutual	fbjl	2015-03-02
1437	mutual	fbjl	2015-03-02
1444	mutual	fbjl	2015-03-02
1453	mutual	fbjl	2015-03-02
1520	mutual	fbjl	2015-03-02
1462	mutual	fbjl	2015-03-02
1445	mutual	fbjl	2015-03-02
1433	mutual	fbjl	2015-03-02
1449	mutual	fbjl	2015-03-02
1448	mutual	fbjl	2015-03-02
7	mutual	fbjl	2015-03-02
1439	mutual	fbjl	2015-03-02
1445	mutual	fbjl	2015-03-02
102	mutual	fbjl	2015-03-02
1466	mutual	fbjl	2015-03-02
1443	mutual	fbjl	2015-03-02
85	mutual	fbjl	2015-03-02
1453	mutual	fbjl	2015-03-02
1425	mutual	fbjl	2015-03-03
1447	mutual	fbjl	2015-03-03
1433	mutual	fbjl	2015-03-03
1432	mutual	fbjl	2015-03-03
261	mutual	fbjl	2015-03-03
1437	mutual	fbjl	2015-03-03
1444	mutual	fbjl	2015-03-03
1497	mutual	fbjl	2015-03-03
84	mutual	fbjl	2015-03-03
1463	mutual	fbjl	2015-03-03
1440	mutual	fbjl	2015-03-03
74	mutual	fbjl	2015-03-03
1458	mutual	fbjl	2015-03-03
1515	mutual	fbjl	2015-03-03
1438	mutual	fbjl	2015-03-03
18	mutual	fbjl	2015-03-03
69	mutual	fbjl	2015-03-03
1514	mutual	fbjl	2015-03-03
39	mutual	fbjl	2015-03-03
1457	mutual	fbjl	2015-03-03
1427	mutual	fbjl	2015-03-03
1424	mutual	fbjl	2015-03-03
1452	mutual	fbjl	2015-03-03
1468	mutual	fbjl	2015-03-03
102	mutual	fbjl	2015-03-04
261	mutual	fbjl	2015-03-04
84	mutual	fbjl	2015-03-04
1467	mutual	fbjl	2015-03-04
1460	mutual	fbjl	2015-03-04
5018	mutual	cyclops	2015-03-04
1464	mutual	fbjl	2015-03-04
1421	mutual	fbjl	2015-03-04
5013	mutual	cyclops	2015-03-04
1499	mutual	fbjl	2015-03-04
1480	mutual	fbjl	2015-03-05
33	mutual	fbjl	2015-03-05
84	mutual	fbjl	2015-03-05
9	mutual	fbjl	2015-03-05
3	mutual	fbjl	2015-03-05
8	mutual	fbjl	2015-03-05
6	mutual	fbjl	2015-03-05
7	mutual	fbjl	2015-03-05
5	mutual	fbjl	2015-03-05
4	mutual	fbjl	2015-03-05
91	mutual	fbjl	2015-03-05
12	mutual	fbjl	2015-03-05
10	mutual	fbjl	2015-03-05
85	mutual	fbjl	2015-03-05
92	mutual	fbjl	2015-03-05
11	mutual	fbjl	2015-03-05
90	mutual	fbjl	2015-03-05
89	mutual	fbjl	2015-03-05
261	mutual	fbjl	2015-03-05
1520	mutual	fbjl	2015-03-05
1532	mutual	fbjl	2015-03-05
1519	mutual	fbjl	2015-03-05
1416	mutual	fbjl	2015-03-05
1418	mutual	fbjl	2015-03-05
1417	mutual	fbjl	2015-03-05
5764	mutual	fbjl	2015-03-05
1492	mutual	fbjl	2015-03-05
5026	mutual	fbjl	2015-03-05
1533	mutual	fbjl	2015-03-05
1533	mutual	fbjl	2015-03-05
1512	mutual	fbjl	2015-03-05
1521	mutual	fbjl	2015-03-05
1518	mutual	fbjl	2015-03-05
4963	mutual	fbjl	2015-03-05
5017	mutual	cyclops	2015-03-05
1530	mutual	cyclops	2015-03-05
1528	mutual	fbjl	2015-03-05
1472	mutual	fbjl	2015-03-05
1470	mutual	fbjl	2015-03-05
1476	mutual	fbjl	2015-03-05
26	mutual	fbjl	2015-03-05
1465	mutual	fbjl	2015-03-05
1455	mutual	fbjl	2015-03-05
1476	mutual	fbjl	2015-03-06
1521	mutual	fbjl	2015-03-06
26	mutual	fbjl	2015-03-06
1527	mutual	fbjl	2015-03-06
1445	mutual	fbjl	2015-03-06
1428	mutual	fbjl	2015-03-06
1433	mutual	fbjl	2015-03-06
1456	mutual	fbjl	2015-03-06
74	mutual	fbjl	2015-03-06
261	mutual	fbjl	2015-03-06
1440	mutual	fbjl	2015-03-06
1469	mutual	fbjl	2015-03-06
16	mutual	fbjl	2015-03-06
16	mutual	fbjl	2015-03-06
16	mutual	fbjl	2015-03-06
1432	mutual	fbjl	2015-03-06
1448	mutual	fbjl	2015-03-06
102	mutual	fbjl	2015-03-06
1478	mutual	fbjl	2015-03-06
1466	mutual	fbjl	2015-03-06
1471	mutual	fbjl	2015-03-06
19	mutual	fbjl	2015-03-07
100	mutual	fbjl	2015-03-07
1526	mutual	fbjl	2015-03-07
1461	mutual	fbjl	2015-03-07
1459	mutual	fbjl	2015-03-07
1434	mutual	fbjl	2015-03-07
1479	mutual	fbjl	2015-03-07
1440	mutual	fbjl	2015-03-07
1431	mutual	fbjl	2015-03-07
44	mutual	fbjl	2015-03-07
1450	mutual	fbjl	2015-03-07
44	mutual	fbjl	2015-03-07
1437	mutual	fbjl	2015-03-07
1451	mutual	fbjl	2015-03-07
1453	mutual	fbjl	2015-03-07
1444	mutual	fbjl	2015-03-08
16	mutual	fbjl	2015-03-08
44	mutual	fbjl	2015-03-08
92	mutual	fbjl	2015-03-08
92	mutual	fbjl	2015-03-08
1477	mutual	fbjl	2015-03-08
92	mutual	fbjl	2015-03-08
1476	mutual	fbjl	2015-03-09
1448	mutual	fbjl	2015-03-09
102	mutual	fbjl	2015-03-09
1449	mutual	fbjl	2015-03-09
74	mutual	fbjl	2015-03-09
1447	mutual	fbjl	2015-03-09
1530	mutual	cyclops	2015-03-09
76	mutual	fbjl	2015-03-09
102	mutual	fbjl	2015-03-10
1446	mutual	fbjl	2015-03-10
1473	mutual	fbjl	2015-03-10
74	mutual	fbjl	2015-03-10
1475	mutual	fbjl	2015-03-10
1513	mutual	fbjl	2015-03-10
1462	mutual	fbjl	2015-03-10
1474	mutual	fbjl	2015-03-10
5765	mutual	fbjl	2015-03-10
1529	mutual	cyclops	2015-03-10
1529	mutual	cyclops	2015-03-10
5020	mutual	fbjl	2015-03-10
5018	mutual	cyclops	2015-03-10
1416	mutual	fbjl	2015-03-10
68	mutual	fbjl	2015-03-10
5026	mutual	fbjl	2015-03-11
5018	mutual	cyclops	2015-03-13
1462	mutual	fbjl	2015-03-14
1527	mutual	fbjl	2015-03-15
1526	mutual	fbjl	2015-03-15
5018	mutual	cyclops	2015-03-16
5018	mutual	cyclops	2015-03-16
5018	mutual	cyclops	2015-03-16
5018	mutual	cyclops	2015-03-16
5018	mutual	cyclops	2015-03-16
1425	mutual	fbjl	2015-03-17
24	mutual	fbjl	2015-03-17
1533	mutual	fbjl	2015-03-18
5026	mutual	fbjl	2015-03-18
1492	mutual	fbjl	2015-03-18
5017	mutual	cyclops	2015-03-18
813	mutual	cyclops	2015-03-18
1533	mutual	fbjl	2015-03-19
102	mutual	fbjl	2015-03-19
813	mutual	cyclops	2015-03-19
5014	mutual	cyclops	2015-03-19
1531	mutual	cyclops	2015-03-19
1531	mutual	cyclops	2015-03-19
5013	mutual	cyclops	2015-03-19
814	mutual	cyclops	2015-03-19
5014	mutual	cyclops	2015-03-19
1512	mutual		2015-03-19
1512	mutual		2015-03-19
61	mutual	fbjl	2015-03-20
1454	mutual	fbjl	2015-03-23
5020	mutual	fbjl	2015-03-26
5024	mutual	fbjl	2015-03-26
5024	mutual	fbjl	2015-03-26
77	mutual	fbjl	2015-03-26
77	mutual	fbjl	2015-03-26
1508	mutual	fbjl	2015-03-26
1530	mutual	cyclops	2015-03-26
4	mutual	fbjl	2015-03-26
1454	mutual	fbjl	2015-03-27
1468	mutual	fbjl	2015-03-27
77	mutual	fbjl	2015-03-27
67	mutual	fbjl	2015-03-28
63	mutual	fbjl	2015-03-28
38	mutual	fbjl	2015-03-28
77	mutual	fbjl	2015-03-28
35	mutual	fbjl	2015-03-28
76	mutual	fbjl	2015-03-28
82	mutual	fbjl	2015-03-28
27	mutual	fbjl	2015-03-28
26	mutual	fbjl	2015-03-28
28	mutual	fbjl	2015-03-28
80	mutual	fbjl	2015-03-28
25	mutual	fbjl	2015-03-28
36	mutual	fbjl	2015-03-28
24	mutual	fbjl	2015-03-28
69	mutual	fbjl	2015-03-28
81	mutual	fbjl	2015-03-28
78	mutual	fbjl	2015-03-28
79	mutual	fbjl	2015-03-28
1515	mutual	fbjl	2015-03-28
1516	mutual	fbjl	2015-03-28
1514	mutual	fbjl	2015-03-28
1483	mutual	fbjl	2015-03-28
1481	mutual	fbjl	2015-03-28
1485	mutual	fbjl	2015-03-28
1486	mutual	fbjl	2015-03-28
1513	mutual	fbjl	2015-03-28
1482	mutual	fbjl	2015-03-28
1493	mutual	fbjl	2015-03-28
1484	mutual	fbjl	2015-03-28
1488	mutual	fbjl	2015-03-28
1487	mutual	fbjl	2015-03-28
1517	mutual	fbjl	2015-03-28
1489	mutual	fbjl	2015-03-28
5014	mutual	cyclops	2015-03-28
57	mutual	fbjl	2015-03-28
18	mutual	fbjl	2015-03-28
16	mutual	fbjl	2015-03-28
16	mutual	fbjl	2015-03-28
59	mutual	fbjl	2015-03-28
67	mutual	fbjl	2015-03-28
62	mutual	fbjl	2015-03-28
64	mutual	fbjl	2015-03-28
58	mutual	fbjl	2015-03-28
66	mutual	fbjl	2015-03-28
68	mutual	fbjl	2015-03-28
17	mutual	fbjl	2015-03-28
61	mutual	fbjl	2015-03-28
71	mutual	fbjl	2015-03-28
1420	mutual	fbjl	2015-03-28
1421	mutual	fbjl	2015-03-28
1434	mutual	fbjl	2015-03-28
1433	mutual	fbjl	2015-03-28
5020	mutual	fbjl	2015-03-28
1436	mutual	fbjl	2015-03-28
1428	mutual	fbjl	2015-03-28
1431	mutual	fbjl	2015-03-28
1427	mutual	fbjl	2015-03-28
1437	mutual	fbjl	2015-03-28
1508	mutual	fbjl	2015-03-28
4959	mutual	fbjl	2015-03-28
1443	mutual	fbjl	2015-03-28
1506	mutual	fbjl	2015-03-28
1438	mutual	fbjl	2015-03-28
1423	mutual	fbjl	2015-03-28
1424	mutual	fbjl	2015-03-28
1439	mutual	fbjl	2015-03-28
1435	mutual	fbjl	2015-03-28
1426	mutual	fbjl	2015-03-28
1509	mutual	fbjl	2015-03-28
1505	mutual	fbjl	2015-03-28
5024	mutual	fbjl	2015-03-28
1440	mutual	fbjl	2015-03-28
1432	mutual	fbjl	2015-03-28
1510	mutual	fbjl	2015-03-28
1507	mutual	fbjl	2015-03-28
1425	mutual	fbjl	2015-03-28
1419	mutual	fbjl	2015-03-28
1429	mutual	fbjl	2015-03-28
1441	mutual	fbjl	2015-03-28
1531	mutual	cyclops	2015-03-28
813	mutual	cyclops	2015-03-28
1529	mutual	cyclops	2015-03-28
5015	mutual	cyclops	2015-03-28
5016	mutual	cyclops	2015-03-28
45	mutual	fbjl	2015-03-28
49	mutual	fbjl	2015-03-28
51	mutual	fbjl	2015-03-28
47	mutual	fbjl	2015-03-28
50	mutual	fbjl	2015-03-28
48	mutual	fbjl	2015-03-28
55	mutual	fbjl	2015-03-28
54	mutual	fbjl	2015-03-28
53	mutual	fbjl	2015-03-28
52	mutual	fbjl	2015-03-28
56	mutual	fbjl	2015-03-28
1502	mutual	fbjl	2015-03-28
1500	mutual	fbjl	2015-03-28
1503	mutual	fbjl	2015-03-28
1501	mutual	fbjl	2015-03-28
74	mutual	fbjl	2015-03-28
1511	mutual	fbjl	2015-03-28
1457	mutual	fbjl	2015-03-28
1465	mutual	fbjl	2015-03-28
1447	mutual	fbjl	2015-03-28
1446	mutual	fbjl	2015-03-28
1459	mutual	fbjl	2015-03-28
1449	mutual	fbjl	2015-03-28
1452	mutual	fbjl	2015-03-28
1448	mutual	fbjl	2015-03-28
1466	mutual	fbjl	2015-03-28
1450	mutual	fbjl	2015-03-28
1467	mutual	fbjl	2015-03-28
1464	mutual	fbjl	2015-03-28
1454	mutual	fbjl	2015-03-28
1458	mutual	fbjl	2015-03-28
1456	mutual	fbjl	2015-03-28
1462	mutual	fbjl	2015-03-28
1453	mutual	fbjl	2015-03-28
1445	mutual	fbjl	2015-03-28
1444	mutual	fbjl	2015-03-28
1455	mutual	fbjl	2015-03-28
1463	mutual	fbjl	2015-03-28
1461	mutual	fbjl	2015-03-28
1460	mutual	fbjl	2015-03-28
1468	mutual	fbjl	2015-03-28
1451	mutual	fbjl	2015-03-28
19	mutual	fbjl	2015-03-28
1479	mutual	fbjl	2015-03-28
1476	mutual	fbjl	2015-03-28
1469	mutual	fbjl	2015-03-28
1480	mutual	fbjl	2015-03-28
1470	mutual	fbjl	2015-03-28
1472	mutual	fbjl	2015-03-28
1477	mutual	fbjl	2015-03-28
1473	mutual	fbjl	2015-03-28
1471	mutual	fbjl	2015-03-28
1478	mutual	fbjl	2015-03-28
1475	mutual	fbjl	2015-03-28
1474	mutual	fbjl	2015-03-28
9	mutual	fbjl	2015-03-28
10	mutual	fbjl	2015-03-29
5024	mutual	fbjl	2015-03-29
77	mutual	fbjl	2015-03-30
1532	mutual	fbjl	2015-03-30
5020	mutual	fbjl	2015-03-30
5016	mutual	cyclops	2015-03-30
1431	mutual	fbjl	2015-03-30
9	mutual	fbjl	2015-03-31
9	mutual	fbjl	2015-03-31
1445	mutual	fbjl	2015-04-01
1433	mutual	fbjl	2015-04-02
11	mutual	fbjl	2015-04-03
1455	mutual	fbjl	2015-04-03
10	mutual	fbjl	2015-04-03
1424	mutual	fbjl	2015-04-04
5016	mutual	cyclops	2015-04-05
58	mutual	fbjl	2015-04-05
1432	mutual	fbjl	2015-04-06
1505	mutual	fbjl	2015-04-06
1474	mutual	fbjl	2015-04-06
813	mutual	cyclops	2015-04-07
1471	mutual	fbjl	2015-04-07
5	mutual	fbjl	2015-04-08
100	mutual	fbjl	2015-04-08
5017	mutual	cyclops	2015-04-08
4963	mutual	fbjl	2015-04-08
1470	mutual	fbjl	2015-04-08
10	mutual	fbjl	2015-04-09
1472	mutual	fbjl	2015-04-09
1529	mutual	cyclops	2015-04-09
101	mutual	fbjl	2015-04-09
1473	mutual	fbjl	2015-04-09
1477	mutual	fbjl	2015-04-09
5016	mutual	cyclops	2015-04-09
1469	mutual	fbjl	2015-04-09
4963	mutual	fbjl	2015-04-09
1452	mutual	fbjl	2015-04-09
84	mutual	fbjl	2015-04-09
261	mutual	fbjl	2015-04-09
101	mutual	fbjl	2015-04-10
1459	mutual	fbjl	2015-04-10
1469	mutual	fbjl	2015-04-10
1472	mutual	fbjl	2015-04-10
1470	mutual	fbjl	2015-04-10
1473	mutual	fbjl	2015-04-10
1510	mutual	fbjl	2015-04-10
1477	mutual	fbjl	2015-04-10
100	mutual	fbjl	2015-04-10
1460	mutual	fbjl	2015-04-10
5014	mutual	cyclops	2015-04-10
1466	mutual	fbjl	2015-04-10
1453	mutual	fbjl	2015-04-10
1434	mutual	fbjl	2015-04-10
85	mutual	fbjl	2015-04-10
1452	mutual	fbjl	2015-04-10
1437	mutual	fbjl	2015-04-10
68	mutual	fbjl	2015-04-10
1440	mutual	fbjl	2015-04-10
1467	mutual	fbjl	2015-04-11
1451	mutual	fbjl	2015-04-11
1461	mutual	fbjl	2015-04-11
1456	mutual	fbjl	2015-04-11
69	mutual	fbjl	2015-04-11
1447	mutual	fbjl	2015-04-11
1476	mutual	fbjl	2015-04-11
1449	mutual	fbjl	2015-04-11
1427	mutual	fbjl	2015-04-11
1428	mutual	fbjl	2015-04-11
1454	mutual	fbjl	2015-04-11
1464	mutual	fbjl	2015-04-11
1421	mutual	fbjl	2015-04-11
1448	mutual	fbjl	2015-04-11
1463	mutual	fbjl	2015-04-11
1474	mutual	fbjl	2015-04-11
1458	mutual	fbjl	2015-04-11
1459	mutual	fbjl	2015-04-11
1450	mutual	fbjl	2015-04-11
1451	mutual	fbjl	2015-04-11
1449	mutual	fbjl	2015-04-11
1434	mutual	fbjl	2015-04-11
62	mutual	fbjl	2015-04-11
43	mutual	fbjl	2015-04-11
1461	mutual	fbjl	2015-04-11
1453	mutual	fbjl	2015-04-12
1460	mutual	fbjl	2015-04-12
1437	mutual	fbjl	2015-04-12
1466	mutual	fbjl	2015-04-12
1427	mutual	fbjl	2015-04-12
1450	mutual	fbjl	2015-04-12
1463	mutual	fbjl	2015-04-12
1456	mutual	fbjl	2015-04-12
85	mutual	fbjl	2015-04-12
69	mutual	fbjl	2015-04-12
1464	mutual	fbjl	2015-04-12
1440	mutual	fbjl	2015-04-12
1458	mutual	fbjl	2015-04-12
1421	mutual	fbjl	2015-04-12
68	mutual	fbjl	2015-04-12
1467	mutual	fbjl	2015-04-12
1476	mutual	fbjl	2015-04-12
5014	mutual	cyclops	2015-04-12
1532	mutual	fbjl	2015-04-12
1447	mutual	fbjl	2015-04-12
1448	mutual	fbjl	2015-04-12
1428	mutual	fbjl	2015-04-12
5018	mutual	cyclops	2015-04-13
5018	mutual	cyclops	2015-04-13
5018	mutual	cyclops	2015-04-13
261	mutual	fbjl	2015-04-13
50	mutual	fbjl	2015-04-14
50	mutual	fbjl aND 8=8	2015-04-14
50	mutual	fbjl aND 8=3	2015-04-14
50	mutual	fbjl\taND\t8=8	2015-04-14
50	mutual	fbjl\taND\t8=3	2015-04-14
50	mutual	fbjl/**/aND/**/8=8	2015-04-14
50	mutual	fbjl/**/aND/**/8=3	2015-04-14
50	mutual	fbjl	2015-04-14
1454	mutual	fbjl	2015-04-14
84	mutual	fbjl	2015-04-14
58	mutual	fbjl	2015-04-15
5015	mutual	cyclops	2015-04-15
4	mutual	fbjl	2015-04-15
5013	mutual	cyclops	2015-04-15
5015	mutual	cyclops	2015-04-15
1419	mutual	fbjl	2015-04-16
1423	mutual	fbjl	2015-04-17
1426	mutual	fbjl	2015-04-17
1530	mutual	cyclops	2015-04-17
1492	mutual	fbjl	2015-04-17
1531	mutual	cyclops	2015-04-17
4	mutual	fbjl	2015-04-17
261	mutual	fbjl	2015-04-17
84	mutual	fbjl	2015-04-17
58	mutual	fbjl	2015-04-17
5015	mutual	cyclops	2015-04-17
26	mutual	fbjl	2015-04-18
4963	mutual	fbjl	2015-04-18
4963	mutual	fbjl	2015-04-18
4	mutual	fbjl	2015-04-19
1429	mutual	fbjl	2015-04-19
1417	mutual	fbjl	2015-04-19
24	mutual	fbjl	2015-04-19
17	mutual	fbjl	2015-04-19
28	mutual	fbjl	2015-04-19
9	mutual	fbjl	2015-04-19
1436	mutual	fbjl	2015-04-19
1441	mutual	fbjl	2015-04-20
1468	mutual	fbjl	2015-04-20
1435	mutual	fbjl	2015-04-20
1443	mutual	fbjl	2015-04-20
8	mutual	fbjl	2015-04-20
1439	mutual	fbjl	2015-04-20
1419	mutual	fbjl	2015-04-20
11	mutual	fbjl	2015-04-21
1530	mutual	cyclops	2015-04-21
4959	mutual	fbjl	2015-04-21
1531	mutual	cyclops	2015-04-21
4963	mutual	fbjl	2015-04-21
1506	mutual	fbjl	2015-04-21
1498	mutual	fbjl	2015-04-22
44	mutual	fbjl	2015-04-22
43	mutual	fbjl	2015-04-22
1499	mutual	fbjl	2015-04-22
1528	mutual	fbjl	2015-04-22
5765	mutual	fbjl	2015-04-22
1496	mutual	fbjl	2015-04-22
1497	mutual	fbjl	2015-04-22
3	mutual	fbjl	2015-04-22
26	mutual	fbjl	2015-04-22
79	mutual	fbjl	2015-04-22
4	mutual	fbjl	2015-04-22
1531	mutual	cyclops	2015-04-22
8	mutual	fbjl	2015-04-23
5018	mutual	cyclops	2015-04-23
1509	mutual	fbjl	2015-04-23
92	mutual	fbjl	2015-04-23
5013	mutual	cyclops	2015-04-23
5014	mutual	cyclops	2015-04-23
1531	mutual	cyclops	2015-04-23
102	mutual	fbjl	2015-04-23
5013	mutual	cyclops	2015-04-24
4959	mutual	fbjl	2015-04-25
26	mutual	fbjl	2015-04-25
1433	mutual	fbjl	2015-04-25
1445	mutual	fbjl	2015-04-26
48	mutual	fbjl	2015-04-26
48	mutual	999999.9	2015-04-26
48	mutual	fbjl or 1>1	2015-04-26
48	mutual	fbjl" or "x"="x	2015-04-26
48	mutual	fbjl" or "x"="y	2015-04-26
1455	mutual	fbjl	2015-04-26
1455	mutual	fbjl	2015-04-26
1445	mutual	fbjl	2015-04-26
80	mutual	fbjl	2015-04-26
1485	mutual	fbjl	2015-04-26
1516	mutual	fbjl	2015-04-26
1424	mutual	fbjl	2015-04-27
27	mutual	fbjl	2015-04-27
27	mutual	fbjl	2015-04-27
1496	mutual	fbjl	2015-04-27
1487	mutual	fbjl	2015-04-27
5764	mutual	fbjl	2015-04-27
1530	mutual	cyclops	2015-04-27
5018	mutual	cyclops	2015-04-27
27	mutual	fbjl	2015-04-28
1424	mutual	fbjl	2015-04-28
27	mutual	fbjl	2015-04-28
77	mutual	fbjl	2015-04-28
77	mutual	fbjl	2015-04-28
1530	mutual	cyclops	2015-04-28
27	mutual	fbjl	2015-04-28
27	mutual	fbjl	2015-04-29
77	mutual	fbjl	2015-04-29
27	mutual	fbjl	2015-04-29
1433	mutual	fbjl	2015-04-30
40	mutual	fbjl	2015-04-30
1432	mutual	fbjl	2015-04-30
1420	mutual	fbjl	2015-05-01
82	mutual	fbjl	2015-05-01
1494	mutual	fbjl	2015-05-01
1489	mutual	fbjl	2015-05-01
1481	mutual	fbjl	2015-05-01
1498	mutual	fbjl	2015-05-01
27	mutual	fbjl	2015-05-01
1516	mutual	fbjl	2015-05-01
80	mutual	fbjl	2015-05-01
1483	mutual	fbjl	2015-05-01
1471	mutual	fbjl	2015-05-01
1485	mutual	fbjl	2015-05-01
27	mutual	fbjl	2015-05-01
1431	mutual	fbjl	2015-05-01
1433	mutual	fbjl	2015-05-01
1519	mutual	fbjl	2015-05-01
91	mutual	fbjl	2015-05-01
1432	mutual	fbjl	2015-05-01
1498	mutual	fbjl	2015-05-01
1517	mutual	fbjl	2015-05-01
1431	mutual	fbjl	2015-05-01
1481	mutual	fbjl	2015-05-02
1529	mutual	cyclops	2015-05-02
82	mutual	fbjl	2015-05-02
1516	mutual	fbjl	2015-05-02
1485	mutual	fbjl	2015-05-02
1471	mutual	fbjl	2015-05-02
1520	mutual	fbjl	2015-05-02
1529	mutual	cyclops	2015-05-02
1482	mutual	fbjl	2015-05-02
1492	mutual	fbjl	2015-05-02
1469	mutual	fbjl	2015-05-02
89	mutual	fbjl	2015-05-02
1488	mutual	fbjl	2015-05-03
1477	mutual	fbjl	2015-05-03
101	mutual	fbjl	2015-05-03
1472	mutual	fbjl	2015-05-03
1473	mutual	fbjl	2015-05-03
1486	mutual	fbjl	2015-05-03
1452	mutual	fbjl	2015-05-03
1518	mutual	fbjl	2015-05-03
1484	mutual	fbjl	2015-05-03
91	mutual	fbjl	2015-05-03
26	mutual	fbjl	2015-05-03
30	mutual	fbjl	2015-05-03
32	mutual	fbjl	2015-05-03
1491	mutual	fbjl	2015-05-03
1461	mutual	fbjl	2015-05-03
1449	mutual	fbjl	2015-05-03
101	mutual	fbjl	2015-05-03
1477	mutual	fbjl	2015-05-04
1452	mutual	fbjl	2015-05-04
27	mutual	fbjl	2015-05-04
1469	mutual	fbjl	2015-05-04
1474	mutual	fbjl	2015-05-04
1434	mutual	fbjl	2015-05-04
1451	mutual	fbjl	2015-05-04
5015	mutual	cyclops	2015-05-04
1472	mutual	fbjl	2015-05-04
5016	mutual	cyclops	2015-05-04
5015	mutual	cyclops	2015-05-04
27	mutual	fbjl	2015-05-04
1473	mutual	fbjl	2015-05-04
1427	mutual	fbjl	2015-05-04
1459	mutual	fbjl	2015-05-04
1463	mutual	fbjl	2015-05-04
52	mutual	fbjl	2015-05-04
52	mutual	fbjl	2015-05-04
1449	mutual	fbjl	2015-05-04
1428	mutual	fbjl	2015-05-04
1421	mutual	fbjl	2015-05-04
1467	mutual	fbjl	2015-05-04
1451	mutual	fbjl	2015-05-04
5014	mutual	cyclops	2015-05-05
1474	mutual	fbjl	2015-05-05
1440	mutual	fbjl	2015-05-05
68	mutual	fbjl	2015-05-05
1466	mutual	fbjl	2015-05-05
1434	mutual	fbjl	2015-05-05
55	mutual	fbjl	2015-05-05
55	mutual	fbjl	2015-05-05
41	mutual	fbjl	2015-05-05
1503	mutual	fbjl	2015-05-05
1448	mutual	fbjl	2015-05-05
1453	mutual	fbjl	2015-05-05
1450	mutual	fbjl	2015-05-05
1461	mutual	fbjl	2015-05-05
69	mutual	fbjl	2015-05-05
1460	mutual	fbjl	2015-05-05
1456	mutual	fbjl	2015-05-05
1476	mutual	fbjl	2015-05-05
1459	mutual	fbjl	2015-05-05
1466	mutual	fbjl	2015-05-05
69	mutual	fbjl	2015-05-05
53	mutual	fbjl	2015-05-05
53	mutual	fbjl	2015-05-05
1447	mutual	fbjl	2015-05-06
68	mutual	fbjl	2015-05-06
1500	mutual	fbjl	2015-05-06
1476	mutual	fbjl	2015-05-06
1458	mutual	fbjl	2015-05-06
1460	mutual	fbjl	2015-05-06
1463	mutual	fbjl	2015-05-06
1448	mutual	fbjl	2015-05-06
1453	mutual	fbjl	2015-05-06
1467	mutual	fbjl	2015-05-06
1428	mutual	fbjl	2015-05-06
51	mutual	fbjl	2015-05-06
51	mutual	fbjl	2015-05-06
1456	mutual	fbjl	2015-05-06
1440	mutual	fbjl	2015-05-06
1450	mutual	fbjl	2015-05-06
5014	mutual	cyclops	2015-05-06
49	mutual	fbjl	2015-05-06
1421	mutual	fbjl	2015-05-06
49	mutual	fbjl	2015-05-06
55	mutual	fbjl	2015-05-06
1502	mutual	fbjl	2015-05-06
52	mutual	fbjl	2015-05-07
27	mutual	fbjl	2015-05-07
48	mutual	fbjl	2015-05-07
48	mutual	fbjl	2015-05-07
1465	mutual	fbjl	2015-05-07
44	mutual	fbjl	2015-05-08
44	mutual	fbjl	2015-05-08
56	mutual	fbjl	2015-05-08
1501	mutual	fbjl	2015-05-08
45	mutual	fbjl	2015-05-08
5018	mutual	cyclops	2015-05-08
44	mutual	fbjl	2015-05-09
5013	mutual	cyclops	2015-05-09
40	mutual	fbjl	2015-05-09
39	mutual	fbjl	2015-05-09
41	mutual	fbjl	2015-05-09
1494	mutual	fbjl	2015-05-09
1495	mutual	fbjl	2015-05-09
54	mutual	fbjl	2015-05-09
54	mutual	fbjl	2015-05-09
47	mutual	fbjl	2015-05-10
47	mutual	fbjl	2015-05-10
26	mutual	fbjl	2015-05-10
74	mutual	fbjl	2015-05-10
25	mutual	fbjl	2015-05-10
1454	mutual	fbjl	2015-05-10
39	mutual	fbjl	2015-05-10
1532	mutual	fbjl	2015-05-10
5017	mutual	cyclops	2015-05-11
1426	mutual	fbjl	2015-05-11
1423	mutual	fbjl	2015-05-12
50	mutual	fbjl	2015-05-12
50	mutual	fbjl	2015-05-12
100	mutual	fbjl	2015-05-12
45	mutual	fbjl	2015-05-13
1454	mutual	fbjl	2015-05-13
39	mutual	fbjl	2015-05-14
1531	mutual	cyclops	2015-05-15
71	mutual	fbjl	2015-05-16
10	mutual	fbjl	2015-05-16
45	mutual	fbjl	2015-05-17
9	mutual	fbjl	2015-05-17
4959	mutual	fbjl	2015-05-17
102	mutual	fbjl	2015-05-18
100	mutual	fbjl	2015-05-18
101	mutual	fbjl	2015-05-18
5018	mutual	cyclops	2015-05-18
1470	mutual	fbjl	2015-05-18
1530	mutual	cyclops	2015-05-18
39	mutual	fbjl	2015-05-18
1468	mutual	fbjl	2015-05-18
17	mutual	fbjl	2015-05-21
63	mutual	fbjl	2015-05-21
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
57	mutual	fbjl	2015-05-22
1435	mutual	fbjl	2015-05-23
1443	mutual	fbjl	2015-05-23
66	mutual	fbjl	2015-05-23
6	mutual	fbjl	2015-05-24
1418	mutual	fbjl	2015-05-25
8	mutual	fbjl	2015-05-26
12	mutual	fbjl	2015-05-26
5	mutual	fbjl	2015-05-26
261	mutual	fbjl	2015-05-26
4	mutual	fbjl	2015-05-26
58	mutual	fbjl	2015-05-26
9	mutual	fbjl	2015-05-27
1451	mutual	fbjl	2015-05-27
101	mutual	fbjl	2015-05-28
1445	mutual	fbjl	2015-05-28
5016	mutual	cyclops	2015-05-28
1424	mutual	fbjl	2015-05-29
6	mutual	fbjl	2015-05-29
5018	mutual	cyclops	2015-05-29
5018	mutual	cyclops	2015-05-29
12	mutual	fbjl	2015-05-29
1418	mutual	fbjl	2015-05-29
261	mutual	fbjl	2015-05-30
8	mutual	fbjl	2015-05-30
8	mutual	fbjl	2015-05-30
5	mutual	fbjl	2015-05-30
77	mutual	fbjl	2015-05-30
4	mutual	fbjl	2015-05-31
1445	mutual	fbjl	2015-05-31
1445	mutual	fbjl	2015-05-31
1436	mutual	fbjl	2015-05-31
9	mutual	fbjl	2015-05-31
77	mutual	fbjl	2015-05-31
77	mutual	fbjl	2015-05-31
1421	mutual	fbjl	2015-06-01
5018	mutual	cyclops	2015-06-02
6	mutual	fbjl	2015-06-02
1434	mutual	fbjl	2015-06-02
8	mutual	fbjl	2015-06-02
1466	mutual	fbjl	2015-06-03
10	mutual	fbjl	2015-06-03
16	mutual	fbjl	2015-06-03
16	mutual	fbjl	2015-06-03
5	mutual	fbjl	2015-06-03
11	mutual	fbjl	2015-06-03
1461	mutual	fbjl	2015-06-03
1420	mutual	fbjl	2015-06-03
1421	mutual	fbjl	2015-06-03
1532	mutual	fbjl	2015-06-03
1416	mutual	fbjl	2015-06-03
1418	mutual	fbjl	2015-06-03
261	mutual	fbjl	2015-06-03
1440	mutual	fbjl	2015-06-03
4	mutual	fbjl	2015-06-03
1469	mutual	fbjl	2015-06-04
1461	mutual	fbjl	2015-06-04
9	mutual	fbjl	2015-06-04
9	mutual	fbjl	2015-06-04
3	mutual	fbjl	2015-06-04
8	mutual	fbjl	2015-06-04
6	mutual	fbjl	2015-06-04
7	mutual	fbjl	2015-06-04
5	mutual	fbjl	2015-06-04
102	mutual	fbjl	2015-06-04
1530	mutual	cyclops	2015-06-04
4	mutual	fbjl	2015-06-04
12	mutual	fbjl	2015-06-04
1449	mutual	fbjl	2015-06-04
1428	mutual	fbjl	2015-06-04
1456	mutual	fbjl	2015-06-04
1417	mutual	fbjl	2015-06-04
102	mutual	fbjl	2015-06-04
50	mutual	fbjl	2015-06-04
50	mutual	fbjl	2015-06-04
1427	mutual	fbjl	2015-06-04
1427	mutual	fbjl	2015-06-04
5026	mutual	fbjl	2015-06-04
1423	mutual	fbjl	2015-06-05
1458	mutual	fbjl	2015-06-05
1424	mutual	fbjl	2015-06-05
1427	mutual	fbjl	2015-06-05
1426	mutual	fbjl	2015-06-05
85	mutual	fbjl	2015-06-05
1494	mutual	fbjl	2015-06-05
1494	mutual	fbjl aND 8=8	2015-06-05
1494	mutual	fbjl aND 8=3	2015-06-05
1494	mutual	fbjl\taND\t8=8	2015-06-05
1494	mutual	fbjl\taND\t8=3	2015-06-05
1494	mutual	fbjl/**/aND/**/8=8	2015-06-05
1494	mutual	fbjl/**/aND/**/8=3	2015-06-05
1494	mutual	fbjl	2015-06-05
1425	mutual	fbjl	2015-06-05
25	mutual	fbjl	2015-06-05
1440	mutual	fbjl	2015-06-05
57	mutual	fbjl	2015-06-05
57	mutual	fbjl	2015-06-05
1433	mutual	fbjl	2015-06-05
69	mutual	fbjl	2015-06-05
1455	mutual	fbjl	2015-06-05
64	mutual	fbjl	2015-06-05
1459	mutual	fbjl	2015-06-06
1458	mutual	fbjl	2015-06-06
1472	mutual	fbjl	2015-06-06
24	mutual	fbjl	2015-06-06
1529	mutual	cyclops	2015-06-06
1467	mutual	fbjl	2015-06-06
85	mutual	fbjl	2015-06-06
1450	mutual	fbjl	2015-06-06
1455	mutual	fbjl	2015-06-06
69	mutual	fbjl	2015-06-06
6	mutual	fbjl	2015-06-06
1471	mutual	fbjl	2015-06-06
1454	mutual	fbjl	2015-06-06
1474	mutual	fbjl	2015-06-06
1427	mutual	fbjl	2015-06-06
1452	mutual	fbjl	2015-06-06
59	mutual	fbjl	2015-06-06
1471	mutual	fbjl	2015-06-06
1473	mutual	fbjl	2015-06-06
1426	mutual	fbjl	2015-06-08
1530	mutual	cyclops	2015-06-08
5014	mutual	cyclops	2015-06-08
1429	mutual	fbjl	2015-06-08
1492	mutual	fbjl	2015-06-10
4963	mutual	fbjl	2015-06-10
1432	mutual	fbjl	2015-06-10
1431	mutual	fbjl	2015-06-10
71	mutual	fbjl	2015-06-11
9	mutual	fbjl	2015-06-12
5026	mutual	fbjl	2015-06-12
48	mutual	fbjl	2015-06-13
1463	mutual	fbjl	2015-06-14
101	mutual	fbjl	2015-06-14
1501	mutual	fbjl	2015-06-15
1423	mutual	fbjl	2015-06-15
5018	mutual	cyclops	2015-06-15
49	mutual	fbjl	2015-06-15
5018	mutual	cyclops	2015-06-15
49	mutual	fbjl	2015-06-15
49	mutual	fbjl	2015-06-15
49	mutual	fbjl	2015-06-15
49	mutual	fbjl	2015-06-15
1419	mutual	fbjl	2015-06-16
5018	mutual	cyclops	2015-06-16
5018	mutual	cyclops	2015-06-16
5018	mutual	cyclops	2015-06-16
1530	mutual	cyclops	2015-06-16
1453	mutual	fbjl	2015-06-18
1507	mutual	fbjl	2015-06-18
1507	mutual	fbjl	2015-06-18
1507	mutual	fbjl	2015-06-18
1507	mutual	fbjl	2015-06-19
1476	mutual	fbjl	2015-06-20
92	mutual	fbjl	2015-06-20
9	mutual	fbjl	2015-06-20
82	mutual	fbjl	2015-06-20
47	mutual	fbjl	2015-06-20
47	mutual	fbjl	2015-06-20
12	mutual	fbjl	2015-06-21
1435	mutual	fbjl	2015-06-21
1424	mutual	fbjl	2015-06-21
4963	mutual	fbjl	2015-06-22
100	mutual	fbjl	2015-06-23
84	mutual	fbjl	2015-06-23
9	mutual	fbjl	2015-06-24
1507	mutual	fbjl	2015-06-24
1507	mutual	fbjl aND 8=8	2015-06-24
1507	mutual	fbjl aND 8=3	2015-06-24
1507	mutual	fbjl\taND\t8=8	2015-06-24
1507	mutual	fbjl\taND\t8=3	2015-06-24
1507	mutual	fbjl/**/aND/**/8=8	2015-06-24
1507	mutual	fbjl/**/aND/**/8=3	2015-06-24
1507	mutual	fbjl	2015-06-24
1451	mutual	fbjl	2015-06-24
1447	mutual	fbjl	2015-06-24
1530	mutual	cyclops	2015-06-25
5017	mutual	cyclops	2015-06-26
84	mutual	fbjl	2015-06-27
45	mutual	fbjl	2015-06-28
1460	mutual	fbjl	2015-06-28
1441	mutual	fbjl	2015-06-28
1448	mutual	fbjl	2015-06-28
1467	mutual	fbjl	2015-06-28
1473	mutual	fbjl	2015-06-28
1427	mutual	fbjl	2015-06-28
1469	mutual	fbjl	2015-06-28
1458	mutual	fbjl	2015-06-29
1472	mutual	fbjl	2015-06-29
1421	mutual	fbjl	2015-06-29
25	mutual	fbjl	2015-06-29
1456	mutual	fbjl	2015-06-29
1433	mutual	fbjl	2015-06-29
1428	mutual	fbjl	2015-06-29
1434	mutual	fbjl	2015-06-29
1461	mutual	fbjl	2015-06-29
1466	mutual	fbjl	2015-06-29
1445	mutual	fbjl	2015-06-29
1468	mutual	fbjl	2015-06-29
27	mutual	fbjl	2015-06-29
27	mutual	fbjl	2015-06-29
69	mutual	fbjl	2015-06-29
5018	mutual	cyclops	2015-06-29
1477	mutual	fbjl	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
1450	mutual	fbjl	2015-06-29
5015	mutual	cyclops	2015-06-29
5014	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
1440	mutual	fbjl	2015-06-29
1470	mutual	fbjl	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
5018	mutual	cyclops	2015-06-29
1436	mutual	fbjl	2015-06-29
1452	mutual	fbjl	2015-06-29
1449	mutual	fbjl	2015-06-29
50	mutual	fbjl	2015-06-29
50	mutual	fbjl	2015-06-29
1469	mutual	fbjl	2015-06-29
1467	mutual	fbjl	2015-06-29
1440	mutual	fbjl	2015-06-29
1450	mutual	fbjl	2015-06-29
1436	mutual	fbjl	2015-06-30
1434	mutual	fbjl	2015-06-30
1434	mutual	fbjl	2015-06-30
1427	mutual	fbjl	2015-06-30
27	mutual	fbjl	2015-06-30
1460	mutual	fbjl	2015-06-30
69	mutual	fbjl	2015-06-30
5014	mutual	cyclops	2015-06-30
25	mutual	fbjl	2015-06-30
1477	mutual	fbjl	2015-06-30
1441	mutual	fbjl	2015-06-30
1456	mutual	fbjl	2015-06-30
1421	mutual	fbjl	2015-06-30
1429	mutual	fbjl	2015-06-30
1510	mutual	fbjl	2015-06-30
1457	mutual	fbjl	2015-06-30
11	mutual	fbjl	2015-06-30
84	mutual	fbjl	2015-06-30
1526	mutual	fbjl	2015-06-30
1439	mutual	fbjl	2015-06-30
1416	mutual	fbjl	2015-06-30
18	mutual	fbjl	2015-07-01
1426	mutual	fbjl	2015-07-01
67	mutual	fbjl	2015-07-01
1506	mutual	fbjl	2015-07-01
78	mutual	fbjl	2015-07-01
1480	mutual	fbjl	2015-07-01
5013	mutual	cyclops	2015-07-01
1521	mutual	fbjl	2015-07-01
1495	mutual	fbjl	2015-07-01
1497	mutual	fbjl	2015-07-01
1455	mutual	fbjl	2015-07-01
5018	mutual	cyclops	2015-07-01
1466	mutual	fbjl	2015-07-01
1470	mutual	fbjl	2015-07-02
1428	mutual	fbjl	2015-07-02
45	mutual	fbjl	2015-07-02
1468	mutual	fbjl	2015-07-02
50	mutual	fbjl	2015-07-02
50	mutual	fbjl	2015-07-02
1449	mutual	fbjl	2015-07-02
1461	mutual	fbjl	2015-07-02
1459	mutual	fbjl	2015-07-02
27	mutual	fbjl	2015-07-03
27	mutual	fbjl	2015-07-04
52	mutual	fbjl	2015-07-05
52	mutual	fbjl	2015-07-05
52	mutual	fbjl	2015-07-05
53	mutual	fbjl	2015-07-06
53	mutual	fbjl	2015-07-06
1530	mutual	cyclops	2015-07-06
53	mutual	fbjl	2015-07-07
53	mutual	fbjl	2015-07-07
1530	mutual	cyclops	2015-07-07
24	mutual	fbjl	2015-07-07
5018	mutual	cyclops	2015-07-09
5018	mutual	cyclops	2015-07-09
5018	mutual	cyclops	2015-07-09
5014	mutual	cyclops	2015-07-09
1531	mutual	cyclops	2015-07-09
1531	mutual	cyclops	2015-07-09
24	mutual	fbjl	2015-07-09
5018	mutual	cyclops	2015-07-09
1530	mutual	cyclops	2015-07-10
5014	mutual	cyclops	2015-07-10
5015	mutual	cyclops	2015-07-10
5016	mutual	cyclops	2015-07-10
1529	mutual	cyclops	2015-07-10
813	mutual	cyclops	2015-07-10
1531	mutual	cyclops	2015-07-10
5013	mutual	cyclops	2015-07-10
5017	mutual	cyclops	2015-07-10
814	mutual	cyclops	2015-07-10
5018	mutual	cyclops	2015-07-10
1530	mutual	cyclops	2015-07-10
5014	mutual	cyclops	2015-07-15
5016	mutual	cyclops	2015-07-15
1529	mutual	cyclops	2015-07-15
1530	mutual	cyclops	2015-07-15
1454	mutual	fbjl	2015-07-15
1464	mutual	fbjl	2015-07-15
5014	mutual	cyclops	2015-07-22
5013	mutual	cyclops	2015-07-22
5013	mutual	cyclops	2015-07-22
74	mutual	fbjl	2015-07-26
93	mutual	fbjl	2015-07-26
96	mutual	fbjl	2015-07-26
98	mutual	fbjl	2015-07-26
99	mutual	fbjl	2015-07-26
1522	mutual	fbjl	2015-07-26
1524	mutual	fbjl	2015-07-26
5766	mutual	fbjl	2015-07-26
1523	mutual	fbjl	2015-07-26
1525	mutual	fbjl	2015-07-26
814	mutual	cyclops	2015-07-26
1532	mutual	fbjl	2015-07-26
1511	mutual	fbjl	2015-07-26
45	mutual	fbjl	2015-07-26
5026	mutual	fbjl	2015-07-26
98	mutual	fbjl	2015-07-27
5013	mutual	cyclops	2015-07-27
1532	mutual	fbjl	2015-07-28
84	mutual	fbjl	2015-07-30
38	mutual	fbjl	2015-07-30
49	mutual	fbjl	2015-07-30
51	mutual	fbjl	2015-07-30
77	mutual	fbjl	2015-07-30
30	mutual	fbjl	2015-07-30
35	mutual	fbjl	2015-07-30
76	mutual	fbjl	2015-07-31
40	mutual	fbjl	2015-07-31
96	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
77	mutual	fbjl	2015-07-31
82	mutual	fbjl	2015-07-31
27	mutual	fbjl	2015-07-31
26	mutual	fbjl	2015-07-31
1532	mutual	fbjl	2015-07-31
1440	mutual	fbjl	2015-08-01
47	mutual	fbjl	2015-08-01
50	mutual	fbjl	2015-08-01
32	mutual	fbjl	2015-08-01
77	mutual	fbjl	2015-08-01
77	mutual	fbjl	2015-08-01
77	mutual	fbjl	2015-08-01
77	mutual	fbjl	2015-08-01
5026	mutual	fbjl	2015-08-01
77	mutual	fbjl	2015-08-01
1429	mutual	fbjl	2015-08-01
1467	mutual	fbjl	2015-08-01
1451	mutual	fbjl	2015-08-01
45	mutual	fbjl	2015-08-02
5014	mutual	cyclops	2015-08-02
91	mutual	fbjl	2015-08-02
28	mutual	fbjl	2015-08-02
80	mutual	fbjl	2015-08-02
1473	mutual	fbjl	2015-08-02
54	mutual	fbjl	2015-08-02
48	mutual	fbjl	2015-08-02
25	mutual	fbjl	2015-08-03
98	mutual	fbjl	2015-08-03
93	mutual	fbjl	2015-08-03
1429	mutual	fbjl	2015-08-03
1477	mutual	fbjl	2015-08-03
1456	mutual	fbjl	2015-08-03
44	mutual	fbjl	2015-08-03
39	mutual	fbjl	2015-08-03
69	mutual	fbjl	2015-08-03
92	mutual	fbjl	2015-08-03
81	mutual	fbjl	2015-08-03
53	mutual	fbjl	2015-08-03
78	mutual	fbjl	2015-08-04
90	mutual	fbjl	2015-08-04
89	mutual	fbjl	2015-08-04
43	mutual	fbjl	2015-08-04
99	mutual	fbjl	2015-08-04
36	mutual	fbjl	2015-08-04
10	mutual	fbjl	2015-08-04
55	mutual	fbjl	2015-08-04
24	mutual	fbjl	2015-08-04
48	mutual	fbjl	2015-08-04
85	mutual	fbjl	2015-08-04
100	mutual	fbjl	2015-08-04
261	mutual	fbjl	2015-08-04
92	mutual	fbjl	2015-08-04
1514	mutual	fbjl	2015-08-04
1522	mutual	fbjl	2015-08-04
1432	mutual	fbjl	2015-08-04
102	mutual	fbjl	2015-08-05
1524	mutual	fbjl	2015-08-05
41	mutual	fbjl	2015-08-05
52	mutual	fbjl	2015-08-05
25	mutual	fbjl	2015-08-05
79	mutual	fbjl	2015-08-05
33	mutual	fbjl	2015-08-05
56	mutual	fbjl	2015-08-05
102	mutual	fbjl	2015-08-05
101	mutual	fbjl	2015-08-05
1515	mutual	fbjl	2015-08-05
1516	mutual	fbjl	2015-08-05
1520	mutual	fbjl	2015-08-05
1463	mutual	fbjl	2015-08-05
1439	mutual	fbjl	2015-08-05
1436	mutual	fbjl	2015-08-06
50	mutual	fbjl	2015-08-06
50	mutual	fbjl	2015-08-06
102	mutual	fbjl	2015-08-06
1502	mutual	fbjl	2015-08-06
1502	mutual	fbjl	2015-08-06
1519	mutual	fbjl	2015-08-06
1526	mutual	fbjl	2015-08-06
1499	mutual	fbjl	2015-08-07
1483	mutual	fbjl	2015-08-07
1481	mutual	fbjl	2015-08-07
1528	mutual	fbjl	2015-08-07
1486	mutual	fbjl	2015-08-07
1513	mutual	fbjl	2015-08-07
5764	mutual	fbjl	2015-08-07
1492	mutual	fbjl	2015-08-07
1498	mutual	fbjl	2015-08-07
1485	mutual	fbjl	2015-08-07
5766	mutual	fbjl	2015-08-07
101	mutual	fbjl	2015-08-07
1482	mutual	fbjl	2015-08-07
1523	mutual	fbjl	2015-08-07
1459	mutual	fbjl	2015-08-07
1533	mutual	fbjl	2015-08-07
1491	mutual	fbjl	2015-08-07
1500	mutual	fbjl	2015-08-07
1525	mutual	fbjl	2015-08-07
1494	mutual	fbjl	2015-08-08
1493	mutual	fbjl	2015-08-08
1466	mutual	fbjl	2015-08-08
53	mutual	fbjl	2015-08-08
53	mutual	fbjl	2015-08-08
53	mutual	fbjl	2015-08-08
1512	mutual	fbjl	2015-08-08
53	mutual	fbjl	2015-08-08
53	mutual	fbjl	2015-08-08
1461	mutual	fbjl	2015-08-08
1527	mutual	fbjl	2015-08-08
1503	mutual	fbjl	2015-08-09
1521	mutual	fbjl	2015-08-09
1487	mutual	fbjl	2015-08-09
5765	mutual	fbjl	2015-08-09
4963	mutual	fbjl	2015-08-09
1495	mutual	fbjl	2015-08-09
1518	mutual	fbjl	2015-08-09
1484	mutual	fbjl	2015-08-09
1488	mutual	fbjl	2015-08-09
1517	mutual	fbjl	2015-08-09
1496	mutual	fbjl	2015-08-09
1497	mutual	fbjl	2015-08-09
1501	mutual	fbjl	2015-08-09
1489	mutual	fbjl	2015-08-10
5017	mutual	cyclops	2015-08-10
5014	mutual	cyclops	2015-08-10
814	mutual	cyclops	2015-08-10
1453	mutual	fbjl	2015-08-10
5018	mutual	cyclops	2015-08-10
5013	mutual	cyclops	2015-08-10
1441	mutual	fbjl	2015-08-11
12	mutual	fbjl	2015-08-12
100	mutual	fbjl	2015-08-12
48	mutual	fbjl	2015-08-13
48	mutual	fbjl	2015-08-13
1435	mutual	fbjl	2015-08-14
48	mutual	fbjl	2015-08-14
48	mutual	fbjl	2015-08-14
1426	mutual	fbjl	2015-08-15
1434	mutual	fbjl	2015-08-15
49	mutual	fbjl	2015-08-16
49	mutual	fbjl	2015-08-16
27	mutual	fbjl	2015-08-16
26	mutual	fbjl	2015-08-16
49	mutual	fbjl	2015-08-16
1507	mutual	fbjl	2015-08-16
57	mutual	fbjl	2015-08-16
5024	mutual	fbjl	2015-08-16
1531	mutual	cyclops	2015-08-16
36	mutual	fbjl	2015-08-16
1427	mutual	fbjl	2015-08-17
1476	mutual	fbjl	2015-08-17
1431	mutual	fbjl	2015-08-17
57	mutual	fbjl	2015-08-19
57	mutual	fbjl	2015-08-19
57	mutual	fbjl	2015-08-20
1529	mutual	cyclops	2015-08-20
99	mutual	fbjl	2015-08-22
98	mutual	fbjl	2015-08-22
5766	mutual	fbjl	2015-08-22
1532	mutual	fbjl	2015-08-22
57	mutual	fbjl	2015-08-22
814	mutual	cyclops	2015-08-22
98	mutual	fbjl	2015-08-25
98	mutual	fbjl	2015-08-25
99	mutual	fbjl	2015-08-25
92	mutual	fbjl	2015-08-26
92	mutual	fbjl aND 8=8	2015-08-26
92	mutual	fbjl aND 8=3	2015-08-26
92	mutual	fbjl\taND\t8=8	2015-08-26
92	mutual	fbjl\taND\t8=3	2015-08-26
92	mutual	fbjl/**/aND/**/8=8	2015-08-26
92	mutual	fbjl/**/aND/**/8=3	2015-08-26
92	mutual	fbjl	2015-08-26
62	mutual	fbjl	2015-08-26
62	mutual	fbjl	2015-08-26
57	mutual	fbjl	2015-08-28
57	mutual	fbjl	2015-08-28
98	mutual	fbjl	2015-08-28
5026	mutual	fbjl	2015-08-28
1474	mutual	fbjl	2015-08-30
5026	mutual	fbjl	2015-08-31
62	mutual	fbjl	2015-08-31
98	mutual	fbjl	2015-09-01
1417	mutual	fbjl	2015-09-02
62	mutual	fbjl	2015-09-02
77	mutual	fbjl	2015-09-03
77	mutual	fbjl	2015-09-03
77	mutual	fbjl	2015-09-03
62	mutual	fbjl	2015-09-04
1531	mutual	cyclops	2015-09-04
62	mutual	fbjl	2015-09-06
62	mutual	fbjl	2015-09-06
62	mutual	fbjl	2015-09-06
5015	mutual	cyclops	2015-09-07
62	mutual	fbjl	2015-09-08
5765	mutual	fbjl	2015-09-12
1438	mutual	fbjl	2015-09-12
98	mutual	fbjl	2015-09-13
5017	mutual	cyclops	2015-09-14
5015	mutual	cyclops	2015-09-15
1452	mutual	fbjl	2015-09-15
98	mutual	fbjl	2015-09-16
1530	mutual	cyclops	2015-09-16
5015	mutual	cyclops	2015-09-16
5016	mutual	cyclops	2015-09-16
19	mutual	fbjl	2015-09-17
98	mutual	fbjl	2015-09-17
1443	mutual	fbjl	2015-09-20
71	mutual	fbjl	2015-09-20
1471	mutual	fbjl	2015-09-20
1458	mutual	fbjl	2015-09-21
1454	mutual	fbjl	2015-09-21
5014	mutual	cyclops	2015-09-21
1443	mutual	fbjl	2015-09-21
1471	mutual	fbjl	2015-09-21
99	mutual	fbjl	2015-09-22
5014	mutual	cyclops	2015-09-22
1454	mutual	fbjl	2015-09-22
52	mutual	fbjl	2015-09-22
52	mutual	fbjl	2015-09-22
1450	mutual	fbjl	2015-09-23
1458	mutual	fbjl	2015-09-23
64	mutual	fbjl	2015-09-24
1456	mutual	fbjl	2015-09-24
1473	mutual	fbjl	2015-09-24
9	mutual	fbjl	2015-09-24
4963	mutual	fbjl	2015-09-25
1429	mutual	fbjl	2015-09-25
1463	mutual	fbjl	2015-09-25
1467	mutual	fbjl	2015-09-25
85	mutual	fbjl	2015-09-25
85	mutual	fbjl	2015-09-25
4963	mutual	fbjl	2015-09-26
69	mutual	fbjl	2015-09-26
1434	mutual	fbjl	2015-09-26
1451	mutual	fbjl	2015-09-27
8	mutual	fbjl	2015-09-27
1424	mutual	fbjl	2015-09-27
1529	mutual	cyclops	2015-09-27
1451	mutual	fbjl	2015-09-27
1448	mutual	fbjl	2015-09-27
1460	mutual	fbjl	2015-09-28
1455	mutual	fbjl	2015-09-28
1459	mutual	fbjl	2015-09-28
1448	mutual	fbjl	2015-09-28
71	mutual	fbjl	2015-09-29
1461	mutual	fbjl	2015-09-29
1505	mutual	fbjl	2015-09-29
1441	mutual	fbjl	2015-09-29
1460	mutual	fbjl	2015-09-29
1474	mutual	fbjl	2015-09-29
1470	mutual	fbjl	2015-09-29
1469	mutual	fbjl	2015-09-29
25	mutual	fbjl	2015-09-29
71	mutual	fbjl	2015-09-29
1431	mutual	fbjl	2015-09-30
1470	mutual	fbjl	2015-09-30
57	mutual	fbjl	2015-09-30
1466	mutual	fbjl	2015-09-30
47	mutual	fbjl	2015-09-30
47	mutual	fbjl	2015-09-30
1435	mutual	fbjl	2015-10-02
1472	mutual	fbjl	2015-10-02
1426	mutual	fbjl	2015-10-03
84	mutual	fbjl	2015-10-03
1435	mutual	fbjl	2015-10-03
1445	mutual	fbjl	2015-10-03
1463	mutual	fbjl	2015-10-03
12	mutual	fbjl	2015-10-04
1429	mutual	fbjl	2015-10-04
1421	mutual	fbjl	2015-10-04
1429	mutual	fbjl	2015-10-04
1423	mutual	fbjl	2015-10-04
12	mutual	fbjl	2015-10-05
1477	mutual	fbjl	2015-10-05
1434	mutual	fbjl	2015-10-05
77	mutual	fbjl	2015-10-05
77	mutual	fbjl	2015-10-05
1447	mutual	fbjl	2015-10-05
1463	mutual	fbjl	2015-10-05
5766	mutual	fbjl	2015-10-05
813	mutual	cyclops	2015-10-05
5018	mutual	cyclops	2015-10-05
5018	mutual	cyclops	2015-10-05
45	mutual	fbjl	2015-10-05
1451	mutual	fbjl	2015-10-05
1440	mutual	fbjl	2015-10-06
5018	mutual	cyclops	2015-10-06
1424	mutual	fbjl	2015-10-06
77	mutual	fbjl	2015-10-06
92	mutual	fbjl	2015-10-06
1434	mutual	fbjl	2015-10-06
1476	mutual	fbjl	2015-10-06
1433	mutual	fbjl	2015-10-06
1468	mutual	fbjl	2015-10-06
1512	mutual	fbjl	2015-10-06
26	mutual	fbjl	2015-10-06
84	mutual	fbjl	2015-10-07
102	mutual	fbjl	2015-10-07
1424	mutual	fbjl	2015-10-07
1512	mutual	fbjl	2015-10-07
1451	mutual	fbjl	2015-10-07
100	mutual	fbjl	2015-10-07
1440	mutual	fbjl	2015-10-07
1449	mutual	fbjl	2015-10-07
58	mutual	fbjl	2015-10-08
1436	mutual	fbjl	2015-10-08
1433	mutual	fbjl	2015-10-08
1461	mutual	fbjl	2015-10-08
1439	mutual	fbjl	2015-10-08
1469	mutual	fbjl	2015-10-08
1441	mutual	fbjl	2015-10-08
27	mutual	fbjl	2015-10-08
1524	mutual	fbjl	2015-10-09
1469	mutual	fbjl	2015-10-09
1466	mutual	fbjl	2015-10-09
1441	mutual	fbjl	2015-10-09
1431	mutual	fbjl	2015-10-09
1461	mutual	fbjl	2015-10-09
261	mutual	fbjl	2015-10-09
1470	mutual	fbjl	2015-10-09
5013	mutual	cyclops	2015-10-09
24	mutual	fbjl	2015-10-09
24	mutual	fbjl	2015-10-09
5018	mutual	cyclops	2015-10-09
1432	mutual	fbjl	2015-10-09
1466	mutual	fbjl	2015-10-10
1427	mutual	fbjl	2015-10-10
1470	mutual	fbjl	2015-10-10
45	mutual	fbjl	2015-10-10
1431	mutual	fbjl	2015-10-10
1432	mutual	fbjl	2015-10-10
84	mutual	fbjl	2015-10-10
39	mutual	fbjl	2015-10-10
26	mutual	fbjl	2015-10-11
5026	mutual	fbjl	2015-10-11
1427	mutual	fbjl	2015-10-11
1453	mutual	fbjl	2015-10-11
1491	mutual	fbjl	2015-10-11
1426	mutual	fbjl	2015-10-11
3	mutual	fbjl	2015-10-11
8	mutual	fbjl	2015-10-11
1428	mutual	fbjl	2015-10-11
5017	mutual	cyclops	2015-10-11
1498	mutual	fbjl	2015-10-12
1426	mutual	fbjl	2015-10-12
62	mutual	fbjl	2015-10-12
1435	mutual	fbjl	2015-10-12
1532	mutual	fbjl	2015-10-12
1521	mutual	fbjl	2015-10-12
1428	mutual	fbjl	2015-10-12
9	mutual	fbjl	2015-10-12
3	mutual	fbjl	2015-10-12
8	mutual	fbjl	2015-10-12
6	mutual	fbjl	2015-10-12
7	mutual	fbjl	2015-10-12
5	mutual	fbjl	2015-10-12
4	mutual	fbjl	2015-10-12
12	mutual	fbjl	2015-10-12
10	mutual	fbjl	2015-10-12
11	mutual	fbjl	2015-10-12
1416	mutual	fbjl	2015-10-12
1418	mutual	fbjl	2015-10-12
1417	mutual	fbjl	2015-10-12
1530	mutual	cyclops	2015-10-12
90	mutual	fbjl	2015-10-12
84	mutual	fbjl	2015-10-12
91	mutual	fbjl	2015-10-12
85	mutual	fbjl	2015-10-12
1520	mutual	fbjl	2015-10-12
1519	mutual	fbjl	2015-10-12
5764	mutual	fbjl	2015-10-12
1533	mutual	fbjl	2015-10-12
1512	mutual	fbjl	2015-10-12
1521	mutual	fbjl	2015-10-12
1518	mutual	fbjl	2015-10-12
5017	mutual	cyclops	2015-10-12
1515	mutual	fbjl	2015-10-12
1446	mutual	fbjl	2015-10-12
55	mutual	fbjl	2015-10-12
55	mutual	fbjl	2015-10-12
1453	mutual	fbjl	2015-10-12
99	mutual	fbjl	2015-10-12
1498	mutual	fbjl	2015-10-12
27	mutual	fbjl	2015-10-12
1506	mutual	fbjl	2015-10-12
27	mutual	fbjl	2015-10-12
68	mutual	fbjl	2015-10-13
36	mutual	fbjl	2015-10-13
1489	mutual	fbjl	2015-10-13
44	mutual	fbjl	2015-10-13
44	mutual	fbjl	2015-10-13
24	mutual	fbjl	2015-10-13
1435	mutual	fbjl	2015-10-13
24	mutual	fbjl	2015-10-13
1533	mutual	fbjl	2015-10-13
90	mutual	fbjl	2015-10-13
5764	mutual	fbjl	2015-10-13
12	mutual	fbjl	2015-10-13
5026	mutual	fbjl	2015-10-14
5018	mutual	cyclops	2015-10-14
1519	mutual	fbjl	2015-10-14
5026	mutual	fbjl	2015-10-14
5026	mutual	fbjl	2015-10-14
1530	mutual	cyclops	2015-10-14
1512	mutual	fbjl	2015-10-14
1463	mutual	fbjl	2015-10-14
4	mutual	fbjl	2015-10-14
5020	mutual	fbjl	2015-10-14
99	mutual	fbjl	2015-10-14
1476	mutual	fbjl	2015-10-14
39	mutual	fbjl	2015-10-14
1454	mutual	fbjl	2015-10-14
26	mutual	fbjl	2015-10-15
1468	mutual	fbjl	2015-10-15
5014	mutual	cyclops	2015-10-15
1463	mutual	fbjl	2015-10-15
1434	mutual	fbjl	2015-10-15
1491	mutual	fbjl	2015-10-15
813	mutual	cyclops	2015-10-15
1531	mutual	cyclops	2015-10-15
5026	mutual	fbjl	2015-10-15
1454	mutual	fbjl	2015-10-15
5014	mutual	cyclops	2015-10-15
1468	mutual	fbjl	2015-10-16
1515	mutual	fbjl	2015-10-16
5015	mutual	cyclops	2015-10-16
1449	mutual	fbjl	2015-10-16
1518	mutual	fbjl	2015-10-16
1476	mutual	fbjl	2015-10-16
64	mutual	fbjl	2015-10-16
35	mutual	fbjl	2015-10-16
35	mutual	fbjl	2015-10-16
38	mutual	fbjl	2015-10-16
1436	mutual	fbjl	2015-10-16
1434	mutual	fbjl	2015-10-16
1525	mutual	fbjl	2015-10-16
1512	mutual	fbjl	2015-10-16
1449	mutual	fbjl	2015-10-16
98	mutual	fbjl	2015-10-16
1439	mutual	fbjl	2015-10-16
1531	mutual	cyclops	2015-10-17
30	mutual	fbjl	2015-10-17
5766	mutual	fbjl	2015-10-17
1436	mutual	fbjl	2015-10-17
1456	mutual	fbjl	2015-10-17
24	mutual	fbjl	2015-10-17
57	mutual	fbjl	2015-10-17
57	mutual	fbjl	2015-10-17
1450	mutual	fbjl	2015-10-17
45	mutual	fbjl	2015-10-18
99	mutual	fbjl	2015-10-18
4	mutual	fbjl	2015-10-18
9	mutual	fbjl	2015-10-18
1458	mutual	fbjl	2015-10-18
57	mutual	fbjl	2015-10-18
1439	mutual	fbjl	2015-10-18
1507	mutual	fbjl	2015-10-18
39	mutual	fbjl	2015-10-19
1432	mutual	fbjl	2015-10-19
1473	mutual	fbjl	2015-10-19
69	mutual	fbjl	2015-10-19
4959	mutual	fbjl	2015-10-19
35	mutual	fbjl	2015-10-19
35	mutual	fbjl	2015-10-19
5016	mutual	cyclops	2015-10-19
1432	mutual	fbjl	2015-10-20
1493	mutual	fbjl	2015-10-20
1467	mutual	fbjl	2015-10-20
1427	mutual	fbjl	2015-10-20
1521	mutual	fbjl	2015-10-20
1427	mutual	fbjl	2015-10-21
1428	mutual	fbjl	2015-10-21
1498	mutual	fbjl	2015-10-21
1446	mutual	fbjl	2015-10-21
1428	mutual	fbjl	2015-10-21
1498	mutual	fbjl	2015-10-21
5764	mutual	fbjl	2015-10-22
1521	mutual	fbjl	2015-10-22
57	mutual	fbjl	2015-10-22
1446	mutual	fbjl	2015-10-22
1491	mutual	fbjl	2015-10-22
11	mutual	fbjl	2015-10-23
1519	mutual	fbjl	2015-10-23
5764	mutual	fbjl	2015-10-23
4963	mutual	fbjl	2015-10-23
32	mutual	fbjl	2015-10-23
1525	mutual	fbjl	2015-10-23
1512	mutual	fbjl	2015-10-23
5016	mutual	cyclops	2015-10-24
64	mutual	fbjl	2015-10-24
1519	mutual	fbjl	2015-10-24
4959	mutual	fbjl	2015-10-24
58	mutual	fbjl	2015-10-24
5026	mutual	fbjl	2015-10-24
1454	mutual	fbjl	2015-10-24
1515	mutual	fbjl	2015-10-24
66	mutual	fbjl	2015-10-24
1518	mutual	fbjl	2015-10-24
1524	mutual	fbjl	2015-10-24
1454	mutual	fbjl	2015-10-24
1532	mutual	fbjl	2015-10-25
1474	mutual	fbjl	2015-10-25
1512	mutual	fbjl	2015-10-25
1450	mutual	fbjl	2015-10-25
1515	mutual	fbjl	2015-10-26
1456	mutual	fbjl	2015-10-26
96	mutual	fbjl	2015-10-26
35	mutual	fbjl	2015-10-26
1512	mutual	fbjl	2015-10-26
1493	mutual	fbjl	2015-10-26
1523	mutual	fbjl	2015-10-26
1456	mutual	fbjl	2015-10-26
32	mutual	fbjl	2015-10-27
1458	mutual	fbjl	2015-10-27
1507	mutual	fbjl	2015-10-27
1450	mutual	fbjl	2015-10-27
1458	mutual	fbjl	2015-10-27
4	mutual	fbjl	2015-10-28
1473	mutual	fbjl	2015-10-28
58	mutual	fbjl	2015-10-28
1525	mutual	fbjl	2015-10-28
1512	mutual	fbjl	2015-10-28
5016	mutual	cyclops	2015-10-28
1467	mutual	fbjl	2015-10-28
8	mutual	fbjl	2015-10-29
1473	mutual	fbjl	2015-10-29
1467	mutual	fbjl	2015-10-29
9	mutual	fbjl	2015-10-30
1493	mutual	fbjl	2015-10-30
5016	mutual	cyclops	2015-10-30
1531	mutual	cyclops	2015-10-30
1531	mutual	cyclops	2015-10-30
1529	mutual	cyclops	2015-10-30
814	mutual	cyclops	2015-10-30
813	mutual	cyclops	2015-10-30
1524	mutual	fbjl	2015-10-30
5	mutual	fbjl	2015-10-31
93	mutual	fbjl	2015-10-31
1523	mutual	fbjl	2015-10-31
66	mutual	fbjl	2015-10-31
1522	mutual	fbjl	2015-10-31
1447	mutual	fbjl	2015-11-01
19	mutual	fbjl	2015-11-01
1479	mutual	fbjl	2015-11-01
1476	mutual	fbjl	2015-11-01
1469	mutual	fbjl	2015-11-01
1480	mutual	fbjl	2015-11-01
1470	mutual	fbjl	2015-11-01
1472	mutual	fbjl	2015-11-01
1477	mutual	fbjl	2015-11-01
1473	mutual	fbjl	2015-11-01
1471	mutual	fbjl	2015-11-01
1478	mutual	fbjl	2015-11-01
1475	mutual	fbjl	2015-11-01
1474	mutual	fbjl	2015-11-01
44	mutual	fbjl	2015-11-01
43	mutual	fbjl	2015-11-01
1499	mutual	fbjl	2015-11-01
1528	mutual	fbjl	2015-11-01
1498	mutual	fbjl	2015-11-01
5765	mutual	fbjl	2015-11-01
1496	mutual	fbjl	2015-11-01
1497	mutual	fbjl	2015-11-01
1454	mutual	fbjl	2015-11-02
1454	mutual	fbjl	2015-11-03
1474	mutual	fbjl	2015-11-03
32	mutual	fbjl	2015-11-04
5	mutual	fbjl	2015-11-04
1474	mutual	fbjl	2015-11-04
1457	mutual	fbjl	2015-11-04
1465	mutual	fbjl	2015-11-04
1447	mutual	fbjl	2015-11-04
1446	mutual	fbjl	2015-11-04
1459	mutual	fbjl	2015-11-04
1449	mutual	fbjl	2015-11-04
1452	mutual	fbjl	2015-11-04
1448	mutual	fbjl	2015-11-04
1466	mutual	fbjl	2015-11-04
1450	mutual	fbjl	2015-11-04
1467	mutual	fbjl	2015-11-04
1464	mutual	fbjl	2015-11-04
1454	mutual	fbjl	2015-11-04
1458	mutual	fbjl	2015-11-04
1456	mutual	fbjl	2015-11-04
1462	mutual	fbjl	2015-11-04
1453	mutual	fbjl	2015-11-04
1445	mutual	fbjl	2015-11-04
1444	mutual	fbjl	2015-11-04
1455	mutual	fbjl	2015-11-04
1463	mutual	fbjl	2015-11-04
1461	mutual	fbjl	2015-11-04
1460	mutual	fbjl	2015-11-04
1468	mutual	fbjl	2015-11-04
1451	mutual	fbjl	2015-11-04
18	mutual	fbjl	2015-11-04
17	mutual	fbjl	2015-11-04
1420	mutual	fbjl	2015-11-04
1421	mutual	fbjl	2015-11-04
1434	mutual	fbjl	2015-11-04
1433	mutual	fbjl	2015-11-04
1436	mutual	fbjl	2015-11-04
1428	mutual	fbjl	2015-11-04
1431	mutual	fbjl	2015-11-04
1427	mutual	fbjl	2015-11-04
1437	mutual	fbjl	2015-11-04
1443	mutual	fbjl	2015-11-04
1438	mutual	fbjl	2015-11-05
1423	mutual	fbjl	2015-11-05
1424	mutual	fbjl	2015-11-05
1439	mutual	fbjl	2015-11-05
1435	mutual	fbjl	2015-11-05
1426	mutual	fbjl	2015-11-05
1440	mutual	fbjl	2015-11-05
1432	mutual	fbjl	2015-11-05
1425	mutual	fbjl	2015-11-05
1419	mutual	fbjl	2015-11-05
1429	mutual	fbjl	2015-11-05
1441	mutual	fbjl	2015-11-05
1423	mutual	fbjl	2015-11-07
77	mutual	fbjl	2015-11-07
99	mutual	fbjl	2015-11-07
77	mutual	fbjl	2015-11-08
62	mutual	fbjl	2015-11-08
62	mutual	fbjl aND 8=8	2015-11-08
62	mutual	fbjl aND 8=3	2015-11-08
62	mutual	fbjl\taND\t8=8	2015-11-08
62	mutual	fbjl\taND\t8=3	2015-11-08
62	mutual	fbjl/**/aND/**/8=8	2015-11-08
62	mutual	fbjl/**/aND/**/8=3	2015-11-08
62	mutual	fbjl	2015-11-08
5	mutual	fbjl	2015-11-08
1447	mutual	fbjl	2015-11-09
1447	mutual	fbjl	2015-11-09
5013	mutual	cyclops	2015-11-10
5013	mutual	cyclops	2015-11-11
11	mutual	fbjl	2015-11-12
5017	mutual	cyclops	2015-11-12
5017	mutual	cyclops	2015-11-13
1533	mutual	fbjl	2015-11-14
1472	mutual	fbjl	2015-11-14
1530	mutual	cyclops	2015-11-14
1459	mutual	fbjl	2015-11-15
1533	mutual	fbjl	2015-11-15
5017	mutual	cyclops	2015-11-15
1530	mutual	cyclops	2015-11-16
1452	mutual	fbjl	2015-11-16
77	mutual	fbjl	2015-11-16
5015	mutual	cyclops	2015-11-17
1452	mutual	fbjl	2015-11-17
5015	mutual	cyclops	2015-11-17
77	mutual	fbjl	2015-11-18
69	mutual	fbjl	2015-11-20
39	mutual	fbjl	2015-11-20
814	mutual	cyclops	2015-11-20
100	mutual	fbjl	2015-11-20
91	mutual	fbjl	2015-11-21
1471	mutual	fbjl	2015-11-21
1443	mutual	fbjl	2015-11-22
98	mutual	fbjl	2015-11-22
98	mutual	fbjl	2015-11-22
93	mutual	fbjl	2015-11-23
1471	mutual	fbjl	2015-11-23
1443	mutual	fbjl	2015-11-23
1456	mutual	fbjl	2015-11-23
5018	mutual	cyclops	2015-11-23
5013	mutual	cyclops	2015-11-23
5013	mutual	cyclops	2015-11-23
5013	mutual	cyclops	2015-11-23
5018	mutual	cyclops	2015-11-23
5018	mutual	cyclops	2015-11-23
39	mutual	fbjl	2015-11-23
1433	mutual	fbjl	2015-11-23
1477	mutual	fbjl	2015-11-24
1433	mutual	fbjl	2015-11-25
35	mutual	fbjl	2015-11-27
1433	mutual	fbjl	2015-11-27
1532	mutual	fbjl	2015-11-28
39	mutual	fbjl	2015-11-28
35	mutual	fbjl	2015-11-28
1448	mutual	fbjl	2015-11-29
71	mutual	fbjl	2015-11-29
1460	mutual	fbjl	2015-11-30
30	mutual	fbjl	2015-11-30
1448	mutual	fbjl	2015-11-30
1467	mutual	fbjl	2015-11-30
813	mutual	cyclops	2015-11-30
68	mutual	fbjl	2015-11-30
1433	mutual	fbjl	2015-12-01
1460	mutual	fbjl	2015-12-01
71	mutual	fbjl	2015-12-01
39	mutual	fbjl	2015-12-02
813	mutual	cyclops	2015-12-02
5018	mutual	cyclops	2015-12-02
5014	mutual	cyclops	2015-12-02
814	mutual	cyclops	2015-12-02
5018	mutual	cyclops	2015-12-02
5018	mutual	cyclops	2015-12-02
5018	mutual	cyclops	2015-12-02
38	mutual	fbjl	2015-12-03
1448	mutual	fbjl	2015-12-03
30	mutual	fbjl	2015-12-03
1460	mutual	fbjl	2015-12-04
5766	mutual	fbjl	2015-12-04
1531	mutual	cyclops	2015-12-04
5014	mutual	cyclops	2015-12-04
1421	mutual	fbjl	2015-12-05
5018	mutual	cyclops	2015-12-07
1429	mutual	fbjl	2015-12-07
1424	mutual	fbjl	2015-12-07
1451	mutual	fbjl	2015-12-08
1440	mutual	fbjl	2015-12-08
1529	mutual	cyclops	2015-12-08
1440	mutual	fbjl	2015-12-08
5016	mutual	cyclops	2015-12-08
1424	mutual	fbjl	2015-12-08
1455	mutual	fbjl	2015-12-08
58	mutual	fbjl	2015-12-09
4959	mutual	fbjl	2015-12-09
64	mutual	fbjl	2015-12-09
1433	mutual	fbjl	2015-12-09
1451	mutual	fbjl	2015-12-09
5018	mutual	cyclops	2015-12-09
5018	mutual	cyclops	2015-12-09
5018	mutual	cyclops	2015-12-09
5018	mutual	cyclops	2015-12-09
5018	mutual	cyclops	2015-12-09
5014	mutual	cyclops	2015-12-09
814	mutual	cyclops	2015-12-09
1531	mutual	cyclops	2015-12-09
1469	mutual	fbjl	2015-12-09
1441	mutual	fbjl	2015-12-09
1433	mutual	fbjl	2015-12-10
66	mutual	fbjl	2015-12-10
1531	mutual	cyclops	2015-12-10
1461	mutual	fbjl	2015-12-10
1469	mutual	fbjl	2015-12-10
1461	mutual	fbjl	2015-12-10
1466	mutual	fbjl	2015-12-11
1470	mutual	fbjl	2015-12-11
92	mutual	fbjl	2015-12-11
1441	mutual	fbjl	2015-12-11
1431	mutual	fbjl	2015-12-11
1470	mutual	fbjl	2015-12-11
1466	mutual	fbjl	2015-12-12
1440	mutual	fbjl	2015-12-12
5018	mutual	cyclops	2015-12-12
3	mutual	fbjl	2015-12-12
1431	mutual	fbjl	2015-12-12
1451	mutual	fbjl	2015-12-12
8	mutual	fbjl	2015-12-12
5	mutual	fbjl	2015-12-12
5013	mutual	cyclops	2015-12-12
71	mutual	fbjl	2015-12-12
5016	mutual	cyclops	2015-12-12
64	mutual	fbjl	2015-12-13
3	mutual	fbjl	2015-12-13
1426	mutual	fbjl	2015-12-13
62	mutual	fbjl	2015-12-13
1433	mutual	fbjl	2015-12-13
4959	mutual	fbjl	2015-12-13
1453	mutual	fbjl	2015-12-13
58	mutual	fbjl	2015-12-13
62	mutual	fbjl	2015-12-13
5013	mutual	cyclops	2015-12-13
1531	mutual	cyclops	2015-12-13
1461	mutual	fbjl	2015-12-14
66	mutual	fbjl	2015-12-14
1426	mutual	fbjl	2015-12-14
1435	mutual	fbjl	2015-12-14
1453	mutual	fbjl	2015-12-14
44	mutual	fbjl	2015-12-14
1441	mutual	fbjl	2015-12-14
1433	mutual	fbjl	2015-12-14
1469	mutual	fbjl	2015-12-14
90	mutual	fbjl	2015-12-14
1435	mutual	fbjl	2015-12-14
5018	mutual	cyclops	2015-12-14
1466	mutual	fbjl	2015-12-15
9	mutual	fbjl	2015-12-15
1470	mutual	fbjl	2015-12-15
4	mutual	fbjl	2015-12-15
71	mutual	fbjl	2015-12-15
1463	mutual	fbjl	2015-12-16
1530	mutual	cyclops	2015-12-16
5	mutual	fbjl	2015-12-16
1468	mutual	fbjl	2015-12-16
1468	mutual	fbjl	2015-12-16
8	mutual	fbjl	2015-12-16
1476	mutual	fbjl	2015-12-16
58	mutual	fbjl	2015-12-17
1434	mutual	fbjl	2015-12-17
5016	mutual	cyclops	2015-12-17
64	mutual	fbjl	2015-12-17
1463	mutual	fbjl	2015-12-17
1453	mutual	fbjl	2015-12-17
1449	mutual	fbjl	2015-12-17
5017	mutual	cyclops	2015-12-17
1493	mutual	fbjl	2015-12-17
1533	mutual	fbjl	2015-12-17
1426	mutual	fbjl	2015-12-17
4959	mutual	fbjl	2015-12-17
47	mutual	fbjl	2015-12-17
1449	mutual	fbjl	2015-12-17
1476	mutual	fbjl	2015-12-17
62	mutual	fbjl	2015-12-17
1433	mutual	fbjl	2015-12-17
1436	mutual	fbjl	2015-12-17
16	mutual	fbjl	2015-12-17
5017	mutual	cyclops	2015-12-17
1530	mutual	cyclops	2015-12-17
7	mutual	fbjl	2015-12-17
1420	mutual	fbjl	2015-12-17
5026	mutual	fbjl	2015-12-18
1531	mutual	cyclops	2015-12-18
54	mutual	fbjl	2015-12-18
1500	mutual	fbjl	2015-12-18
1533	mutual	fbjl	2015-12-18
1455	mutual	fbjl	2015-12-18
51	mutual	fbjl	2015-12-18
1418	mutual	fbjl	2015-12-18
53	mutual	fbjl	2015-12-18
49	mutual	fbjl	2015-12-18
1425	mutual	fbjl	2015-12-18
1416	mutual	fbjl	2015-12-18
66	mutual	fbjl	2015-12-18
3	mutual	fbjl	2015-12-18
1434	mutual	fbjl	2015-12-18
50	mutual	fbjl	2015-12-18
1530	mutual	cyclops	2015-12-18
1419	mutual	fbjl	2015-12-18
101	mutual	fbjl	2015-12-18
32	mutual	fbjl	2015-12-18
102	mutual	fbjl	2015-12-18
100	mutual	fbjl	2015-12-18
1491	mutual	fbjl	2015-12-18
5018	mutual	cyclops	2015-12-18
25	mutual	fbjl	2015-12-18
24	mutual	fbjl	2015-12-18
69	mutual	fbjl	2015-12-18
1483	mutual	fbjl	2015-12-18
1481	mutual	fbjl	2015-12-18
1485	mutual	fbjl	2015-12-18
1486	mutual	fbjl	2015-12-18
1482	mutual	fbjl	2015-12-18
1484	mutual	fbjl	2015-12-18
1488	mutual	fbjl	2015-12-18
1487	mutual	fbjl	2015-12-18
1489	mutual	fbjl	2015-12-18
5014	mutual	cyclops	2015-12-18
1439	mutual	fbjl	2015-12-18
56	mutual	fbjl	2015-12-18
1501	mutual	fbjl	2015-12-18
1503	mutual	fbjl	2015-12-18
5015	mutual	cyclops	2015-12-19
1502	mutual	fbjl	2015-12-19
1436	mutual	fbjl	2015-12-19
55	mutual	fbjl	2015-12-19
48	mutual	fbjl	2015-12-19
4	mutual	fbjl	2015-12-19
52	mutual	fbjl	2015-12-19
9	mutual	fbjl	2015-12-19
6	mutual	fbjl	2015-12-19
1433	mutual	fbjl	2015-12-19
10	mutual	fbjl	2015-12-19
11	mutual	fbjl	2015-12-19
45	mutual	fbjl	2015-12-19
102	mutual	fbjl	2015-12-19
1417	mutual	fbjl	2015-12-19
71	mutual	fbjl	2015-12-20
5015	mutual	cyclops	2015-12-20
5	mutual	fbjl	2015-12-20
44	mutual	fbjl	2015-12-20
8	mutual	fbjl	2015-12-20
1439	mutual	fbjl	2015-12-20
1448	mutual	fbjl	2015-12-21
1475	mutual	fbjl	2015-12-21
1439	mutual	fbjl	2015-12-21
1435	mutual	fbjl	2015-12-21
1449	mutual	fbjl	2015-12-21
90	mutual	fbjl	2015-12-21
5014	mutual	cyclops	2015-12-21
1432	mutual	fbjl	2015-12-21
1449	mutual	fbjl	2015-12-21
1428	mutual	fbjl	2015-12-21
7	mutual	fbjl	2015-12-21
1432	mutual	fbjl	2015-12-21
1474	mutual	fbjl	2015-12-22
3	mutual	fbjl	2015-12-22
1427	mutual	fbjl	2015-12-22
62	mutual	fbjl	2015-12-22
16	mutual	fbjl	2015-12-22
10	mutual	fbjl	2015-12-23
4	mutual	fbjl	2015-12-23
6	mutual	fbjl	2015-12-23
11	mutual	fbjl	2015-12-23
1428	mutual	fbjl	2015-12-23
9	mutual	fbjl	2015-12-23
1427	mutual	fbjl	2015-12-23
45	mutual	fbjl	2015-12-23
1446	mutual	fbjl	2015-12-24
44	mutual	fbjl	2015-12-24
90	mutual	fbjl	2015-12-25
1455	mutual	fbjl	2015-12-25
1452	mutual	fbjl	2015-12-25
7	mutual	fbjl	2015-12-25
1456	mutual	fbjl	2015-12-26
16	mutual	fbjl	2015-12-26
1433	mutual		2015-12-26
4963	mutual	fbjl	2015-12-26
10	mutual	fbjl	2015-12-26
11	mutual	fbjl	2015-12-26
100	mutual	fbjl	2015-12-27
99	mutual	fbjl	2015-12-27
45	mutual	fbjl	2015-12-27
6	mutual	fbjl	2015-12-27
1454	mutual	fbjl	2015-12-27
1450	mutual	fbjl	2015-12-28
1455	mutual	fbjl	2015-12-28
1427	mutual	fbjl	2015-12-28
1505	mutual	fbjl	2015-12-28
1450	mutual	fbjl	2015-12-29
1458	mutual	fbjl	2015-12-29
1467	mutual	fbjl	2015-12-29
1467	mutual	fbjl	2015-12-29
35	mutual	fbjl	2015-12-29
1433	mutual	fbjl	2015-12-29
1473	mutual	fbjl	2015-12-30
5766	mutual	fbjl	2015-12-30
1460	mutual	fbjl	2015-12-30
1458	mutual	fbjl	2015-12-30
1433	mutual	fbjl	2015-12-31
1473	mutual	fbjl	2015-12-31
35	mutual	fbjl	2015-12-31
1423	mutual	fbjl	2015-12-31
18	mutual	fbjl	2016-01-01
57	mutual	fbjl	2016-01-01
1438	mutual	fbjl	2016-01-01
98	mutual	fbjl	2016-01-01
1437	mutual	fbjl	2016-01-01
69	mutual	fbjl	2016-01-01
17	mutual	fbjl	2016-01-02
12	mutual	fbjl	2016-01-02
62	mutual	fbjl	2016-01-03
98	mutual	fbjl	2016-01-03
813	mutual	cyclops	2016-01-03
30	mutual	fbjl	2016-01-04
1472	mutual	fbjl	2016-01-04
1491	mutual	fbjl	2016-01-04
813	mutual	cyclops	2016-01-04
32	mutual	fbjl	2016-01-04
1454	mutual	fbjl	2016-01-05
1512	mutual	fbjl	2016-01-05
814	mutual	cyclops	2016-01-06
1433	mutual	fbjl	2016-01-06
1518	mutual	fbjl	2016-01-06
62	mutual	fbjl	2016-01-06
25	mutual	fbjl	2016-01-07
1433	mutual	fbjl	2016-01-07
5013	mutual	cyclops	2016-01-07
1532	mutual	fbjl	2016-01-07
16	mutual	fbjl	2016-01-07
1512	mutual	fbjl	2016-01-08
5015	mutual	cyclops	2016-01-08
813	mutual	cyclops	2016-01-08
5014	mutual	cyclops	2016-01-08
11	mutual	fbjl	2016-01-08
1433	mutual	fbjl	2016-01-08
1427	mutual	fbjl	2016-01-08
1427	mutual	fbjl	2016-01-08
1427	mutual	fbjl	2016-01-08
814	mutual	cyclops	2016-01-09
40	mutual	fbjl	2016-01-09
39	mutual	fbjl	2016-01-09
41	mutual	fbjl	2016-01-09
1494	mutual	fbjl	2016-01-09
1495	mutual	fbjl	2016-01-09
1427	mutual	fbjl	2016-01-09
1518	mutual	fbjl	2016-01-09
32	mutual	fbjl	2016-01-09
101	mutual	fbjl	2016-01-10
1467	mutual		2016-01-11
1427	mutual	fbjl	2016-01-11
62	mutual	fbjl	2016-01-11
11	mutual	fbjl	2016-01-12
1440	mutual	fbjl	2016-01-12
1467	mutual	fbjl	2016-01-13
1518	mutual	fbjl	2016-01-13
1427	mutual	fbjl	2016-01-14
1441	mutual	fbjl	2016-01-14
62	mutual	fbjl	2016-01-14
1463	mutual	fbjl	2016-01-14
1518	mutual	fbjl	2016-01-14
59	mutual	fbjl	2016-01-14
1421	mutual	fbjl	2016-01-14
32	mutual	fbjl	2016-01-14
1507	mutual	fbjl	2016-01-15
1467	mutual	fbjl	2016-01-15
1532	mutual	fbjl	2016-01-15
62	mutual	fbjl	2016-01-15
1427	mutual	fbjl	2016-01-15
1427	mutual	fbjl	2016-01-15
1427	mutual	fbjl	2016-01-15
5013	mutual	cyclops	2016-01-15
1510	mutual	fbjl	2016-01-15
1506	mutual	fbjl	2016-01-15
63	mutual	fbjl	2016-01-15
5024	mutual	fbjl	2016-01-15
1455	mutual	fbjl	2016-01-15
1508	mutual	fbjl	2016-01-15
814	mutual	cyclops	2016-01-16
67	mutual	fbjl	2016-01-16
98	mutual	fbjl	2016-01-16
1509	mutual	fbjl	2016-01-16
11	mutual	fbjl	2016-01-16
5013	mutual	cyclops	2016-01-16
61	mutual	fbjl	2016-01-16
1433	mutual	fbjl	2016-01-16
1526	mutual	fbjl	2016-01-17
62	mutual	fbjl	2016-01-17
41	mutual	fbjl	2016-01-17
1433	mutual	fbjl	2016-01-17
1527	mutual	fbjl	2016-01-18
5020	mutual	fbjl	2016-01-18
1475	mutual	fbjl	2016-01-18
1494	mutual	fbjl	2016-01-18
5017	mutual	cyclops	2016-01-18
1533	mutual	fbjl	2016-01-18
59	mutual	fbjl	2016-01-19
1530	mutual	cyclops	2016-01-19
62	mutual	fbjl	2016-01-19
1478	mutual	fbjl	2016-01-19
1480	mutual	fbjl	2016-01-19
1479	mutual	fbjl	2016-01-19
19	mutual	fbjl	2016-01-19
1533	mutual	fbjl	2016-01-19
1530	mutual	cyclops	2016-01-20
11	mutual	fbjl	2016-01-20
5017	mutual	cyclops	2016-01-20
1433	mutual	fbjl	2016-01-20
1467	mutual	fbjl	2016-01-20
1433	mutual	fbjl	2016-01-20
1433	mutual	fbjl	2016-01-20
67	mutual	fbjl	2016-01-20
5015	mutual	cyclops	2016-01-20
5020	mutual	fbjl	2016-01-21
16	mutual	fbjl	2016-01-21
5015	mutual	cyclops	2016-01-21
1433	mutual	fbjl	2016-01-22
5765	mutual	fbjl	2016-01-22
11	mutual	fbjl	2016-01-22
59	mutual	fbjl	2016-01-22
62	mutual	fbjl	2016-01-22
39	mutual	fbjl	2016-01-23
1528	mutual	fbjl	2016-01-23
1480	mutual	fbjl	2016-01-23
1455	mutual	fbjl	2016-01-23
1455	mutual	fbjl aND 8=8	2016-01-23
1455	mutual	fbjl aND 8=3	2016-01-23
1455	mutual	fbjl\taND\t8=8	2016-01-23
1455	mutual	fbjl\taND\t8=3	2016-01-23
1455	mutual	fbjl/**/aND/**/8=8	2016-01-23
1455	mutual	fbjl/**/aND/**/8=3	2016-01-23
1455	mutual	fbjl XoR 8=3	2016-01-23
1455	mutual	fbjl XoR 8=8	2016-01-23
1455	mutual	fbjl\tXoR\t8=3	2016-01-23
1455	mutual	fbjl\tXoR\t8=8	2016-01-23
1455	mutual	fbjl/**/XoR/**/8=3	2016-01-23
1455	mutual	fbjl/**/XoR/**/8=8	2016-01-23
1455	mutual	fbjl	2016-01-23
98	mutual	fbjl	2016-01-23
11	mutual	fbjl	2016-01-23
1467	mutual	fbjl	2016-01-23
67	mutual	fbjl	2016-01-24
1427	mutual	fbjl	2016-01-24
1433	mutual	fbjl	2016-01-24
814	mutual	cyclops	2016-01-25
1431	mutual	fbjl	2016-01-25
1424	mutual	fbjl	2016-01-25
1466	mutual	fbjl	2016-01-26
9	mutual	fbjl	2016-01-26
4	mutual	fbjl	2016-01-26
10	mutual	fbjl	2016-01-26
96	mutual	fbjl	2016-01-26
5020	mutual	fbjl	2016-01-26
5024	mutual	fbjl	2016-01-26
3	mutual	fbjl	2016-01-26
8	mutual	fbjl	2016-01-27
102	mutual	fbjl	2016-01-27
36	mutual	fbjl	2016-01-27
1469	mutual	fbjl	2016-01-27
7	mutual	fbjl	2016-01-27
5	mutual	fbjl	2016-01-27
62	mutual	fbjl	2016-01-27
16	mutual	fbjl	2016-01-27
11	mutual	fbjl	2016-01-27
5015	mutual	cyclops	2016-01-28
5016	mutual	cyclops	2016-01-28
1530	mutual	cyclops	2016-01-28
1451	mutual	fbjl	2016-01-28
1433	mutual	fbjl	2016-01-28
1427	mutual	fbjl	2016-01-29
1526	mutual	fbjl	2016-01-29
1527	mutual	fbjl	2016-01-29
4	mutual	fbjl	2016-01-29
16	mutual	fbjl	2016-01-29
16	mutual	fbjl	2016-01-29
10	mutual	fbjl	2016-01-30
1445	mutual	fbjl	2016-01-30
9	mutual	fbjl	2016-01-30
1427	mutual	fbjl	2016-01-31
5	mutual	fbjl	2016-01-31
12	mutual	fbjl	2016-01-31
3	mutual	fbjl	2016-01-31
7	mutual	fbjl	2016-01-31
8	mutual	fbjl	2016-01-31
16	mutual	fbjl	2016-01-31
11	mutual	fbjl	2016-02-01
35	mutual	fbjl	2016-02-01
1530	mutual	cyclops	2016-02-01
1499	mutual	fbjl	2016-02-01
1467	mutual	fbjl	2016-02-01
43	mutual	fbjl	2016-02-02
1496	mutual	fbjl	2016-02-02
1498	mutual	fbjl	2016-02-02
68	mutual	fbjl	2016-02-02
1427	mutual	fbjl	2016-02-02
1497	mutual	fbjl	2016-02-02
35	mutual	fbjl	2016-02-02
44	mutual	fbjl	2016-02-02
12	mutual	fbjl	2016-02-02
4	mutual	fbjl	2016-02-02
93	mutual	fbjl	2016-02-02
10	mutual	fbjl	2016-02-03
68	mutual	fbjl	2016-02-03
9	mutual	fbjl	2016-02-03
5026	mutual	fbjl	2016-02-03
3	mutual	fbjl	2016-02-03
4	mutual	fbjl	2016-02-03
5	mutual	fbjl	2016-02-03
6	mutual	fbjl	2016-02-03
7	mutual	fbjl	2016-02-03
8	mutual	fbjl	2016-02-03
8	mutual	fbjl	2016-02-03
9	mutual	fbjl	2016-02-03
10	mutual	fbjl	2016-02-03
1532	mutual	fbjl	2016-02-03
1416	mutual	fbjl	2016-02-03
1417	mutual	fbjl	2016-02-03
11	mutual	fbjl	2016-02-03
1418	mutual	fbjl	2016-02-03
12	mutual	fbjl	2016-02-03
1419	mutual	fbjl	2016-02-03
1420	mutual	fbjl	2016-02-03
16	mutual	fbjl	2016-02-03
16	mutual	fbjl	2016-02-03
1421	mutual	fbjl	2016-02-03
1423	mutual	fbjl	2016-02-03
1424	mutual	fbjl	2016-02-03
1425	mutual	fbjl	2016-02-03
1426	mutual	fbjl	2016-02-03
1427	mutual	fbjl	2016-02-03
17	mutual	fbjl	2016-02-03
1428	mutual	fbjl	2016-02-03
1429	mutual	fbjl	2016-02-03
1431	mutual	fbjl	2016-02-03
1432	mutual	fbjl	2016-02-03
1433	mutual	fbjl	2016-02-03
1434	mutual	fbjl	2016-02-03
1435	mutual	fbjl	2016-02-03
1436	mutual	fbjl	2016-02-03
1437	mutual	fbjl	2016-02-03
1438	mutual	fbjl	2016-02-03
1439	mutual	fbjl	2016-02-03
1440	mutual	fbjl	2016-02-03
1441	mutual	fbjl	2016-02-03
18	mutual	fbjl	2016-02-03
1443	mutual	fbjl	2016-02-03
1444	mutual	fbjl	2016-02-03
1445	mutual	fbjl	2016-02-03
1446	mutual	fbjl	2016-02-03
1447	mutual	fbjl	2016-02-03
1448	mutual	fbjl	2016-02-03
1449	mutual	fbjl	2016-02-03
1450	mutual	fbjl	2016-02-03
1451	mutual	fbjl	2016-02-03
1452	mutual	fbjl	2016-02-03
1451	mutual	fbjl	2016-02-03
1453	mutual	fbjl	2016-02-03
1454	mutual	fbjl	2016-02-03
1455	mutual	fbjl	2016-02-03
1456	mutual	fbjl	2016-02-03
1457	mutual	fbjl	2016-02-03
1458	mutual	fbjl	2016-02-03
1459	mutual	fbjl	2016-02-03
1460	mutual	fbjl	2016-02-03
1461	mutual	fbjl	2016-02-03
1462	mutual	fbjl	2016-02-03
1463	mutual	fbjl	2016-02-03
1464	mutual	fbjl	2016-02-03
1465	mutual	fbjl	2016-02-03
1466	mutual	fbjl	2016-02-03
1467	mutual	fbjl	2016-02-03
1468	mutual	fbjl	2016-02-03
1469	mutual	fbjl	2016-02-03
1470	mutual	fbjl	2016-02-03
1471	mutual	fbjl	2016-02-03
1472	mutual	fbjl	2016-02-03
1473	mutual	fbjl	2016-02-03
1474	mutual	fbjl	2016-02-03
1475	mutual	fbjl	2016-02-03
1476	mutual	fbjl	2016-02-03
1477	mutual	fbjl	2016-02-03
1478	mutual	fbjl	2016-02-03
1479	mutual	fbjl	2016-02-03
19	mutual	fbjl	2016-02-03
1480	mutual	fbjl	2016-02-03
1481	mutual	fbjl	2016-02-03
24	mutual	fbjl	2016-02-03
1482	mutual	fbjl	2016-02-03
1483	mutual	fbjl	2016-02-03
1484	mutual	fbjl	2016-02-03
1485	mutual	fbjl	2016-02-03
25	mutual	fbjl	2016-02-03
26	mutual	fbjl	2016-02-03
1486	mutual	fbjl	2016-02-03
27	mutual	fbjl	2016-02-03
28	mutual	fbjl	2016-02-03
69	mutual	fbjl	2016-02-03
1487	mutual	fbjl	2016-02-03
1488	mutual	fbjl	2016-02-03
1489	mutual	fbjl	2016-02-03
30	mutual	fbjl	2016-02-03
32	mutual	fbjl	2016-02-03
1491	mutual	fbjl	2016-02-03
33	mutual	fbjl	2016-02-03
1492	mutual	fbjl	2016-02-03
26	mutual	fbjl	2016-02-03
27	mutual	fbjl	2016-02-03
28	mutual	fbjl	2016-02-03
261	mutual	fbjl	2016-02-03
4963	mutual	fbjl	2016-02-03
35	mutual	fbjl	2016-02-03
36	mutual	fbjl	2016-02-03
1493	mutual	fbjl	2016-02-03
38	mutual	fbjl	2016-02-03
39	mutual	fbjl	2016-02-03
40	mutual	fbjl	2016-02-03
1494	mutual	fbjl	2016-02-03
1495	mutual	fbjl	2016-02-03
41	mutual	fbjl	2016-02-03
43	mutual	fbjl	2016-02-03
1496	mutual	fbjl	2016-02-03
1497	mutual	fbjl	2016-02-03
1498	mutual	fbjl	2016-02-03
44	mutual	fbjl	2016-02-03
1499	mutual	fbjl	2016-02-03
45	mutual	fbjl	2016-02-03
1500	mutual	fbjl	2016-02-03
1501	mutual	fbjl	2016-02-03
1502	mutual	fbjl	2016-02-03
1503	mutual	fbjl	2016-02-03
47	mutual	fbjl	2016-02-03
49	mutual	fbjl	2016-02-03
48	mutual	fbjl	2016-02-03
50	mutual	fbjl	2016-02-03
51	mutual	fbjl	2016-02-03
52	mutual	fbjl	2016-02-03
53	mutual	fbjl	2016-02-03
54	mutual	fbjl	2016-02-03
55	mutual	fbjl	2016-02-03
56	mutual	fbjl	2016-02-03
57	mutual	fbjl	2016-02-03
58	mutual	fbjl	2016-02-03
59	mutual	fbjl	2016-02-03
1505	mutual	fbjl	2016-02-03
1506	mutual	fbjl	2016-02-03
62	mutual	fbjl	2016-02-03
1507	mutual	fbjl	2016-02-03
63	mutual	fbjl	2016-02-03
64	mutual	fbjl	2016-02-03
1508	mutual	fbjl	2016-02-03
1509	mutual	fbjl	2016-02-03
1510	mutual	fbjl	2016-02-03
66	mutual	fbjl	2016-02-03
67	mutual	fbjl	2016-02-03
68	mutual	fbjl	2016-02-03
5024	mutual	fbjl	2016-02-03
71	mutual	fbjl	2016-02-03
5020	mutual	fbjl	2016-02-03
61	mutual	fbjl	2016-02-03
4959	mutual	fbjl	2016-02-03
1511	mutual	fbjl	2016-02-03
74	mutual	fbjl	2016-02-03
1512	mutual	fbjl	2016-02-03
76	mutual	fbjl	2016-02-03
1513	mutual	fbjl	2016-02-03
1514	mutual	fbjl	2016-02-03
1515	mutual	fbjl	2016-02-03
77	mutual	fbjl	2016-02-03
1516	mutual	fbjl	2016-02-03
78	mutual	fbjl	2016-02-03
80	mutual	fbjl	2016-02-03
79	mutual	fbjl	2016-02-03
1517	mutual	fbjl	2016-02-03
81	mutual	fbjl	2016-02-03
82	mutual	fbjl	2016-02-03
84	mutual	fbjl	2016-02-03
85	mutual	fbjl	2016-02-03
1518	mutual	fbjl	2016-02-03
1516	mutual	fbjl	2016-02-03
1519	mutual	fbjl	2016-02-03
5764	mutual	fbjl	2016-02-03
89	mutual	fbjl	2016-02-03
90	mutual	fbjl	2016-02-03
1533	mutual	fbjl	2016-02-03
1520	mutual	fbjl	2016-02-03
91	mutual	fbjl	2016-02-03
1521	mutual	fbjl	2016-02-03
92	mutual	fbjl	2016-02-03
1522	mutual	fbjl	2016-02-03
1523	mutual	fbjl	2016-02-03
1524	mutual	fbjl	2016-02-03
1525	mutual	fbjl	2016-02-03
93	mutual	fbjl	2016-02-03
98	mutual	fbjl	2016-02-03
5766	mutual	fbjl	2016-02-03
96	mutual	fbjl	2016-02-03
99	mutual	fbjl	2016-02-03
100	mutual	fbjl	2016-02-03
101	mutual	fbjl	2016-02-03
102	mutual	fbjl	2016-02-03
1526	mutual	fbjl	2016-02-03
1527	mutual	fbjl	2016-02-03
5765	mutual	fbjl	2016-02-03
1528	mutual	fbjl	2016-02-03
1467	mutual	fbjl	2016-02-03
1484	mutual	fbjl	2016-02-03
26	mutual	fbjl	2016-02-03
1481	mutual	fbjl	2016-02-04
1485	mutual	fbjl	2016-02-04
1494	mutual	fbjl	2016-02-04
5	mutual	fbjl	2016-02-04
3	mutual	fbjl	2016-02-04
1482	mutual	fbjl	2016-02-04
1518	mutual	fbjl	2016-02-04
5015	mutual	cyclops	2016-02-04
1530	mutual	cyclops	2016-02-04
24	mutual	fbjl	2016-02-04
1483	mutual	fbjl	2016-02-04
16	mutual	fbjl	2016-02-04
1530	mutual	cyclops	2016-02-04
5014	mutual	cyclops	2016-02-04
5015	mutual	cyclops	2016-02-04
5016	mutual	cyclops	2016-02-04
1529	mutual	cyclops	2016-02-04
813	mutual	cyclops	2016-02-04
1531	mutual	cyclops	2016-02-04
5013	mutual	cyclops	2016-02-04
5013	mutual	cyclops	2016-02-04
5017	mutual	cyclops	2016-02-04
814	mutual	cyclops	2016-02-04
5018	mutual	cyclops	2016-02-04
5016	mutual	cyclops	2016-02-04
27	mutual	fbjl	2016-02-04
39	mutual	fbjl	2016-02-04
8	mutual	fbjl	2016-02-04
813	mutual	cyclops	2016-02-04
1455	mutual	fbjl	2016-02-04
1487	mutual	fbjl	2016-02-05
1488	mutual	fbjl	2016-02-05
1495	mutual	fbjl	2016-02-05
100	mutual	fbjl	2016-02-05
1486	mutual	fbjl	2016-02-05
28	mutual	fbjl	2016-02-05
1518	mutual	fbjl	2016-02-05
76	mutual	fbjl	2016-02-05
40	mutual	fbjl	2016-02-05
1489	mutual	fbjl	2016-02-05
5015	mutual	cyclops	2016-02-05
5016	mutual	cyclops	2016-02-05
41	mutual	fbjl	2016-02-05
1513	mutual	fbjl	2016-02-05
43	mutual	fbjl	2016-02-05
7	mutual	fbjl	2016-02-05
813	mutual	cyclops	2016-02-05
44	mutual	fbjl	2016-02-06
1433	mutual	fbjl	2016-02-06
1433	mutual	fbjl	2016-02-06
814	mutual	cyclops	2016-02-06
814	mutual	cyclops	2016-02-06
1433	mutual	fbjl	2016-02-06
1443	mutual	fbjl	2016-02-06
1512	mutual	fbjl	2016-02-07
1433	mutual		2016-02-07
62	mutual	fbjl	2016-02-07
7	mutual	fbjl	2016-02-08
26	mutual	fbjl	2016-02-08
39	mutual	fbjl	2016-02-08
76	mutual	fbjl	2016-02-08
1433	mutual	fbjl	2016-02-08
40	mutual	fbjl	2016-02-09
1467	mutual	fbjl	2016-02-09
1467	mutual	fbjl	2016-02-09
28	mutual	fbjl	2016-02-09
41	mutual	fbjl	2016-02-09
44	mutual	fbjl	2016-02-09
1433	mutual	fbjl	2016-02-09
43	mutual	fbjl	2016-02-10
1427	mutual	fbjl	2016-02-10
7	mutual	fbjl	2016-02-10
5026	mutual	fbjl	2016-02-10
1420	mutual	fbjl	2016-02-11
1433	mutual	fbjl	2016-02-11
11	mutual	fbjl	2016-02-11
5	mutual	fbjl	2016-02-11
10	mutual	fbjl	2016-02-11
1417	mutual	fbjl	2016-02-11
1425	mutual	fbjl	2016-02-11
1418	mutual	fbjl	2016-02-11
1424	mutual	fbjl	2016-02-11
4	mutual	fbjl	2016-02-11
1426	mutual	fbjl	2016-02-11
6	mutual	fbjl	2016-02-11
1468	mutual	fbjl	2016-02-11
16	mutual	fbjl	2016-02-12
4	mutual	fbjl	2016-02-12
1416	mutual	fbjl	2016-02-12
1532	mutual	fbjl	2016-02-12
9	mutual	fbjl	2016-02-12
3	mutual	fbjl	2016-02-12
99	mutual	fbjl	2016-02-12
5018	mutual	cyclops	2016-02-12
814	mutual	cyclops	2016-02-12
5018	mutual	cyclops	2016-02-12
76	mutual	fbjl	2016-02-13
41	mutual	fbjl	2016-02-13
1427	mutual	fbjl	2016-02-13
40	mutual	fbjl	2016-02-13
28	mutual	fbjl	2016-02-13
1433	mutual	fbjl	2016-02-13
62	mutual	fbjl	2016-02-14
26	mutual	fbjl	2016-02-14
1470	mutual	fbjl	2016-02-14
39	mutual	fbjl	2016-02-14
1459	mutual	fbjl	2016-02-14
8	mutual	fbjl	2016-02-15
5026	mutual	fbjl	2016-02-15
5015	mutual	cyclops	2016-02-15
5016	mutual	cyclops	2016-02-15
66	mutual	fbjl	2016-02-16
1531	mutual	cyclops	2016-02-16
71	mutual	fbjl	2016-02-16
1467	mutual	fbjl	2016-02-16
98	mutual	fbjl	2016-02-16
58	mutual	fbjl	2016-02-16
5013	mutual	cyclops	2016-02-16
1453	mutual	fbjl	2016-02-16
64	mutual	fbjl	2016-02-17
5016	mutual	cyclops	2016-02-17
5018	mutual	cyclops	2016-02-17
4959	mutual	fbjl	2016-02-17
16	mutual	fbjl	2016-02-17
5013	mutual	cyclops	2016-02-17
1453	mutual	fbjl	2016-02-17
102	mutual	fbjl	2016-02-18
1433	mutual	fbjl	2016-02-18
99	mutual	fbjl	2016-02-18
1427	mutual	fbjl	2016-02-18
62	mutual	fbjl	2016-02-18
1427	mutual	fbjl	2016-02-18
16	mutual	fbjl	2016-02-18
1420	mutual	fbjl	2016-02-18
1433	mutual	fbjl	2016-02-19
12	mutual	fbjl	2016-02-19
12	mutual	fbjl aND 8=8	2016-02-19
12	mutual	fbjl aND 8=3	2016-02-19
12	mutual	fbjl\taND\t8=8	2016-02-19
12	mutual	fbjl\taND\t8=3	2016-02-19
12	mutual	fbjl/**/aND/**/8=8	2016-02-19
12	mutual	fbjl/**/aND/**/8=3	2016-02-19
12	mutual	fbjl XoR 8=3	2016-02-19
12	mutual	fbjl XoR 8=8	2016-02-19
12	mutual	fbjl\tXoR\t8=3	2016-02-19
12	mutual	fbjl\tXoR\t8=8	2016-02-19
12	mutual	fbjl/**/XoR/**/8=3	2016-02-19
12	mutual	fbjl/**/XoR/**/8=8	2016-02-19
12	mutual	fbjl	2016-02-19
1455	mutual	fbjl	2016-02-19
1467	mutual	fbjl	2016-02-19
1464	mutual	fbjl	2016-02-19
1433	mutual	fbjl	2016-02-19
1492	mutual	fbjl	2016-02-19
9	mutual	fbjl	2016-02-19
1533	mutual	fbjl	2016-02-19
261	mutual	fbjl	2016-02-20
5766	mutual	fbjl	2016-02-20
1531	mutual	cyclops	2016-02-20
71	mutual	fbjl	2016-02-20
66	mutual	fbjl	2016-02-20
1433	mutual	fbjl	2016-02-20
58	mutual	fbjl	2016-02-20
6	mutual	fbjl	2016-02-20
1530	mutual	cyclops	2016-02-20
1425	mutual	fbjl	2016-02-20
64	mutual	fbjl	2016-02-20
5017	mutual	cyclops	2016-02-20
1492	mutual	fbjl	2016-02-21
1427	mutual	fbjl	2016-02-21
1434	mutual	fbjl	2016-02-21
33	mutual	fbjl	2016-02-21
4959	mutual	fbjl	2016-02-21
25	mutual	fbjl	2016-02-21
5016	mutual	cyclops	2016-02-21
5766	mutual	fbjl	2016-02-21
16	mutual	fbjl	2016-02-21
5015	mutual	cyclops	2016-02-21
5014	mutual	cyclops	2016-02-21
62	mutual	fbjl	2016-02-21
1424	mutual	fbjl	2016-02-22
5017	mutual	cyclops	2016-02-22
1530	mutual	cyclops	2016-02-22
1427	mutual	fbjl	2016-02-22
4	mutual	fbjl	2016-02-22
1467	mutual	fbjl	2016-02-22
7	mutual	fbjl	2016-02-22
5015	mutual	cyclops	2016-02-22
1427	mutual	fbjl	2016-02-23
1530	mutual	cyclops	2016-02-23
71	mutual	fbjl	2016-02-24
66	mutual	fbjl	2016-02-24
1531	mutual	cyclops	2016-02-24
5015	mutual	cyclops	2016-02-24
5016	mutual	cyclops	2016-02-24
92	mutual	fbjl	2016-02-24
1427	mutual	fbjl	2016-02-24
45	mutual	fbjl	2016-02-25
58	mutual	fbjl	2016-02-25
814	mutual	cyclops	2016-02-25
41	mutual	fbjl	2016-02-25
5016	mutual	cyclops	2016-02-25
64	mutual	fbjl	2016-02-25
1487	mutual	fbjl	2016-02-25
28	mutual	fbjl	2016-02-26
25	mutual	fbjl	2016-02-26
30	mutual	fbjl	2016-02-26
5	mutual	fbjl	2016-02-26
5	mutual	fbjl	2016-02-26
1529	mutual	cyclops	2016-02-26
5	mutual	fbjl	2016-02-26
16	mutual	fbjl	2016-02-26
1532	mutual	fbjl	2016-02-26
16	mutual	fbjl	2016-02-26
62	mutual	fbjl	2016-02-26
11	mutual	fbjl	2016-02-26
10	mutual	fbjl	2016-02-27
1420	mutual	fbjl	2016-02-27
1464	mutual		2016-02-27
1467	mutual	fbjl	2016-02-27
1433	mutual	fbjl	2016-02-28
98	mutual	fbjl	2016-02-28
18	mutual	fbjl	2016-02-28
59	mutual	fbjl	2016-02-28
5024	mutual	fbjl	2016-02-28
1419	mutual	fbjl	2016-02-28
1427	mutual	fbjl	2016-02-28
1517	mutual	fbjl	2016-02-28
82	mutual	fbjl	2016-02-28
5020	mutual	fbjl	2016-02-28
67	mutual	fbjl	2016-02-28
81	mutual	fbjl	2016-02-29
80	mutual	fbjl	2016-02-29
1433	mutual	fbjl	2016-02-29
78	mutual	fbjl	2016-02-29
79	mutual	fbjl	2016-02-29
41	mutual	fbjl	2016-02-29
30	mutual	fbjl	2016-02-29
3	mutual	fbjl	2016-02-29
1514	mutual	fbjl	2016-02-29
38	mutual	fbjl	2016-02-29
77	mutual	fbjl	2016-02-29
35	mutual	fbjl	2016-02-29
76	mutual	fbjl	2016-02-29
82	mutual	fbjl	2016-02-29
80	mutual	fbjl	2016-02-29
36	mutual	fbjl	2016-02-29
81	mutual	fbjl	2016-02-29
78	mutual	fbjl	2016-02-29
79	mutual	fbjl	2016-02-29
1515	mutual	fbjl	2016-02-29
1516	mutual	fbjl	2016-02-29
1514	mutual	fbjl	2016-02-29
1513	mutual	fbjl	2016-02-29
1493	mutual	fbjl	2016-02-29
1517	mutual	fbjl	2016-02-29
16	mutual	fbjl	2016-03-01
96	mutual	fbjl	2016-03-01
1416	mutual	fbjl	2016-03-01
62	mutual	fbjl	2016-03-01
1515	mutual	fbjl	2016-03-01
1427	mutual	fbjl	2016-03-01
1433	mutual	fbjl	2016-03-01
1467	mutual	fbjl	2016-03-01
98	mutual	fbjl	2016-03-01
16	mutual	fbjl	2016-03-02
16	mutual	fbjl	2016-03-02
1464	mutual	fbjl	2016-03-02
5018	mutual	cyclops	2016-03-02
1531	mutual	cyclops	2016-03-02
1531	mutual	cyclops	2016-03-02
1531	mutual	cyclops	2016-03-02
5015	mutual	cyclops	2016-03-02
32	mutual	fbjl	2016-03-02
1516	mutual	fbjl	2016-03-03
5015	mutual	cyclops	2016-03-03
59	mutual	fbjl	2016-03-03
28	mutual	fbjl	2016-03-03
1530	mutual	cyclops	2016-03-03
1460	mutual	fbjl	2016-03-03
5014	mutual	cyclops	2016-03-03
6	mutual	fbjl	2016-03-03
79	mutual	fbjl	2016-03-04
10	mutual	fbjl	2016-03-04
4	mutual	fbjl	2016-03-04
5	mutual	fbjl	2016-03-04
3	mutual	fbjl	2016-03-04
41	mutual	fbjl	2016-03-04
5015	mutual	cyclops	2016-03-04
5016	mutual	cyclops	2016-03-04
1530	mutual	cyclops	2016-03-04
9	mutual	fbjl	2016-03-04
11	mutual	fbjl	2016-03-04
16	mutual	fbjl	2016-03-04
1455	mutual	fbjl	2016-03-04
16	mutual	fbjl	2016-03-04
98	mutual	fbjl	2016-03-04
8	mutual	fbjl	2016-03-04
35	mutual	fbjl	2016-03-05
1464	mutual	fbjl	2016-03-05
62	mutual	fbjl	2016-03-05
1427	mutual	fbjl	2016-03-05
1426	mutual	fbjl	2016-03-05
1421	mutual	fbjl	2016-03-05
67	mutual	fbjl	2016-03-05
11	mutual	fbjl	2016-03-05
99	mutual	fbjl	2016-03-05
35	mutual	fbjl	2016-03-05
102	mutual	fbjl	2016-03-06
5020	mutual	fbjl	2016-03-06
59	mutual	fbjl	2016-03-06
96	mutual	fbjl	2016-03-06
93	mutual	fbjl	2016-03-06
1522	mutual	fbjl	2016-03-06
49	mutual	fbjl	2016-03-06
51	mutual	fbjl	2016-03-06
27	mutual	fbjl	2016-03-06
26	mutual	fbjl	2016-03-06
47	mutual	fbjl	2016-03-06
50	mutual	fbjl	2016-03-06
48	mutual	fbjl	2016-03-06
45	mutual	fbjl	2016-03-06
55	mutual	fbjl	2016-03-06
54	mutual	fbjl	2016-03-06
53	mutual	fbjl	2016-03-06
52	mutual	fbjl	2016-03-06
33	mutual	fbjl	2016-03-06
56	mutual	fbjl	2016-03-06
261	mutual	fbjl	2016-03-06
1502	mutual	fbjl	2016-03-06
1524	mutual	fbjl	2016-03-06
1492	mutual	fbjl	2016-03-06
1523	mutual	fbjl	2016-03-06
1500	mutual	fbjl	2016-03-06
1525	mutual	fbjl	2016-03-06
1503	mutual	fbjl	2016-03-06
4963	mutual	fbjl	2016-03-06
1501	mutual	fbjl	2016-03-06
63	mutual	fbjl	2016-03-06
67	mutual	fbjl	2016-03-06
64	mutual	fbjl	2016-03-06
58	mutual	fbjl	2016-03-06
66	mutual	fbjl	2016-03-06
68	mutual	fbjl	2016-03-06
61	mutual	fbjl	2016-03-06
71	mutual	fbjl	2016-03-06
71	mutual	fbjl	2016-03-06
5020	mutual	fbjl	2016-03-06
1508	mutual	fbjl	2016-03-06
4959	mutual	fbjl	2016-03-06
1506	mutual	fbjl	2016-03-06
1509	mutual	fbjl	2016-03-06
1505	mutual	fbjl	2016-03-06
5024	mutual	fbjl	2016-03-06
1510	mutual	fbjl	2016-03-06
1507	mutual	fbjl	2016-03-06
1531	mutual	cyclops	2016-03-06
813	mutual	cyclops	2016-03-06
1529	mutual	cyclops	2016-03-06
5015	mutual	cyclops	2016-03-06
5016	mutual	cyclops	2016-03-06
74	mutual	fbjl	2016-03-06
1511	mutual	fbjl	2016-03-06
81	mutual	fbjl	2016-03-06
9	mutual	fbjl	2016-03-06
78	mutual	fbjl	2016-03-06
80	mutual	fbjl	2016-03-06
16	mutual	fbjl	2016-03-06
98	mutual	fbjl	2016-03-07
62	mutual	fbjl	2016-03-07
25	mutual	fbjl	2016-03-07
79	mutual	fbjl	2016-03-08
16	mutual	fbjl	2016-03-08
1433	mutual	fbjl	2016-03-08
3	mutual	fbjl	2016-03-08
4	mutual	fbjl	2016-03-08
10	mutual	fbjl	2016-03-08
11	mutual	fbjl	2016-03-08
16	mutual	fbjl	2016-03-08
16	mutual	fbjl	2016-03-08
41	mutual	fbjl	2016-03-08
99	mutual	fbjl	2016-03-08
16	mutual	fbjl	2016-03-08
16	mutual	fbjl	2016-03-08
813	mutual	cyclops	2016-03-08
1532	mutual	fbjl	2016-03-09
16	mutual	fbjl	2016-03-09
12	mutual	fbjl	2016-03-09
813	mutual	cyclops	2016-03-09
80	mutual	fbjl	2016-03-09
1446	mutual	fbjl	2016-03-09
16	mutual	fbjl	2016-03-09
1433	mutual	fbjl	2016-03-09
4	mutual	fbjl	2016-03-09
10	mutual	fbjl	2016-03-09
1444	mutual	fbjl	2016-03-09
1464	mutual	fbjl	2016-03-10
81	mutual	fbjl	2016-03-10
1465	mutual	fbjl	2016-03-10
78	mutual	fbjl	2016-03-10
5018	mutual	cyclops	2016-03-10
5020	mutual	fbjl	2016-03-10
1433	mutual	fbjl	2016-03-10
1462	mutual	fbjl	2016-03-10
99	mutual	fbjl	2016-03-11
1457	mutual	fbjl	2016-03-11
32	mutual	fbjl	2016-03-11
1418	mutual	fbjl	2016-03-11
5026	mutual	fbjl	2016-03-11
16	mutual	fbjl	2016-03-11
1510	mutual	fbjl	2016-03-11
41	mutual	fbjl	2016-03-11
16	mutual	fbjl	2016-03-11
16	mutual	fbjl	2016-03-11
11	mutual	fbjl	2016-03-12
1464	mutual	fbjl	2016-03-12
89	mutual	fbjl	2016-03-12
1427	mutual	fbjl	2016-03-12
1427	mutual	fbjl	2016-03-12
16	mutual	fbjl	2016-03-12
62	mutual	fbjl	2016-03-12
79	mutual	fbjl	2016-03-12
67	mutual	fbjl	2016-03-12
39	mutual	fbjl	2016-03-12
1467	mutual	fbjl	2016-03-13
59	mutual	fbjl	2016-03-13
39	mutual	fbjl	2016-03-13
5018	mutual	cyclops	2016-03-13
12	mutual	fbjl	2016-03-14
1423	mutual	fbjl	2016-03-15
16	mutual	fbjl	2016-03-15
62	mutual	fbjl	2016-03-15
1444	mutual	fbjl	2016-03-15
28	mutual	fbjl	2016-03-15
41	mutual	fbjl	2016-03-16
44	mutual	fbjl	2016-03-16
32	mutual	fbjl	2016-03-16
30	mutual	fbjl	2016-03-16
43	mutual	fbjl	2016-03-16
5766	mutual	fbjl	2016-03-17
59	mutual	fbjl	2016-03-17
5018	mutual	cyclops	2016-03-17
30	mutual	fbjl	2016-03-18
1427	mutual	fbjl	2016-03-18
1423	mutual	fbjl	2016-03-18
1427	mutual	fbjl	2016-03-18
81	mutual	fbjl	2016-03-18
76	mutual	fbjl	2016-03-18
30	mutual	fbjl	2016-03-18
30	mutual	fbjl	2016-03-19
30	mutual	fbjl	2016-03-19
41	mutual	fbjl	2016-03-19
28	mutual	fbjl	2016-03-19
1433	mutual	fbjl	2016-03-21
10	mutual	fbjl	2016-03-21
1423	mutual	fbjl	2016-03-21
1529	mutual	cyclops	2016-03-21
16	mutual	fbjl	2016-03-21
1510	mutual	fbjl	2016-03-22
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5015	mutual	cyclops	2016-03-23
5016	mutual	cyclops	2016-03-23
1530	mutual	cyclops	2016-03-23
16	mutual	fbjl	2016-03-23
10	mutual	fbjl	2016-03-23
1433	mutual	fbjl	2016-03-23
28	mutual	fbjl	2016-03-23
4	mutual	fbjl	2016-03-24
1427	mutual	fbjl	2016-03-24
30	mutual	fbjl	2016-03-24
1533	mutual	fbjl	2016-03-24
16	mutual	fbjl	2016-03-24
1420	mutual	fbjl	2016-03-24
3	mutual	fbjl	2016-03-25
12	mutual	fbjl	2016-03-25
39	mutual	fbjl	2016-03-25
1529	mutual	cyclops	2016-03-26
1460	mutual	fbjl	2016-03-26
1440	mutual	fbjl	2016-03-26
16	mutual	fbjl	2016-03-26
16	mutual	fbjl	2016-03-27
1419	mutual	fbjl	2016-03-27
30	mutual	fbjl	2016-03-27
44	mutual	fbjl	2016-03-27
1423	mutual	fbjl	2016-03-27
4	mutual	fbjl	2016-03-27
10	mutual	fbjl	2016-03-28
10	mutual	fbjl	2016-03-28
1433	mutual	fbjl	2016-03-28
7	mutual	fbjl	2016-03-28
9	mutual	fbjl	2016-03-28
30	mutual	fbjl	2016-03-28
8	mutual	fbjl	2016-03-28
6	mutual	fbjl	2016-03-28
1418	mutual	fbjl	2016-03-28
43	mutual	fbjl	2016-03-29
16	mutual	fbjl	2016-03-29
62	mutual	fbjl	2016-03-29
62	mutual	fbjl	2016-03-29
62	mutual	fbjl	2016-03-29
8	mutual	fbjl	2016-03-29
1424	mutual	fbjl	2016-03-29
7	mutual	fbjl	2016-03-29
5	mutual	fbjl	2016-03-29
1423	mutual	fbjl	2016-03-30
41	mutual	fbjl	2016-03-30
69	mutual	fbjl	2016-03-30
32	mutual	fbjl	2016-03-30
30	mutual	fbjl	2016-03-30
1433	mutual	fbjl	2016-03-30
16	mutual	fbjl	2016-03-31
5	mutual	fbjl	2016-03-31
16	mutual	fbjl	2016-04-01
1423	mutual	fbjl	2016-04-01
16	mutual	fbjl	2016-04-01
24	mutual	fbjl	2016-04-02
11	mutual	fbjl	2016-04-02
44	mutual	fbjl	2016-04-02
3	mutual	fbjl	2016-04-02
1427	mutual	fbjl	2016-04-02
26	mutual	fbjl	2016-04-02
1433	mutual	fbjl	2016-04-03
10	mutual	fbjl	2016-04-03
41	mutual	fbjl	2016-04-03
1426	mutual	fbjl	2016-04-03
28	mutual	fbjl	2016-04-03
1427	mutual	fbjl	2016-04-03
1433	mutual	fbjl	2016-04-03
16	mutual	fbjl	2016-04-03
1423	mutual	fbjl	2016-04-03
1423	mutual	fbjl	2016-04-04
1423	mutual	fbjl	2016-04-04
10	mutual	fbjl	2016-04-05
1433	mutual	fbjl	2016-04-05
1455	mutual	fbjl	2016-04-05
16	mutual	fbjl	2016-04-06
1423	mutual	fbjl	2016-04-06
1433	mutual	fbjl	2016-04-06
8	mutual	fbjl	2016-04-06
1416	mutual	fbjl	2016-04-06
35	mutual	fbjl	2016-04-06
41	mutual	fbjl	2016-04-06
28	mutual	fbjl	2016-04-07
4	mutual	fbjl	2016-04-07
1423	mutual	fbjl	2016-04-07
7	mutual	fbjl	2016-04-07
5026	mutual	fbjl	2016-04-07
5014	mutual	cyclops	2016-04-07
16	mutual	fbjl	2016-04-07
16	mutual	fbjl	2016-04-08
16	mutual	fbjl	2016-04-08
1433	mutual	fbjl	2016-04-08
10	mutual	fbjl	2016-04-08
1424	mutual	fbjl	2016-04-08
3	mutual	fbjl	2016-04-08
36	mutual	fbjl	2016-04-08
35	mutual	fbjl	2016-04-08
1477	mutual	fbjl	2016-04-08
9	mutual	fbjl	2016-04-09
5016	mutual	cyclops	2016-04-09
1425	mutual	fbjl	2016-04-09
10	mutual	fbjl	2016-04-09
64	mutual	fbjl	2016-04-09
4959	mutual	fbjl	2016-04-09
58	mutual	fbjl	2016-04-09
1510	mutual	fbjl	2016-04-09
1420	mutual	fbjl	2016-04-10
10	mutual	fbjl	2016-04-10
1433	mutual	fbjl	2016-04-10
41	mutual	fbjl	2016-04-11
30	mutual	fbjl	2016-04-11
28	mutual	fbjl	2016-04-11
1423	mutual	fbjl	2016-04-11
30	mutual	fbjl	2016-04-11
30	mutual	fbjl	2016-04-11
93	mutual	fbjl	2016-04-11
16	mutual	fbjl	2016-04-12
5018	mutual	cyclops	2016-04-12
64	mutual	fbjl	2016-04-13
58	mutual	fbjl	2016-04-13
4	mutual	fbjl	2016-04-13
9	mutual	fbjl	2016-04-13
5018	mutual	cyclops	2016-04-13
5018	mutual	cyclops	2016-04-13
9	mutual	fbjl	2016-04-13
5	mutual	fbjl	2016-04-13
4959	mutual	fbjl	2016-04-13
5018	mutual	cyclops	2016-04-13
5018	mutual	cyclops	2016-04-13
5018	mutual	cyclops	2016-04-13
10	mutual	fbjl	2016-04-13
1433	mutual	fbjl	2016-04-13
6	mutual	fbjl	2016-04-13
28	mutual	fbjl	2016-04-14
1492	mutual	fbjl	2016-04-14
1456	mutual	fbjl	2016-04-14
1526	mutual	fbjl	2016-04-14
5014	mutual	cyclops	2016-04-14
5015	mutual	cyclops	2016-04-14
5016	mutual	cyclops	2016-04-14
813	mutual	cyclops	2016-04-14
1531	mutual	cyclops	2016-04-14
5013	mutual	cyclops	2016-04-14
5790	mutual	fbjl	2016-04-14
5791	mutual	fbjl	2016-04-14
1419	mutual	fbjl	2016-04-15
1421	mutual	fbjl	2016-04-15
5790	mutual	fbjl	2016-04-15
5791	mutual	fbjl	2016-04-15
1466	mutual	fbjl	2016-04-15
5016	mutual	cyclops	2016-04-15
1433	mutual	fbjl	2016-04-16
10	mutual	fbjl	2016-04-16
1418	mutual	fbjl	2016-04-16
1532	mutual	fbjl	2016-04-16
11	mutual	fbjl	2016-04-16
16	mutual	fbjl	2016-04-17
1423	mutual	fbjl	2016-04-17
41	mutual	fbjl	2016-04-17
30	mutual	fbjl	2016-04-17
16	mutual	fbjl	2016-04-18
1423	mutual	fbjl	2016-04-18
28	mutual	fbjl	2016-04-19
5013	mutual	cyclops	2016-04-19
1427	mutual	fbjl	2016-04-19
12	mutual	fbjl	2016-04-19
5013	mutual	cyclops	2016-04-19
7	mutual	fbjl	2016-04-20
1427	mutual	fbjl	2016-04-20
11	mutual	fbjl	2016-04-20
5776	mutual	fbjl	2016-04-20
91	mutual	fbjl	2016-04-20
101	mutual	fbjl	2016-04-20
4959	mutual	fbjl	2016-04-21
1532	mutual	fbjl	2016-04-21
90	mutual	fbjl	2016-04-21
64	mutual	fbjl	2016-04-21
4	mutual	fbjl	2016-04-21
5018	mutual	cyclops	2016-04-21
5016	mutual	cyclops	2016-04-21
85	mutual	fbjl	2016-04-21
1520	mutual	fbjl	2016-04-21
6	mutual	fbjl	2016-04-21
1521	mutual	fbjl	2016-04-21
58	mutual	fbjl	2016-04-21
1518	mutual	fbjl	2016-04-21
4	mutual	fbjl	2016-04-21
43	mutual	fbjl	2016-04-21
62	mutual	fbjl	2016-04-21
3	mutual	fbjl	2016-04-21
71	mutual	fbjl	2016-04-21
1519	mutual	fbjl	2016-04-22
7	mutual	fbjl	2016-04-22
3	mutual	fbjl	2016-04-22
66	mutual	fbjl	2016-04-22
5	mutual	fbjl	2016-04-22
5764	mutual	fbjl	2016-04-22
1416	mutual	fbjl	2016-04-22
1531	mutual	cyclops	2016-04-22
8	mutual	fbjl	2016-04-22
1424	mutual	fbjl	2016-04-22
26	mutual	fbjl	2016-04-22
1425	mutual	fbjl	2016-04-22
84	mutual	fbjl	2016-04-22
89	mutual	fbjl	2016-04-22
5790	mutual	fbjl	2016-04-22
5013	mutual	cyclops	2016-04-22
5785	mutual	fbjl	2016-04-22
5791	mutual	fbjl	2016-04-22
41	mutual	fbjl	2016-04-23
1530	mutual	cyclops	2016-04-23
5017	mutual	cyclops	2016-04-24
1420	mutual	fbjl	2016-04-24
28	mutual	fbjl	2016-04-24
1433	mutual	fbjl	2016-04-25
96	mutual	fbjl	2016-04-25
1533	mutual	fbjl	2016-04-25
1530	mutual	cyclops	2016-04-25
5776	mutual	fbjl	2016-04-25
5017	mutual	cyclops	2016-04-25
1530	mutual	cyclops	2016-04-25
5014	mutual	cyclops	2016-04-25
5015	mutual	cyclops	2016-04-25
5016	mutual	cyclops	2016-04-25
5016	mutual	cyclops	2016-04-25
1529	mutual	cyclops	2016-04-25
813	mutual	cyclops	2016-04-25
1531	mutual	cyclops	2016-04-25
1531	mutual	cyclops	2016-04-25
5013	mutual	cyclops	2016-04-25
5017	mutual	cyclops	2016-04-25
814	mutual	cyclops	2016-04-25
5018	mutual	cyclops	2016-04-25
5016	mutual	cyclops	2016-04-25
58	mutual	fbjl	2016-04-25
5015	mutual	cyclops	2016-04-25
16	mutual	fbjl	2016-04-25
1533	mutual	fbjl	2016-04-26
5	mutual	fbjl	2016-04-26
30	mutual	fbjl	2016-04-26
30	mutual	fbjl	2016-04-26
3	mutual	fbjl	2016-04-26
5015	mutual	cyclops	2016-04-26
5015	mutual	cyclops	2016-04-26
5015	mutual	cyclops	2016-04-26
5016	mutual	cyclops	2016-04-26
5015	mutual	cyclops	2016-04-26
16	mutual	fbjl	2016-04-26
30	mutual	fbjl	2016-04-27
16	mutual	fbjl	2016-04-28
1505	mutual	fbjl	2016-04-28
79	mutual	fbjl	2016-04-28
28	mutual	fbjl	2016-04-29
1471	mutual	fbjl	2016-04-29
1419	mutual	fbjl	2016-04-29
1529	mutual	cyclops	2016-04-30
98	mutual	fbjl	2016-04-30
7	mutual	fbjl	2016-05-01
1433	mutual	fbjl	2016-05-01
11	mutual	fbjl	2016-05-01
30	mutual	fbjl	2016-05-01
1427	mutual	fbjl	2016-05-02
5776	mutual	fbjl	2016-05-02
5018	mutual	cyclops	2016-05-03
1492	mutual	fbjl	2016-05-03
99	mutual	fbjl	2016-05-03
1424	mutual	fbjl	2016-05-03
10	mutual	fbjl	2016-05-03
80	mutual	fbjl	2016-05-03
5790	mutual	fbjl	2016-05-03
30	mutual	fbjl	2016-05-03
1433	mutual	fbjl	2016-05-04
11	mutual	fbjl	2016-05-05
79	mutual	fbjl	2016-05-05
78	mutual	fbjl	2016-05-05
77	mutual	fbjl	2016-05-05
1455	mutual	fbjl	2016-05-05
1420	mutual	fbjl	2016-05-05
1425	mutual	fbjl	2016-05-05
1416	mutual	fbjl	2016-05-06
1531	mutual	cyclops	2016-05-06
5790	mutual	fbjl	2016-05-06
5791	mutual	fbjl	2016-05-06
1460	mutual	fbjl	2016-05-06
5018	mutual	cyclops	2016-05-06
90	mutual	fbjl	2016-05-06
3	mutual	fbjl	2016-05-07
10	mutual	fbjl	2016-05-07
81	mutual	fbjl	2016-05-07
80	mutual	fbjl	2016-05-07
82	mutual	fbjl	2016-05-07
39	mutual	fbjl	2016-05-07
5790	mutual	fbjl	2016-05-07
8	mutual	fbjl	2016-05-07
5	mutual	fbjl	2016-05-07
1419	mutual	fbjl	2016-05-08
8	mutual	fbjl	2016-05-08
66	mutual	fbjl	2016-05-08
5026	mutual	fbjl	2016-05-08
1530	mutual	cyclops	2016-05-08
11	mutual	fbjl	2016-05-08
78	mutual	fbjl	2016-05-08
12	mutual	fbjl	2016-05-09
4	mutual	fbjl	2016-05-09
28	mutual	fbjl	2016-05-09
4	mutual	fbjl	2016-05-09
1421	mutual	fbjl	2016-05-09
6	mutual	fbjl	2016-05-09
3	mutual	fbjl	2016-05-09
16	mutual	fbjl	2016-05-09
71	mutual	fbjl	2016-05-09
1530	mutual	cyclops	2016-05-09
1454	mutual	fbjl	2016-05-09
1511	mutual	fbjl	2016-05-10
1531	mutual	cyclops	2016-05-10
89	mutual	fbjl	2016-05-10
74	mutual	fbjl	2016-05-10
16	mutual	fbjl	2016-05-10
813	mutual	cyclops	2016-05-10
35	mutual	fbjl	2016-05-10
7	mutual	fbjl	2016-05-10
5016	mutual	cyclops	2016-05-10
5015	mutual	cyclops	2016-05-10
1514	mutual	fbjl	2016-05-10
1530	mutual	cyclops	2016-05-10
5790	mutual	fbjl	2016-05-10
1492	mutual	fbjl	2016-05-10
77	mutual	fbjl	2016-05-10
5018	mutual	cyclops	2016-05-10
5782	mutual	fbjl	2016-05-11
90	mutual	fbjl	2016-05-11
10	mutual	fbjl	2016-05-11
5018	mutual	cyclops	2016-05-11
12	mutual	fbjl	2016-05-11
80	mutual	fbjl	2016-05-11
1421	mutual	fbjl	2016-05-11
81	mutual	fbjl	2016-05-11
813	mutual	cyclops	2016-05-11
30	mutual	fbjl	2016-05-11
5015	mutual	cyclops	2016-05-11
5780	mutual	fbjl	2016-05-11
5790	mutual	fbjl	2016-05-11
5791	mutual	fbjl	2016-05-11
1421	mutual	fbjl	2016-05-11
48	mutual	fbjl	2016-05-11
1434	mutual	fbjl	2016-05-11
8	mutual	fbjl	2016-05-11
35	mutual	fbjl	2016-05-11
5015	mutual	cyclops	2016-05-11
5015	mutual	cyclops	2016-05-11
1530	mutual	cyclops	2016-05-11
1452	mutual	fbjl	2016-05-11
1483	mutual	fbjl	2016-05-11
1533	mutual	fbjl	2016-05-11
5014	mutual	cyclops	2016-05-11
5014	mutual	cyclops	2016-05-11
5790	mutual	fbjl	2016-05-11
84	mutual	fbjl	2016-05-11
1419	mutual	fbjl	2016-05-11
1433	mutual	fbjl	2016-05-11
261	mutual	fbjl	2016-05-11
5026	mutual	fbjl	2016-05-11
7	mutual	fbjl	2016-05-12
1423	mutual	fbjl	2016-05-12
66	mutual	fbjl	2016-05-12
1530	mutual	cyclops	2016-05-12
7	mutual	fbjl	2016-05-12
8	mutual	fbjl	2016-05-12
5018	mutual	cyclops	2016-05-12
5	mutual	fbjl	2016-05-12
26	mutual	fbjl	2016-05-12
28	mutual	fbjl	2016-05-12
9	mutual	fbjl	2016-05-12
5766	mutual	fbjl	2016-05-13
28	mutual	fbjl	2016-05-13
16	mutual	fbjl	2016-05-13
5018	mutual	cyclops	2016-05-13
5790	mutual	fbjl	2016-05-13
5790	mutual	fbjl	2016-05-13
12	mutual	fbjl	2016-05-13
5017	mutual	cyclops	2016-05-13
1491	mutual	fbjl	2016-05-13
5018	mutual	cyclops	2016-05-13
1419	mutual	fbjl	2016-05-13
11	mutual	fbjl	2016-05-14
5782	mutual	fbjl	2016-05-14
16	mutual	fbjl	2016-05-14
81	mutual	fbjl	2016-05-15
10	mutual	fbjl	2016-05-15
78	mutual	fbjl	2016-05-15
1532	mutual	fbjl	2016-05-15
1429	mutual	fbjl	2016-05-15
28	mutual	fbjl	2016-05-15
28	mutual	fbjl aND 8=8	2016-05-15
28	mutual	fbjl aND 8=3	2016-05-15
28	mutual	fbjl\taND\t8=8	2016-05-15
28	mutual	fbjl\taND\t8=3	2016-05-15
28	mutual	fbjl/**/aND/**/8=8	2016-05-15
28	mutual	fbjl/**/aND/**/8=3	2016-05-15
28	mutual	fbjl	2016-05-15
89	mutual	fbjl	2016-05-15
4963	mutual	fbjl	2016-05-15
71	mutual	fbjl	2016-05-15
1498	mutual	fbjl	2016-05-15
1530	mutual	cyclops	2016-05-15
9	mutual	fbjl	2016-05-15
3	mutual	fbjl	2016-05-15
8	mutual	fbjl	2016-05-15
6	mutual	fbjl	2016-05-15
7	mutual	fbjl	2016-05-15
5	mutual	fbjl	2016-05-15
1499	mutual	fbjl	2016-05-15
1496	mutual	fbjl	2016-05-15
261	mutual	fbjl	2016-05-16
1532	mutual	fbjl	2016-05-16
4	mutual	fbjl	2016-05-16
10	mutual	fbjl	2016-05-16
5780	mutual	fbjl	2016-05-16
1416	mutual	fbjl	2016-05-16
1418	mutual	fbjl	2016-05-16
1417	mutual	fbjl	2016-05-16
5776	mutual	fbjl	2016-05-16
44	mutual	fbjl	2016-05-16
1427	mutual	fbjl	2016-05-16
1497	mutual	fbjl	2016-05-16
30	mutual	fbjl	2016-05-16
1423	mutual	fbjl	2016-05-17
16	mutual	fbjl	2016-05-17
28	mutual	fbjl	2016-05-17
1416	mutual	fbjl	2016-05-17
5015	mutual	cyclops	2016-05-17
5791	mutual	fbjl	2016-05-17
5790	mutual	fbjl	2016-05-17
1435	mutual	fbjl	2016-05-17
1433	mutual	fbjl	2016-05-18
5791	mutual	fbjl	2016-05-18
5790	mutual	fbjl	2016-05-18
4	mutual	fbjl	2016-05-18
1425	mutual	fbjl	2016-05-18
40	mutual	fbjl	2016-05-19
1495	mutual	fbjl	2016-05-19
33	mutual	fbjl	2016-05-19
1519	mutual	fbjl	2016-05-19
84	mutual	fbjl	2016-05-19
91	mutual	fbjl	2016-05-19
85	mutual	fbjl	2016-05-19
92	mutual	fbjl	2016-05-19
90	mutual	fbjl	2016-05-19
1520	mutual	fbjl	2016-05-19
5764	mutual	fbjl	2016-05-19
1533	mutual	fbjl	2016-05-19
1512	mutual	fbjl	2016-05-19
1521	mutual	fbjl	2016-05-19
1518	mutual	fbjl	2016-05-19
5017	mutual	cyclops	2016-05-19
1530	mutual	cyclops	2016-05-19
1492	mutual	fbjl	2016-05-19
1433	mutual	fbjl	2016-05-19
1424	mutual	fbjl	2016-05-19
1531	mutual	cyclops	2016-05-20
84	mutual	fbjl	2016-05-20
3	mutual	fbjl	2016-05-20
261	mutual	fbjl	2016-05-20
1506	mutual	fbjl	2016-05-20
26	mutual	fbjl	2016-05-20
1507	mutual	fbjl	2016-05-20
92	mutual	fbjl	2016-05-20
5026	mutual	fbjl	2016-05-20
5790	mutual	fbjl	2016-05-20
5791	mutual	fbjl	2016-05-20
59	mutual	fbjl	2016-05-20
96	mutual	fbjl	2016-05-20
44	mutual	fbjl	2016-05-20
79	mutual	fbjl	2016-05-20
57	mutual	fbjl	2016-05-20
1510	mutual	fbjl	2016-05-20
41	mutual	fbjl	2016-05-20
1427	mutual	fbjl	2016-05-20
28	mutual	fbjl	2016-05-20
1467	mutual	fbjl	2016-05-21
1467	mutual	fbjl	2016-05-21
1467	mutual	fbjl	2016-05-21
1530	mutual	cyclops	2016-05-21
16	mutual	fbjl	2016-05-21
1433	mutual	fbjl	2016-05-22
6	mutual	fbjl	2016-05-22
1419	mutual	fbjl	2016-05-22
1418	mutual	fbjl	2016-05-22
1421	mutual	fbjl	2016-05-22
7	mutual	fbjl	2016-05-22
8	mutual	fbjl	2016-05-22
5013	mutual	cyclops	2016-05-22
5013	mutual	cyclops	2016-05-22
8	mutual	fbjl	2016-05-23
76	mutual	fbjl	2016-05-23
1426	mutual	fbjl	2016-05-23
1508	mutual	fbjl	2016-05-23
1428	mutual	fbjl	2016-05-23
1509	mutual	fbjl	2016-05-23
1437	mutual	fbjl	2016-05-23
17	mutual	fbjl	2016-05-23
5020	mutual	fbjl	2016-05-23
1433	mutual	fbjl	2016-05-23
30	mutual	fbjl	2016-05-23
68	mutual	fbjl	2016-05-23
1513	mutual	fbjl	2016-05-23
68	mutual	fbjl	2016-05-23
59	mutual	fbjl	2016-05-24
1436	mutual	fbjl	2016-05-24
1435	mutual	fbjl	2016-05-24
1425	mutual	fbjl	2016-05-24
1421	mutual	fbjl	2016-05-24
7	mutual	fbjl	2016-05-24
8	mutual	fbjl	2016-05-24
6	mutual	fbjl	2016-05-24
1419	mutual	fbjl	2016-05-24
1438	mutual	fbjl	2016-05-24
1531	mutual	cyclops	2016-05-24
1418	mutual	fbjl	2016-05-24
7	mutual	fbjl	2016-05-25
28	mutual	fbjl	2016-05-25
1530	mutual	cyclops	2016-05-25
16	mutual	fbjl	2016-05-25
1532	mutual	fbjl	2016-05-25
5026	mutual	fbjl	2016-05-26
90	mutual	fbjl	2016-05-26
4	mutual	fbjl	2016-05-26
1427	mutual	fbjl	2016-05-26
1530	mutual	cyclops	2016-05-26
1530	mutual	cyclops	2016-05-26
5017	mutual	cyclops	2016-05-27
16	mutual	fbjl	2016-05-27
1508	mutual	fbjl	2016-05-27
1433	mutual	fbjl	2016-05-27
68	mutual	fbjl	2016-05-27
76	mutual	fbjl	2016-05-27
5	mutual	fbjl	2016-05-27
5017	mutual	cyclops	2016-05-27
5790	mutual	fbjl	2016-05-27
5790	mutual	fbjl	2016-05-27
1530	mutual	cyclops	2016-05-27
16	mutual	fbjl	2016-05-27
1443	mutual	fbjl	2016-05-28
1419	mutual	fbjl	2016-05-28
1421	mutual	fbjl	2016-05-28
7	mutual	fbjl	2016-05-28
8	mutual	fbjl	2016-05-28
1432	mutual	fbjl	2016-05-28
1441	mutual	fbjl	2016-05-28
1420	mutual	fbjl	2016-05-28
5015	mutual	cyclops	2016-05-28
1421	mutual	fbjl	2016-05-28
44	mutual	fbjl	2016-05-28
36	mutual	fbjl	2016-05-28
1434	mutual	fbjl	2016-05-28
1427	mutual	fbjl	2016-05-28
1533	mutual	fbjl	2016-05-28
59	mutual	fbjl	2016-05-28
10	mutual	fbjl	2016-05-29
1419	mutual	fbjl	2016-05-29
5015	mutual	cyclops	2016-05-29
1425	mutual	fbjl	2016-05-29
25	mutual	fbjl	2016-05-29
30	mutual	fbjl	2016-05-29
9	mutual	fbjl	2016-05-29
28	mutual	fbjl	2016-05-29
1533	mutual	fbjl	2016-05-29
11	mutual	fbjl	2016-05-29
12	mutual	fbjl	2016-05-29
1419	mutual	fbjl	2016-05-30
1421	mutual	fbjl	2016-05-30
7	mutual	fbjl	2016-05-30
8	mutual	fbjl	2016-05-30
1419	mutual	fbjl	2016-05-30
1427	mutual	fbjl	2016-05-30
16	mutual	fbjl	2016-05-30
6	mutual	fbjl	2016-05-30
67	mutual	fbjl	2016-05-30
102	mutual	fbjl	2016-05-31
5020	mutual	fbjl	2016-05-31
85	mutual	fbjl	2016-05-31
76	mutual	fbjl	2016-05-31
63	mutual	fbjl	2016-05-31
61	mutual	fbjl	2016-05-31
1423	mutual	fbjl	2016-05-31
1427	mutual	fbjl	2016-05-31
18	mutual	fbjl	2016-05-31
1439	mutual	fbjl	2016-05-31
1531	mutual	cyclops	2016-06-01
1434	mutual	fbjl	2016-06-01
1530	mutual	cyclops	2016-06-01
8	mutual	fbjl	2016-06-01
1440	mutual	fbjl	2016-06-01
5780	mutual	fbjl	2016-06-01
1533	mutual	fbjl	2016-06-01
59	mutual	fbjl	2016-06-01
1528	mutual	fbjl	2016-06-01
44	mutual	fbjl	2016-06-01
43	mutual	fbjl	2016-06-01
1499	mutual	fbjl	2016-06-01
1498	mutual	fbjl	2016-06-01
5765	mutual	fbjl	2016-06-01
1496	mutual	fbjl	2016-06-01
1497	mutual	fbjl	2016-06-01
9	mutual	fbjl	2016-06-01
4	mutual	fbjl	2016-06-01
1433	mutual	fbjl	2016-06-01
10	mutual	fbjl	2016-06-02
5026	mutual	fbjl	2016-06-02
1417	mutual	fbjl	2016-06-02
6	mutual	fbjl	2016-06-02
3	mutual	fbjl	2016-06-02
1495	mutual	fbjl	2016-06-02
4	mutual	fbjl	2016-06-02
40	mutual	fbjl	2016-06-02
28	mutual	fbjl	2016-06-02
1427	mutual	fbjl	2016-06-02
5026	mutual	fbjl	2016-06-02
1530	mutual	cyclops	2016-06-02
7	mutual	fbjl	2016-06-03
8	mutual	fbjl	2016-06-03
1424	mutual	fbjl	2016-06-03
1416	mutual	fbjl	2016-06-03
1431	mutual	fbjl	2016-06-03
16	mutual	fbjl	2016-06-04
7	mutual	fbjl	2016-06-05
8	mutual	fbjl	2016-06-05
10	mutual	fbjl	2016-06-05
10	mutual	fbjl aND 8=8	2016-06-05
10	mutual	fbjl aND 8=3	2016-06-05
10	mutual	fbjl\taND\t8=8	2016-06-05
10	mutual	fbjl\taND\t8=3	2016-06-05
10	mutual	fbjl/**/aND/**/8=8	2016-06-05
10	mutual	fbjl/**/aND/**/8=3	2016-06-05
10	mutual	fbjl	2016-06-05
16	mutual	fbjl	2016-06-05
30	mutual	fbjl	2016-06-05
1424	mutual	fbjl	2016-06-06
1531	mutual	cyclops	2016-06-06
1421	mutual	fbjl	2016-06-06
9	mutual	fbjl	2016-06-06
1532	mutual	fbjl	2016-06-06
7	mutual	fbjl	2016-06-06
16	mutual	fbjl	2016-06-06
30	mutual	fbjl	2016-06-06
5018	mutual	cyclops	2016-06-07
5018	mutual	cyclops	2016-06-07
5	mutual	fbjl	2016-06-07
7	mutual	fbjl	2016-06-08
8	mutual	fbjl	2016-06-08
4	mutual	fbjl	2016-06-08
1533	mutual	fbjl	2016-06-08
1533	mutual	fbjl	2016-06-08
5766	mutual	fbjl	2016-06-08
30	mutual	fbjl	2016-06-08
10	mutual	fbjl	2016-06-08
1530	mutual	cyclops	2016-06-09
4	mutual	fbjl	2016-06-10
814	mutual	cyclops	2016-06-10
1433	mutual	fbjl	2016-06-10
1427	mutual	fbjl	2016-06-11
814	mutual	cyclops	2016-06-11
1532	mutual	fbjl	2016-06-11
8	mutual	fbjl	2016-06-11
30	mutual	fbjl	2016-06-12
6	mutual	fbjl	2016-06-12
39	mutual	fbjl	2016-06-12
1425	mutual	fbjl	2016-06-12
11	mutual	fbjl	2016-06-12
8	mutual	fbjl	2016-06-12
3	mutual	fbjl	2016-06-13
1427	mutual	fbjl	2016-06-13
12	mutual	fbjl	2016-06-13
1419	mutual	fbjl	2016-06-13
5015	mutual	cyclops	2016-06-13
7	mutual	fbjl	2016-06-13
1423	mutual	fbjl	2016-06-13
5016	mutual	cyclops	2016-06-14
5016	mutual	cyclops	2016-06-14
35	mutual	fbjl	2016-06-14
30	mutual	fbjl	2016-06-14
813	mutual	cyclops	2016-06-14
1427	mutual	fbjl	2016-06-14
35	mutual	fbjl	2016-06-14
814	mutual	cyclops	2016-06-15
1532	mutual	fbjl	2016-06-15
5790	mutual	fbjl	2016-06-15
5782	mutual	fbjl	2016-06-15
1533	mutual	fbjl	2016-06-15
1424	mutual	fbjl	2016-06-15
71	mutual	fbjl	2016-06-15
57	mutual	fbjl	2016-06-15
18	mutual	fbjl	2016-06-15
66	mutual	fbjl	2016-06-15
17	mutual	fbjl	2016-06-15
1420	mutual	fbjl	2016-06-15
1421	mutual	fbjl	2016-06-15
1434	mutual	fbjl	2016-06-15
1436	mutual	fbjl	2016-06-15
1428	mutual	fbjl	2016-06-15
1431	mutual	fbjl	2016-06-15
1437	mutual	fbjl	2016-06-15
1443	mutual	fbjl	2016-06-15
1438	mutual	fbjl	2016-06-15
1424	mutual	fbjl	2016-06-15
1439	mutual	fbjl	2016-06-15
1435	mutual	fbjl	2016-06-15
1426	mutual	fbjl	2016-06-15
1440	mutual	fbjl	2016-06-15
1432	mutual	fbjl	2016-06-15
1425	mutual	fbjl	2016-06-15
1419	mutual	fbjl	2016-06-15
1429	mutual	fbjl	2016-06-15
1441	mutual	fbjl	2016-06-15
1531	mutual	cyclops	2016-06-15
1457	mutual	fbjl	2016-06-15
1465	mutual	fbjl	2016-06-15
1447	mutual	fbjl	2016-06-15
1446	mutual	fbjl	2016-06-15
1459	mutual	fbjl	2016-06-15
1449	mutual	fbjl	2016-06-15
1452	mutual	fbjl	2016-06-15
1448	mutual	fbjl	2016-06-15
1466	mutual	fbjl	2016-06-15
1450	mutual	fbjl	2016-06-15
1454	mutual	fbjl	2016-06-15
1458	mutual	fbjl	2016-06-15
1456	mutual	fbjl	2016-06-15
1462	mutual	fbjl	2016-06-15
813	mutual	cyclops	2016-06-15
81	mutual	fbjl	2016-06-15
76	mutual	fbjl	2016-06-15
16	mutual	fbjl	2016-06-15
1530	mutual	cyclops	2016-06-15
1453	mutual	fbjl	2016-06-16
1445	mutual	fbjl	2016-06-16
1444	mutual	fbjl	2016-06-16
1463	mutual	fbjl	2016-06-16
1461	mutual	fbjl	2016-06-16
1460	mutual	fbjl	2016-06-16
1468	mutual	fbjl	2016-06-16
1451	mutual	fbjl	2016-06-16
19	mutual	fbjl	2016-06-16
1479	mutual	fbjl	2016-06-16
1476	mutual	fbjl	2016-06-16
1469	mutual	fbjl	2016-06-16
1480	mutual	fbjl	2016-06-16
1470	mutual	fbjl	2016-06-16
1472	mutual	fbjl	2016-06-16
1477	mutual	fbjl	2016-06-16
1473	mutual	fbjl	2016-06-16
1471	mutual	fbjl	2016-06-16
1478	mutual	fbjl	2016-06-16
1475	mutual	fbjl	2016-06-16
1474	mutual	fbjl	2016-06-16
1532	mutual	fbjl	2016-06-16
57	mutual	fbjl	2016-06-16
16	mutual	fbjl	2016-06-16
1427	mutual	fbjl	2016-06-16
5015	mutual	cyclops	2016-06-17
5015	mutual	cyclops	2016-06-17
16	mutual	fbjl	2016-06-17
7	mutual	fbjl	2016-06-18
7	mutual	fbjl	2016-06-18
1533	mutual	fbjl	2016-06-19
8	mutual	fbjl	2016-06-19
1416	mutual	fbjl	2016-06-19
5	mutual	fbjl	2016-06-19
16	mutual	fbjl	2016-06-20
30	mutual	fbjl	2016-06-20
4	mutual	fbjl	2016-06-20
261	mutual	fbjl	2016-06-20
1427	mutual	fbjl	2016-06-21
11	mutual	fbjl	2016-06-21
84	mutual	fbjl	2016-06-21
6	mutual	fbjl	2016-06-21
30	mutual	fbjl	2016-06-21
1531	mutual	cyclops	2016-06-21
90	mutual	fbjl	2016-06-21
7	mutual	fbjl	2016-06-21
9	mutual	fbjl	2016-06-22
5790	mutual	fbjl	2016-06-22
1423	mutual	fbjl	2016-06-22
261	mutual	fbjl	2016-06-22
16	mutual	fbjl	2016-06-22
1433	mutual	fbjl	2016-06-22
5013	mutual	cyclops	2016-06-22
7	mutual	fbjl	2016-06-23
16	mutual	fbjl	2016-06-24
5013	mutual	cyclops	2016-06-24
8	mutual	fbjl	2016-06-24
4	mutual	fbjl	2016-06-24
1424	mutual	fbjl	2016-06-24
5790	mutual	fbjl	2016-06-24
8	mutual	fbjl	2016-06-24
1425	mutual	fbjl	2016-06-25
66	mutual	fbjl	2016-06-25
71	mutual	fbjl	2016-06-25
12	mutual	fbjl	2016-06-25
5	mutual	fbjl	2016-06-26
30	mutual	fbjl	2016-06-26
3	mutual	fbjl	2016-06-26
16	mutual	fbjl	2016-06-26
1532	mutual	fbjl	2016-06-27
1530	mutual	cyclops	2016-06-27
84	mutual	fbjl	2016-06-27
84	mutual	fbjl	2016-06-27
84	mutual	fbjl	2016-06-27
5017	mutual	cyclops	2016-06-27
1530	mutual	cyclops	2016-06-28
1427	mutual	fbjl	2016-06-28
1533	mutual	fbjl	2016-06-28
5026	mutual	fbjl	2016-06-28
1530	mutual	cyclops	2016-06-29
10	mutual	fbjl	2016-06-29
1419	mutual	fbjl	2016-06-29
39	mutual	fbjl	2016-06-29
30	mutual	fbjl	2016-06-29
5017	mutual	cyclops	2016-06-29
10	mutual	fbjl	2016-06-29
4	mutual	fbjl	2016-06-29
5015	mutual	cyclops	2016-06-29
16	mutual	fbjl	2016-06-30
5026	mutual	fbjl	2016-06-30
11	mutual	fbjl	2016-06-30
1416	mutual	fbjl	2016-07-01
5015	mutual	cyclops	2016-07-01
30	mutual	fbjl	2016-07-01
1427	mutual	fbjl	2016-07-01
4	mutual	fbjl	2016-07-01
84	mutual	fbjl	2016-07-01
30	mutual	fbjl	2016-07-02
1424	mutual	fbjl	2016-07-02
4	mutual	fbjl	2016-07-02
9	mutual	fbjl	2016-07-02
1533	mutual	fbjl	2016-07-02
28	mutual	fbjl	2016-07-02
6	mutual	fbjl	2016-07-02
30	mutual	fbjl	2016-07-03
1425	mutual	fbjl	2016-07-03
8	mutual	fbjl	2016-07-03
1427	mutual	fbjl	2016-07-03
1433	mutual	fbjl	2016-07-03
16	mutual	fbjl	2016-07-03
1533	mutual	fbjl	2016-07-04
7	mutual	fbjl	2016-07-04
30	mutual	fbjl	2016-07-04
30	mutual	fbjl	2016-07-04
5	mutual	fbjl	2016-07-04
1423	mutual	fbjl	2016-07-05
1433	mutual	fbjl	2016-07-05
6	mutual	fbjl	2016-07-06
16	mutual	fbjl	2016-07-06
30	mutual	fbjl	2016-07-07
4	mutual	fbjl	2016-07-07
4	mutual	fbjl	2016-07-07
30	mutual	fbjl	2016-07-08
16	mutual	fbjl	2016-07-09
814	mutual	cyclops	2016-07-09
814	mutual	cyclops	2016-07-09
814	mutual	cyclops2121121121212.1	2016-07-09
814	mutual	cyclops and 1>1	2016-07-09
814	mutual	cyclops" and "x"="x	2016-07-09
814	mutual	cyclops" and "x"="y	2016-07-09
814	mutual	cyclops	2016-07-09
6	mutual	fbjl	2016-07-10
32	mutual	fbjl	2016-07-10
1531	mutual	cyclops	2016-07-10
1532	mutual		2016-07-10
1529	mutual		2016-07-10
1	mutual		2016-07-10
2	mutual	cyclops	2016-07-10
3	mutual	cyclops	2016-07-10
1531	mutual	cyclops	2016-07-10
5026	mutual	fbjl	2016-07-11
5026	mutual	fbjl	2016-07-11
1418	mutual	fbjl	2016-07-11
1532	mutual	fbjl	2016-07-11
3	mutual	fbjl	2016-07-12
12	mutual	fbjl	2016-07-12
8	mutual	fbjl	2016-07-13
1533	mutual	fbjl	2016-07-13
5015	mutual	cyclops	2016-07-13
9	mutual	fbjl	2016-07-13
1419	mutual	fbjl	2016-07-13
5790	mutual	fbjl	2016-07-13
1492	mutual	fbjl	2016-07-13
1427	mutual	fbjl	2016-07-13
1418	mutual	fbjl	2016-07-14
28	mutual	fbjl	2016-07-14
12	mutual	fbjl	2016-07-14
11	mutual	fbjl	2016-07-14
1416	mutual	fbjl	2016-07-16
1424	mutual	fbjl	2016-07-16
7	mutual	fbjl	2016-07-16
35	mutual	fbjl	2016-07-16
6	mutual	fbjl	2016-07-17
813	mutual	cyclops	2016-07-17
1425	mutual	fbjl	2016-07-17
16	mutual	fbjl	2016-07-17
5	mutual	fbjl	2016-07-18
813	mutual	cyclops	2016-07-18
30	mutual	fbjl	2016-07-19
35	mutual	fbjl	2016-07-19
30	mutual	fbjl	2016-07-19
35	mutual	fbjl	2016-07-19
16	mutual	fbjl	2016-07-20
6	mutual	fbjl	2016-07-20
1423	mutual	fbjl	2016-07-20
5018	mutual	cyclops	2016-07-20
5018	mutual	cyclops	2016-07-20
814	mutual	cyclops	2016-07-20
5014	mutual	cyclops	2016-07-20
1531	mutual	cyclops	2016-07-20
52	mutual	fbjl	2016-07-20
1531	mutual	cyclops	2016-07-21
4	mutual	fbjl	2016-07-21
5026	mutual	fbjl	2016-07-22
1427	mutual	fbjl	2016-07-22
30	mutual	fbjl	2016-07-22
6	mutual	fbjl	2016-07-22
16	mutual	fbjl	2016-07-22
4	mutual	fbjl	2016-07-22
1467	mutual	fbjl	2016-07-23
84	mutual	fbjl	2016-07-23
32	mutual	fbjl	2016-07-24
4	mutual	fbjl	2016-07-24
79	mutual	fbjl	2016-07-24
10	mutual	fbjl	2016-07-24
30	mutual	fbjl	2016-07-24
30	mutual	fbjl	2016-07-24
30	mutual	fbjl	2016-07-25
8	mutual	fbjl	2016-07-25
4	mutual	fbjl	2016-07-26
261	mutual	fbjl	2016-07-26
3	mutual	fbjl	2016-07-26
1492	mutual	fbjl	2016-07-26
5015	mutual	cyclops	2016-07-26
5015	mutual	cyclops	2016-07-26
5015	mutual	cyclops	2016-07-26
5016	mutual	cyclops	2016-07-26
5016	mutual	cyclops	2016-07-26
5015	mutual	cyclops	2016-07-26
5015	mutual	cyclops	2016-07-26
5015	mutual	cyclops	2016-07-26
1531	mutual	cyclops	2016-07-26
1531	mutual	cyclops	2016-07-26
1531	mutual	cyclops	2016-07-26
1531	mutual	cyclops	2016-07-26
5013	mutual	cyclops	2016-07-26
5013	mutual	cyclops	2016-07-26
5013	mutual	cyclops	2016-07-26
57	mutual	fbjl	2016-07-26
16	mutual	fbjl	2016-07-27
1427	mutual	fbjl	2016-07-27
5013	mutual	cyclops	2016-07-27
12	mutual	fbjl	2016-07-27
261	mutual	fbjl	2016-07-27
1419	mutual	fbjl	2016-07-27
1427	mutual	fbjl	2016-07-28
1418	mutual	fbjl	2016-07-28
1533	mutual	fbjl	2016-07-28
1533	mutual	fbjl	2016-07-29
1532	mutual	fbjl	2016-07-29
5013	mutual	cyclops	2016-07-29
11	mutual	fbjl	2016-07-30
1533	mutual	fbjl	2016-07-30
1533	mutual	fbjl	2016-07-30
9	mutual	fbjl	2016-07-30
30	mutual		2016-07-30
30	mutual	fbjl	2016-07-30
1530	mutual	cyclops	2016-07-31
4	mutual	fbjl	2016-07-31
16	mutual	fbjl	2016-07-31
1427	mutual	fbjl	2016-07-31
5017	mutual	cyclops	2016-07-31
7	mutual	fbjl	2016-07-31
1530	mutual	cyclops	2016-08-01
16	mutual	fbjl	2016-08-01
5	mutual	fbjl	2016-08-01
30	mutual	fbjl	2016-08-01
30	mutual	fbjl	2016-08-01
5015	mutual	cyclops	2016-08-01
1424	mutual	fbjl	2016-08-02
30	mutual		2016-08-02
39	mutual	fbjl	2016-08-02
814	mutual	cyclops	2016-08-03
1425	mutual	fbjl	2016-08-03
5017	mutual	cyclops	2016-08-03
5015	mutual	cyclops	2016-08-03
16	mutual	fbjl	2016-08-05
5016	mutual	cyclops	2016-08-05
5015	mutual	cyclops	2016-08-05
1533	mutual	fbjl	2016-08-05
1433	mutual	fbjl	2016-08-05
1533	mutual	fbjl	2016-08-06
1416	mutual	fbjl	2016-08-06
16	mutual	fbjl	2016-08-06
1427	mutual	fbjl	2016-08-06
1533	mutual	fbjl	2016-08-07
1423	mutual	fbjl	2016-08-07
16	mutual	fbjl	2016-08-07
5790	mutual	fbjl	2016-08-07
1533	mutual	fbjl	2016-08-08
1533	mutual	fbjl	2016-08-08
8	mutual	fbjl	2016-08-09
30	mutual	fbjl	2016-08-10
1418	mutual	fbjl	2016-08-10
30	mutual	fbjl	2016-08-10
3	mutual	fbjl	2016-08-10
12	mutual	fbjl	2016-08-10
30	mutual	fbjl	2016-08-11
30	mutual	fbjl	2016-08-11
1533	mutual	fbjl	2016-08-11
1427	mutual	fbjl	2016-08-11
16	mutual	fbjl	2016-08-11
9	mutual	fbjl	2016-08-12
1427	mutual	fbjl	2016-08-12
1419	mutual	fbjl	2016-08-12
5776	mutual	fbjl	2016-08-12
5	mutual	fbjl	2016-08-13
3	mutual	fbjl	2016-08-13
814	mutual	cyclops	2016-08-13
814	mutual	cyclops	2016-08-13
11	mutual	fbjl	2016-08-13
1532	mutual	fbjl	2016-08-13
4	mutual	fbjl	2016-08-13
9	mutual	fbjl	2016-08-15
7	mutual	fbjl	2016-08-15
4	mutual	fbjl	2016-08-15
1531	mutual	cyclops	2016-08-16
5	mutual	fbjl	2016-08-16
1427	mutual	fbjl	2016-08-16
1424	mutual	fbjl	2016-08-16
30	mutual	fbjl	2016-08-17
1533	mutual	fbjl	2016-08-18
30	mutual	fbjl	2016-08-18
30	mutual	fbjl	2016-08-18
30	mutual	fbjl	2016-08-18
5	mutual	fbjl	2016-08-19
1433	mutual	fbjl	2016-08-19
813	mutual	cyclops	2016-08-19
3	mutual	fbjl	2016-08-19
1425	mutual	fbjl	2016-08-19
35	mutual	fbjl	2016-08-19
1531	mutual	cyclops	2016-08-20
30	mutual	fbjl	2016-08-20
1433	mutual	fbjl	2016-08-20
5776	mutual	fbjl	2016-08-20
3	mutual	fbjl	2016-08-20
1531	mutual	cyclops	2016-08-20
1425	mutual	fbjl	2016-08-21
1423	mutual	fbjl	2016-08-21
16	mutual	fbjl	2016-08-21
16	mutual	fbjl	2016-08-22
30	mutual	fbjl	2016-08-22
30	mutual	fbjl	2016-08-22
1423	mutual	fbjl	2016-08-22
102	mutual	fbjl	2016-08-22
1427	mutual	fbjl	2016-08-23
1531	mutual	cyclops	2016-08-23
8	mutual	fbjl	2016-08-24
1533	mutual	fbjl	2016-08-24
16	mutual	fbjl	2016-08-24
3	mutual	fbjl	2016-08-24
12	mutual	fbjl	2016-08-24
5015	mutual	cyclops	2016-08-26
1427	mutual	fbjl	2016-08-27
1419	mutual	fbjl	2016-08-28
1427	mutual	fbjl	2016-08-28
9	mutual	fbjl	2016-08-29
1532	mutual	fbjl	2016-08-29
11	mutual	fbjl	2016-08-29
16	mutual	fbjl	2016-08-29
7	mutual	fbjl	2016-08-30
5	mutual	fbjl	2016-08-30
4	mutual	fbjl	2016-08-30
30	mutual	fbjl	2016-08-30
261	mutual	fbjl	2016-08-31
5	mutual	fbjl	2016-08-31
261	mutual	fbjl	2016-08-31
16	mutual	fbjl	2016-08-31
5776	mutual	fbjl	2016-08-31
9	mutual	fbjl	2016-09-01
9	mutual	fbjl	2016-09-01
30	mutual	fbjl	2016-09-01
3	mutual	fbjl	2016-09-01
5780	mutual	fbjl	2016-09-01
1416	mutual	fbjl	2016-09-02
1424	mutual	fbjl	2016-09-02
30	mutual	fbjl	2016-09-02
1427	mutual	fbjl	2016-09-02
39	mutual	fbjl	2016-09-02
30	mutual	fbjl	2016-09-02
1425	mutual	fbjl	2016-09-02
30	mutual	fbjl	2016-09-02
30	mutual	fbjl	2016-09-02
5015	mutual	cyclops	2016-09-04
30	mutual	fbjl	2016-09-04
1423	mutual	fbjl	2016-09-04
1425	mutual	fbjl	2016-09-04
1533	mutual	fbjl	2016-09-05
30	mutual	fbjl	2016-09-05
1530	mutual	cyclops	2016-09-05
1427	mutual	fbjl	2016-09-05
1427	mutual	fbjl	2016-09-05
90	mutual	fbjl	2016-09-06
5016	mutual	cyclops	2016-09-06
16	mutual	fbjl	2016-09-06
1423	mutual	fbjl	2016-09-06
3	mutual	fbjl	2016-09-07
1531	mutual	cyclops	2016-09-07
1530	mutual	cyclops	2016-09-07
5787	mutual	fbjl	2016-09-08
16	mutual	fbjl	2016-09-08
5017	mutual	cyclops	2016-09-08
8	mutual	fbjl	2016-09-09
10	mutual	fbjl	2016-09-09
12	mutual	fbjl	2016-09-10
84	mutual	fbjl	2016-09-10
1533	mutual	fbjl	2016-09-10
1433	mutual	fbjl	2016-09-10
1427	mutual	fbjl	2016-09-10
1533	mutual	fbjl	2016-09-11
1533	mutual	fbjl	2016-09-11
16	mutual	fbjl	2016-09-12
1427	mutual	fbjl	2016-09-12
5013	mutual	cyclops	2016-09-12
1532	mutual	fbjl	2016-09-12
9	mutual	fbjl	2016-09-12
5013	mutual	cyclops	2016-09-13
11	mutual	fbjl	2016-09-13
11	mutual	fbjl	2016-09-13
11	mutual	fbjl	2016-09-13
11	mutual	fbjl	2016-09-13
11	mutual	fbjl	2016-09-13
7	mutual	fbjl	2016-09-14
4	mutual	fbjl	2016-09-14
5	mutual	fbjl	2016-09-14
1425	mutual	fbjl	2016-09-15
4	mutual	fbjl	2016-09-15
5790	mutual	fbjl	2016-09-15
1531	mutual	cyclops	2016-09-15
5013	mutual	cyclops	2016-09-15
16	mutual	fbjl	2016-09-16
1416	mutual	fbjl	2016-09-16
5015	mutual	cyclops	2016-09-16
5018	mutual	cyclops	2016-09-16
5018	mutual	cyclops	2016-09-16
5018	mutual	cyclops	2016-09-16
814	mutual	cyclops	2016-09-16
1425	mutual	fbjl	2016-09-17
1424	mutual	fbjl	2016-09-17
1419	mutual	fbjl	2016-09-17
1433	mutual	fbjl	2016-09-18
1492	mutual	fbjl	2016-09-19
99	mutual	fbjl	2016-09-19
1433	mutual	fbjl	2016-09-19
30	mutual	fbjl	2016-09-20
813	mutual	cyclops	2016-09-20
1427	mutual	fbjl	2016-09-20
1533	mutual	fbjl	2016-09-21
1533	mutual	fbjl	2016-09-21
1530	mutual	cyclops	2016-09-21
813	mutual	cyclops	2016-09-21
1433	mutual	fbjl	2016-09-22
3	mutual	fbjl	2016-09-22
16	mutual	fbjl	2016-09-22
1423	mutual	fbjl	2016-09-23
1529	mutual	cyclops	2016-09-23
5014	mutual	cyclops	2016-09-23
5015	mutual	cyclops	2016-09-23
1531	mutual	cyclops	2016-09-23
5790	mutual	fbjl	2016-09-23
39	mutual	fbjl	2016-09-23
39	mutual	fbjl	2016-09-23
35	mutual	fbjl	2016-09-24
16	mutual	fbjl	2016-09-24
8	mutual	fbjl	2016-09-24
1533	mutual	fbjl	2016-09-24
1427	mutual	fbjl	2016-09-25
28	mutual	fbjl	2016-09-25
66	mutual	fbjl	2016-09-26
35	mutual	fbjl	2016-09-26
1461	mutual	fbjl	2016-09-26
5013	mutual	cyclops	2016-09-26
5017	mutual	cyclops	2016-09-26
5787	mutual	fbjl	2016-09-26
5788	mutual	fbjl	2016-09-26
5018	mutual	cyclops	2016-09-26
5018	mutual	cyclops	2016-09-26
5018	mutual	cyclops	2016-09-26
1533	mutual	fbjl	2016-09-26
1424	mutual	fbjl	2016-09-27
1417	mutual	fbjl	2016-09-27
1426	mutual	fbjl	2016-09-27
1492	mutual	fbjl	2016-09-27
1416	mutual	fbjl	2016-09-27
5790	mutual	fbjl	2016-09-27
16	mutual	fbjl	2016-09-28
9	mutual	fbjl	2016-09-28
1447	mutual	fbjl	2016-09-28
1461	mutual	fbjl	2016-09-29
7	mutual	fbjl	2016-09-29
5	mutual	fbjl	2016-09-29
1417	mutual	fbjl	2016-09-29
1416	mutual	fbjl	2016-09-29
1433	mutual	fbjl	2016-09-29
1427	mutual	fbjl	2016-09-29
57	mutual	fbjl	2016-09-29
57	mutual	fbjl	2016-09-29
57	mutual	fbjl2121121121212.1	2016-09-29
57	mutual	fbjl	2016-09-29
5013	mutual	cyclops	2016-09-29
28	mutual	fbjl	2016-09-30
30	mutual	fbjl	2016-09-30
92	mutual	fbjl	2016-09-30
11	mutual	fbjl	2016-09-30
1427	mutual	fbjl	2016-09-30
4	mutual	fbjl	2016-10-01
1424	mutual	fbjl	2016-10-01
1416	mutual	fbjl	2016-10-01
1532	mutual	fbjl	2016-10-01
1433	mutual	fbjl	2016-10-02
1427	mutual	fbjl	2016-10-02
12	mutual	fbjl	2016-10-02
1425	mutual	fbjl	2016-10-02
261	mutual	fbjl	2016-10-02
16	mutual	fbjl	2016-10-03
41	mutual	fbjl	2016-10-04
1419	mutual	fbjl	2016-10-04
1433	mutual	fbjl	2016-10-04
1427	mutual	fbjl	2016-10-04
16	mutual	fbjl	2016-10-05
30	mutual	fbjl	2016-10-05
30	mutual	fbjl	2016-10-05
5766	mutual	fbjl	2016-10-07
16	mutual	fbjl	2016-10-08
5	mutual	fbjl	2016-10-08
10	mutual	fbjl	2016-10-08
5766	mutual	fbjl	2016-10-08
1531	mutual	cyclops	2016-10-08
30	mutual	fbjl	2016-10-08
8	mutual	fbjl	2016-10-09
90	mutual	fbjl	2016-10-09
16	mutual	fbjl	2016-10-09
11	mutual	fbjl	2016-10-09
1433	mutual	fbjl	2016-10-09
4	mutual	fbjl	2016-10-09
40	mutual	fbjl	2016-10-09
1494	mutual	fbjl	2016-10-09
1495	mutual	fbjl	2016-10-09
1526	mutual	fbjl	2016-10-09
1527	mutual	fbjl	2016-10-09
5790	mutual	fbjl	2016-10-09
30	mutual	fbjl	2016-10-09
71	mutual	fbjl	2016-10-09
76	mutual	fbjl	2016-10-09
81	mutual	fbjl	2016-10-09
1423	mutual	fbjl	2016-10-09
4	mutual	fbjl	2016-10-09
79	mutual	fbjl	2016-10-09
814	mutual	cyclops	2016-10-09
12	mutual	fbjl	2016-10-09
32	mutual	fbjl	2016-10-09
5015	mutual	cyclops	2016-10-09
63	mutual	fbjl	2016-10-10
27	mutual	fbjl	2016-10-10
26	mutual	fbjl	2016-10-10
25	mutual	fbjl	2016-10-10
24	mutual	fbjl	2016-10-10
59	mutual	fbjl	2016-10-10
67	mutual	fbjl	2016-10-10
69	mutual	fbjl	2016-10-10
62	mutual	fbjl	2016-10-10
64	mutual	fbjl	2016-10-10
58	mutual	fbjl	2016-10-10
68	mutual	fbjl	2016-10-10
61	mutual	fbjl	2016-10-10
5020	mutual	fbjl	2016-10-10
1483	mutual	fbjl	2016-10-10
1481	mutual	fbjl	2016-10-10
1485	mutual	fbjl	2016-10-10
1486	mutual	fbjl	2016-10-10
5781	mutual	fbjl	2016-10-10
1508	mutual	fbjl	2016-10-10
4959	mutual	fbjl	2016-10-10
1482	mutual	fbjl	2016-10-10
1506	mutual	fbjl	2016-10-10
1509	mutual	fbjl	2016-10-10
1484	mutual	fbjl	2016-10-10
1505	mutual	fbjl	2016-10-10
1488	mutual	fbjl	2016-10-10
5024	mutual	fbjl	2016-10-10
1507	mutual	fbjl	2016-10-10
1489	mutual	fbjl	2016-10-10
5014	mutual	cyclops	2016-10-10
813	mutual	cyclops	2016-10-10
1529	mutual	cyclops	2016-10-10
5015	mutual	cyclops	2016-10-10
30	mutual	fbjl	2016-10-10
16	mutual	fbjl	2016-10-10
1530	mutual	cyclops	2016-10-10
30	mutual	fbjl	2016-10-11
64	mutual	fbjl	2016-10-11
30	mutual	fbjl	2016-10-11
5018	mutual	cyclops	2016-10-11
5018	mutual	cyclops	2016-10-11
5017	mutual	cyclops	2016-10-11
5766	mutual	fbjl	2016-10-11
5016	mutual	cyclops	2016-10-11
30	mutual	fbjl	2016-10-12
3	mutual	fbjl	2016-10-12
30	mutual	fbjl	2016-10-13
30	mutual	fbjl	2016-10-13
30	mutual	fbjl	2016-10-13
4	mutual	fbjl	2016-10-13
81	mutual	fbjl	2016-10-14
1427	mutual	fbjl	2016-10-14
1433	mutual	fbjl	2016-10-14
9	mutual	fbjl	2016-10-14
7	mutual	fbjl	2016-10-14
5	mutual	fbjl	2016-10-14
5017	mutual	cyclops	2016-10-14
30	mutual	fbjl	2016-10-14
12	mutual	fbjl	2016-10-14
1509	mutual	fbjl	2016-10-15
1509	mutual	fbjl                          aND 8=8	2016-10-15
1509	mutual	fbjl                          aND 8=3	2016-10-15
1509	mutual	fbjl                         \taND\t8=8	2016-10-15
1509	mutual	fbjl                         \taND\t8=3	2016-10-15
1509	mutual	fbjl                         /**/aND/**/8=8	2016-10-15
1509	mutual	fbjl                         /**/aND/**/8=3	2016-10-15
1433	mutual	fbjl	2016-10-15
30	mutual	fbjl	2016-10-15
1427	mutual	fbjl	2016-10-15
30	mutual	fbjl	2016-10-15
5017	mutual	cyclops	2016-10-15
16	mutual	fbjl	2016-10-15
30	mutual	fbjl	2016-10-15
1533	mutual	fbjl	2016-10-15
4	mutual	fbjl	2016-10-15
30	mutual	fbjl	2016-10-15
100	mutual	fbjl	2016-10-16
102	mutual	fbjl	2016-10-16
30	mutual	fbjl	2016-10-16
1425	mutual	fbjl	2016-10-16
1424	mutual	fbjl	2016-10-16
30	mutual	fbjl	2016-10-16
1416	mutual	fbjl	2016-10-16
30	mutual	fbjl	2016-10-16
101	mutual	fbjl	2016-10-17
5018	mutual	cyclops	2016-10-17
12	mutual	fbjl	2016-10-17
1433	mutual	fbjl	2016-10-17
5013	mutual	cyclops	2016-10-17
1433	mutual	fbjl	2016-10-17
1427	mutual	fbjl	2016-10-18
11	mutual	fbjl	2016-10-18
1531	mutual	cyclops	2016-10-18
1532	mutual	fbjl	2016-10-18
5013	mutual	cyclops	2016-10-19
5018	mutual	cyclops	2016-10-19
814	mutual	cyclops	2016-10-19
1531	mutual	cyclops	2016-10-19
5014	mutual	cyclops	2016-10-19
5790	mutual	fbjl	2016-10-19
84	mutual	fbjl	2016-10-20
16	mutual	fbjl	2016-10-21
10	mutual	fbjl	2016-10-21
1433	mutual	fbjl	2016-10-21
1427	mutual	fbjl	2016-10-22
30	mutual	fbjl	2016-10-22
30	mutual	fbjl	2016-10-22
1419	mutual	fbjl	2016-10-22
10	mutual	fbjl	2016-10-23
10	mutual	fbjl	2016-10-23
10	mutual	fbjl	2016-10-23
1427	mutual	fbjl	2016-10-23
813	mutual	cyclops	2016-10-23
16	mutual	fbjl	2016-10-23
1423	mutual	fbjl	2016-10-23
49	mutual	fbjl	2016-10-24
51	mutual	fbjl	2016-10-24
1427	mutual	fbjl	2016-10-24
813	mutual	cyclops	2016-10-24
96	mutual	fbjl	2016-10-24
47	mutual	fbjl	2016-10-24
50	mutual	fbjl	2016-10-25
48	mutual	fbjl	2016-10-25
98	mutual	fbjl	2016-10-25
93	mutual	fbjl	2016-10-25
45	mutual	fbjl	2016-10-25
1533	mutual	fbjl	2016-10-25
55	mutual	fbjl	2016-10-25
54	mutual	fbjl	2016-10-25
53	mutual	fbjl	2016-10-25
99	mutual	fbjl	2016-10-25
8	mutual	fbjl	2016-10-25
813	mutual	cyclops	2016-10-25
52	mutual	fbjl	2016-10-26
56	mutual	fbjl	2016-10-26
1502	mutual	fbjl	2016-10-26
5786	mutual	fbjl	2016-10-26
5779	mutual	fbjl	2016-10-26
5788	mutual	fbjl	2016-10-26
5788	mutual	fbjl	2016-10-26
16	mutual	fbjl	2016-10-27
5784	mutual	fbjl	2016-10-27
5778	mutual	fbjl	2016-10-27
1522	mutual	fbjl	2016-10-27
1524	mutual	fbjl	2016-10-27
5777	mutual	fbjl	2016-10-27
1523	mutual	fbjl	2016-10-27
1500	mutual	fbjl	2016-10-27
5787	mutual	fbjl	2016-10-27
1525	mutual	fbjl	2016-10-28
5783	mutual	fbjl	2016-10-28
1503	mutual	fbjl	2016-10-28
5789	mutual	fbjl	2016-10-28
1427	mutual	fbjl	2016-10-28
12	mutual	fbjl	2016-10-28
3	mutual	fbjl	2016-10-28
30	mutual	fbjl	2016-10-28
5785	mutual	fbjl	2016-10-28
1501	mutual	fbjl	2016-10-28
5791	mutual	fbjl	2016-10-28
48	mutual	fbjl	2016-10-28
12	mutual	fbjl	2016-10-29
30	mutual	fbjl	2016-10-29
30	mutual	fbjl	2016-10-29
9	mutual	fbjl	2016-10-29
30	mutual	fbjl	2016-10-29
5	mutual	fbjl	2016-10-29
99	mutual	fbjl	2016-10-29
4	mutual	fbjl	2016-10-29
84	mutual	fbjl	2016-10-29
84	mutual	fbjl	2016-10-30
4	mutual	fbjl	2016-10-30
52	mutual	fbjl	2016-10-30
5784	mutual	fbjl	2016-10-30
30	mutual	fbjl	2016-10-30
7	mutual	fbjl	2016-10-30
35	mutual	fbjl	2016-10-31
1416	mutual	fbjl	2016-10-31
84	mutual	fbjl	2016-10-31
4	mutual	fbjl	2016-10-31
1427	mutual	fbjl	2016-10-31
1530	mutual	cyclops	2016-10-31
30	mutual	fbjl	2016-10-31
30	mutual	fbjl	2016-10-31
12	mutual	fbjl	2016-10-31
1467	mutual	fbjl	2016-10-31
1531	mutual	cyclops	2016-11-01
4	mutual	fbjl	2016-11-01
1533	mutual	fbjl	2016-11-01
30	mutual	fbjl	2016-11-01
30	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
11	mutual	fbjl	2016-11-01
84	mutual	fbjl	2016-11-01
4	mutual	fbjl	2016-11-01
48	mutual	fbjl	2016-11-01
48	mutual	fbjl	2016-11-01
1532	mutual	fbjl	2016-11-01
30	mutual	fbjl	2016-11-02
1424	mutual	fbjl	2016-11-02
16	mutual	fbjl	2016-11-02
11	mutual	fbjl	2016-11-03
11	mutual	fbjl	2016-11-03
11	mutual	fbjl	2016-11-03
11	mutual	fbjl	2016-11-03
11	mutual	fbjl	2016-11-03
11	mutual	fbjl	2016-11-03
1427	mutual	fbjl	2016-11-03
1491	mutual	fbjl	2016-11-04
1501	mutual	fbjl	2016-11-04
5024	mutual	fbjl	2016-11-04
1529	mutual	cyclops	2016-11-04
1425	mutual	fbjl	2016-11-04
1531	mutual	cyclops	2016-11-05
1427	mutual	fbjl	2016-11-05
1433	mutual	fbjl	2016-11-06
16	mutual	fbjl	2016-11-06
11	mutual	fbjl	2016-11-07
11	mutual	fbjl	2016-11-07
11	mutual	fbjl	2016-11-07
11	mutual	fbjl	2016-11-07
11	mutual	fbjl	2016-11-07
11	mutual	fbjl	2016-11-07
5013	mutual	cyclops	2016-11-07
1419	mutual	fbjl	2016-11-08
1529	mutual	cyclops	2016-11-08
5017	mutual	cyclops	2016-11-08
1427	mutual	fbjl	2016-11-09
5017	mutual	cyclops	2016-11-09
5018	mutual	cyclops	2016-11-09
5018	mutual	cyclops	2016-11-09
1461	mutual	fbjl	2016-11-10
8	mutual	fbjl	2016-11-10
10	mutual	fbjl	2016-11-11
10	mutual	fbjl	2016-11-11
16	mutual	fbjl	2016-11-11
5018	mutual	cyclops	2016-11-11
1427	mutual	fbjl	2016-11-11
10	mutual	fbjl	2016-11-12
10	mutual	fbjl	2016-11-12
10	mutual	fbjl	2016-11-12
1530	mutual	cyclops	2016-11-12
5	mutual	fbjl	2016-11-12
1461	mutual	fbjl	2016-11-12
1530	mutual	cyclops	2016-11-13
3	mutual	fbjl	2016-11-13
9	mutual	fbjl	2016-11-13
1423	mutual	fbjl	2016-11-13
7	mutual	fbjl	2016-11-14
1427	mutual	fbjl	2016-11-14
12	mutual	fbjl	2016-11-14
4	mutual	fbjl	2016-11-14
10	mutual	fbjl	2016-11-15
1420	mutual	fbjl	2016-11-15
16	mutual	fbjl	2016-11-15
5790	mutual	fbjl	2016-11-15
30	mutual	fbjl	2016-11-15
62	mutual	fbjl	2016-11-15
5017	mutual	cyclops	2016-11-16
62	mutual	fbjl	2016-11-16
1533	mutual	fbjl	2016-11-16
4	mutual	fbjl	2016-11-17
16	mutual	fbjl	2016-11-17
1533	mutual	fbjl	2016-11-17
5016	mutual	cyclops	2016-11-17
5015	mutual	cyclops	2016-11-17
5015	mutual	cyclops	2016-11-17
1531	mutual	cyclops	2016-11-17
10	mutual	fbjl	2016-11-17
1532	mutual	fbjl	2016-11-18
30	mutual	fbjl	2016-11-18
30	mutual	fbjl	2016-11-18
30	mutual	fbjl	2016-11-18
1533	mutual	fbjl	2016-11-18
1424	mutual	fbjl	2016-11-18
1533	mutual	fbjl	2016-11-19
5015	mutual	cyclops	2016-11-19
16	mutual	fbjl	2016-11-20
1425	mutual	fbjl	2016-11-20
1416	mutual	fbjl	2016-11-20
1532	mutual	fbjl	2016-11-21
1427	mutual	fbjl	2016-11-21
5013	mutual	cyclops	2016-11-21
1531	mutual	cyclops	2016-11-22
1531	mutual	cyclops	2016-11-22
30	mutual	fbjl	2016-11-22
30	mutual	fbjl	2016-11-22
30	mutual	fbjl	2016-11-22
5766	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
11	mutual	fbjl	2016-11-22
1533	mutual	fbjl	2016-11-23
16	mutual	fbjl	2016-11-23
5013	mutual	cyclops	2016-11-23
1461	mutual	fbjl	2016-11-23
30	mutual	fbjl	2016-11-23
1419	mutual	fbjl	2016-11-24
4	mutual	fbjl	2016-11-25
1433	mutual	fbjl	2016-11-25
30	mutual	fbjl	2016-11-25
16	mutual	fbjl	2016-11-26
30	mutual	fbjl	2016-11-26
5013	mutual	cyclops	2016-11-26
5013	mutual	cyclops	2016-11-27
8	mutual	fbjl	2016-11-27
1433	mutual	fbjl	2016-11-27
813	mutual	cyclops	2016-11-28
10	mutual	fbjl	2016-11-28
16	mutual	fbjl	2016-11-28
1420	mutual	fbjl	2016-11-28
9	mutual	fbjl	2016-11-28
5013	mutual	cyclops	2016-11-28
813	mutual	cyclops	2016-11-28
1531	mutual	cyclops	2016-11-28
1531	mutual	cyclops	2016-11-28
1531	mutual	cyclops	2016-11-28
7	mutual	fbjl	2016-11-29
1423	mutual	fbjl	2016-11-29
1427	mutual	fbjl	2016-11-29
30	mutual	fbjl	2016-11-29
3	mutual	fbjl	2016-11-30
12	mutual	fbjl	2016-11-30
10	mutual	fbjl	2016-11-30
16	mutual	fbjl	2016-11-30
1420	mutual	fbjl	2016-11-30
1427	mutual	fbjl	2016-11-30
1423	mutual	fbjl	2016-11-30
11	mutual	fbjl	2016-11-30
5015	mutual	cyclops	2016-11-30
1433	mutual	fbjl	2016-12-01
1533	mutual	fbjl	2016-12-01
16	mutual	fbjl	2016-12-01
4	mutual	fbjl	2016-12-01
10	mutual	fbjl	2016-12-02
30	mutual		2016-12-02
57	mutual	fbjl	2016-12-02
1433	mutual	fbjl	2016-12-03
1424	mutual	fbjl	2016-12-04
1427	mutual	fbjl	2016-12-04
1532	mutual	fbjl	2016-12-04
35	mutual	fbjl	2016-12-04
1425	mutual	fbjl	2016-12-05
35	mutual	fbjl	2016-12-05
85	mutual	fbjl	2016-12-05
30	mutual	fbjl	2016-12-05
1427	mutual	fbjl	2016-12-06
16	mutual	fbjl	2016-12-07
16	mutual	fbjl	2016-12-08
1433	mutual	fbjl	2016-12-09
1419	mutual	fbjl	2016-12-09
1427	mutual	fbjl	2016-12-09
5013	mutual	cyclops	2016-12-09
5013	mutual	cyclops aND 8=8	2016-12-09
5013	mutual	cyclops aND 8=3	2016-12-09
5013	mutual	cyclops\taND\t8=8	2016-12-09
5013	mutual	cyclops\taND\t8=3	2016-12-09
5013	mutual	cyclops/**/aND/**/8=8	2016-12-09
5013	mutual	cyclops/**/aND/**/8=3	2016-12-09
5013	mutual	cyclops XoR 8=3	2016-12-09
5013	mutual	cyclops XoR 8=8	2016-12-09
5013	mutual	cyclops\tXoR\t8=3	2016-12-09
5013	mutual	cyclops\tXoR\t8=8	2016-12-09
5013	mutual	cyclops/**/XoR/**/8=3	2016-12-09
5013	mutual	cyclops/**/XoR/**/8=8	2016-12-09
5013	mutual	cyclops	2016-12-09
16	mutual	fbjl	2016-12-09
5016	mutual	cyclops	2016-12-09
5016	mutual	cyclops	2016-12-09
5016	mutual	cyclops	2016-12-09
5	mutual	fbjl	2016-12-09
28	mutual	fbjl	2016-12-10
39	mutual	fbjl	2016-12-10
30	mutual	fbjl	2016-12-11
1427	mutual	fbjl	2016-12-11
1433	mutual	fbjl	2016-12-11
1416	mutual	fbjl	2016-12-12
5766	mutual	fbjl	2016-12-12
8	mutual	fbjl	2016-12-12
1533	mutual	fbjl	2016-12-12
1533	mutual	fbjl	2016-12-12
28	mutual	fbjl	2016-12-12
30	mutual	fbjl	2016-12-13
30	mutual	fbjl	2016-12-13
52	mutual	fbjl	2016-12-13
51	mutual	fbjl	2016-12-13
52	mutual	fbjl	2016-12-13
51	mutual	fbjl	2016-12-13
1529	mutual	cyclops	2016-12-13
5787	mutual	fbjl	2016-12-13
9	mutual	fbjl	2016-12-13
5766	mutual	fbjl	2016-12-13
5766	mutual	fbjl	2016-12-13
5784	mutual	fbjl	2016-12-14
11	mutual	fbjl	2016-12-14
1423	mutual	fbjl	2016-12-14
1427	mutual	fbjl	2016-12-14
7	mutual	fbjl	2016-12-14
3	mutual	fbjl	2016-12-14
16	mutual	fbjl	2016-12-14
1423	mutual	fbjl	2016-12-15
1427	mutual	fbjl	2016-12-15
4	mutual	fbjl	2016-12-16
1420	mutual	fbjl	2016-12-16
16	mutual	fbjl	2016-12-16
10	mutual	fbjl	2016-12-16
11	mutual	fbjl	2016-12-16
1423	mutual	fbjl	2016-12-16
1427	mutual	fbjl	2016-12-16
28	mutual	fbjl	2016-12-16
4	mutual	fbjl	2016-12-16
11	mutual	fbjl	2016-12-17
11	mutual	fbjl	2016-12-17
11	mutual	fbjl	2016-12-17
11	mutual	fbjl	2016-12-17
11	mutual	fbjl	2016-12-17
11	mutual	fbjl	2016-12-17
10	mutual	fbjl	2016-12-17
4	mutual	fbjl	2016-12-17
3	mutual	fbjl	2016-12-17
16	mutual	fbjl	2016-12-18
1530	mutual	cyclops	2016-12-18
1533	mutual	fbjl	2016-12-19
5017	mutual	cyclops	2016-12-19
12	mutual	fbjl	2016-12-19
1424	mutual	fbjl	2016-12-20
1532	mutual	fbjl	2016-12-20
1425	mutual	fbjl	2016-12-21
57	mutual	fbjl	2016-12-21
62	mutual	fbjl	2016-12-21
28	mutual	fbjl	2016-12-21
28	mutual	fbjl	2016-12-21
28	mutual	fbjl	2016-12-21
1533	mutual	fbjl	2016-12-22
4	mutual	fbjl	2016-12-22
30	mutual	fbjl	2016-12-22
1533	mutual	fbjl	2016-12-23
28	mutual	fbjl	2016-12-23
16	mutual	fbjl	2016-12-23
1533	mutual	fbjl	2016-12-24
1419	mutual	fbjl	2016-12-25
16	mutual	fbjl	2016-12-25
5	mutual	fbjl	2016-12-25
28	mutual	fbjl	2016-12-25
5015	mutual	cyclops	2016-12-26
1418	mutual	fbjl	2016-12-26
1533	mutual	fbjl	2016-12-26
8	mutual	fbjl	2016-12-26
5015	mutual	cyclops	2016-12-27
16	mutual	fbjl	2016-12-27
9	mutual	fbjl	2016-12-28
1427	mutual	fbjl	2016-12-28
3	mutual	fbjl	2016-12-29
66	mutual	fbjl	2016-12-29
1416	mutual	fbjl	2016-12-29
62	mutual	fbjl	2016-12-29
5015	mutual	cyclops	2016-12-29
813	mutual	cyclops	2016-12-29
4	mutual	fbjl	2016-12-29
1423	mutual	fbjl	2016-12-30
1531	mutual	cyclops	2016-12-30
4	mutual	fbjl	2016-12-30
7	mutual	fbjl	2016-12-30
16	mutual	fbjl	2016-12-30
98	mutual	fbjl	2016-12-31
1533	mutual	fbjl	2016-12-31
813	mutual	cyclops	2016-12-31
1433	mutual	fbjl	2016-12-31
66	mutual	fbjl	2016-12-31
1421	mutual	fbjl	2017-01-01
16	mutual	fbjl	2017-01-01
1433	mutual	fbjl	2017-01-01
12	mutual	fbjl	2017-01-01
1427	mutual	fbjl	2017-01-01
1419	mutual	fbjl	2017-01-01
4	mutual	fbjl	2017-01-02
28	mutual	fbjl	2017-01-02
62	mutual	fbjl	2017-01-02
5013	mutual	cyclops	2017-01-03
5024	mutual	fbjl	2017-01-03
12	mutual	fbjl	2017-01-03
1532	mutual	fbjl	2017-01-03
1424	mutual	fbjl	2017-01-04
28	mutual	fbjl	2017-01-04
5018	mutual	cyclops	2017-01-04
1491	mutual	fbjl	2017-01-04
1533	mutual	fbjl	2017-01-04
5013	mutual	cyclops	2017-01-04
1533	mutual	fbjl	2017-01-04
1425	mutual	fbjl	2017-01-05
5016	mutual	cyclops	2017-01-05
28	mutual	fbjl	2017-01-06
4	mutual	fbjl	2017-01-06
1433	mutual	fbjl	2017-01-07
35	mutual	fbjl	2017-01-07
1421	mutual	fbjl	2017-01-07
1419	mutual	fbjl	2017-01-07
1427	mutual	fbjl	2017-01-07
35	mutual	fbjl	2017-01-07
28	mutual	fbjl	2017-01-07
5	mutual	fbjl	2017-01-08
16	mutual	fbjl	2017-01-09
1419	mutual	fbjl	2017-01-09
1433	mutual	fbjl	2017-01-09
1421	mutual	fbjl	2017-01-09
1533	mutual	fbjl	2017-01-09
1533	mutual	fbjl	2017-01-09
8	mutual	fbjl	2017-01-10
62	mutual	fbjl	2017-01-10
11	mutual	fbjl	2017-01-11
11	mutual	fbjl	2017-01-11
11	mutual	fbjl	2017-01-11
11	mutual	fbjl	2017-01-11
11	mutual	fbjl	2017-01-11
11	mutual	fbjl	2017-01-11
30	mutual	fbjl	2017-01-11
1531	mutual	cyclops	2017-01-11
1418	mutual	fbjl	2017-01-11
3	mutual	fbjl	2017-01-12
16	mutual	fbjl	2017-01-12
30	mutual	fbjl	2017-01-12
9	mutual	fbjl	2017-01-13
1533	mutual	fbjl	2017-01-13
4	mutual	fbjl	2017-01-13
10	mutual	fbjl	2017-01-14
1427	mutual	fbjl	2017-01-14
1533	mutual	fbjl	2017-01-14
1533	mutual	fbjl	2017-01-14
7	mutual	fbjl	2017-01-14
1416	mutual	fbjl	2017-01-15
1423	mutual	fbjl	2017-01-15
79	mutual	fbjl	2017-01-16
79	mutual	fbjl	2017-01-16
1530	mutual	cyclops	2017-01-16
1533	mutual	fbjl	2017-01-16
1533	mutual	fbjl	2017-01-16
1533	mutual	fbjl2121121121212.1	2017-01-16
1533	mutual	fbjl and 1>1	2017-01-16
1533	mutual	fbjl" and "x"="x	2017-01-16
1533	mutual	fbjl" and "x"="y	2017-01-16
1533	mutual	fbjl	2017-01-16
66	mutual	fbjl	2017-01-16
10	mutual	fbjl	2017-01-18
62	mutual	fbjl	2017-01-18
66	mutual	fbjl	2017-01-18
66	mutual	fbjl	2017-01-18
66	mutual	fbjl	2017-01-18
1533	mutual	fbjl	2017-01-18
16	mutual	fbjl	2017-01-18
66	mutual	fbjl	2017-01-19
1530	mutual	cyclops	2017-01-19
66	mutual	fbjl	2017-01-19
1418	mutual	fbjl	2017-01-19
1418	mutual	fbjl aND 8=8	2017-01-19
1418	mutual	fbjl aND 8=3	2017-01-19
1418	mutual	fbjl\taND\t8=8	2017-01-19
1418	mutual	fbjl\taND\t8=3	2017-01-19
1418	mutual	fbjl/**/aND/**/8=8	2017-01-19
1418	mutual	fbjl/**/aND/**/8=3	2017-01-19
1418	mutual	fbjl	2017-01-19
1418	mutual	fbjl	2017-01-19
66	mutual	fbjl	2017-01-19
1418	mutual	fbjl	2017-01-19
1533	mutual	fbjl	2017-01-19
1532	mutual	fbjl	2017-01-20
3	mutual	fbjl	2017-01-20
1418	mutual	fbjl	2017-01-20
84	mutual	fbjl	2017-01-20
12	mutual	fbjl	2017-01-20
5017	mutual	cyclops	2017-01-20
1424	mutual	fbjl	2017-01-20
1533	mutual	fbjl	2017-01-20
1433	mutual	fbjl	2017-01-21
16	mutual	fbjl	2017-01-21
1533	mutual	fbjl	2017-01-21
1418	mutual	fbjl	2017-01-21
1533	mutual	fbjl	2017-01-21
1427	mutual	fbjl	2017-01-21
1418	mutual	fbjl	2017-01-21
5017	mutual	cyclops	2017-01-21
79	mutual	fbjl	2017-01-21
66	mutual	fbjl	2017-01-21
1530	mutual	cyclops	2017-01-22
1425	mutual	fbjl	2017-01-22
16	mutual	fbjl	2017-01-23
1531	mutual	cyclops	2017-01-23
16	mutual	fbjl	2017-01-23
1528	mutual	fbjl	2017-01-23
85	mutual	fbjl	2017-01-23
38	mutual	fbjl	2017-01-23
35	mutual	fbjl	2017-01-23
77	mutual	fbjl	2017-01-23
82	mutual	fbjl	2017-01-23
80	mutual	fbjl	2017-01-23
36	mutual	fbjl	2017-01-23
91	mutual	fbjl	2017-01-23
44	mutual	fbjl	2017-01-23
78	mutual	fbjl	2017-01-23
89	mutual	fbjl	2017-01-23
43	mutual	fbjl	2017-01-23
33	mutual	fbjl	2017-01-23
261	mutual	fbjl	2017-01-23
5	mutual	fbjl	2017-01-23
5015	mutual	cyclops	2017-01-23
4	mutual	fbjl	2017-01-24
1515	mutual	fbjl	2017-01-24
1516	mutual	fbjl	2017-01-24
1520	mutual	fbjl	2017-01-24
1519	mutual	fbjl	2017-01-24
1499	mutual	fbjl	2017-01-24
1514	mutual	fbjl	2017-01-24
1419	mutual	fbjl	2017-01-24
1531	mutual	cyclops	2017-01-24
1531	mutual	cyclops	2017-01-24
32	mutual	fbjl	2017-01-24
32	mutual	fbjl	2017-01-24
32	mutual	fbjl2121121121212.1	2017-01-24
32	mutual	fbjl and 1>1	2017-01-24
32	mutual	fbjl" and "x"="x	2017-01-24
32	mutual	fbjl" and "x"="y	2017-01-24
32	mutual	fbjl	2017-01-24
1533	mutual	fbjl	2017-01-25
1513	mutual	fbjl	2017-01-25
5764	mutual	fbjl	2017-01-25
1492	mutual	fbjl	2017-01-25
30	mutual	fbjl	2017-01-25
30	mutual	fbjl	2017-01-25
1498	mutual	fbjl	2017-01-25
1491	mutual	fbjl	2017-01-25
1512	mutual	fbjl	2017-01-25
71	mutual		2017-01-25
71	mutual	fbjl	2017-01-25
71	mutual		2017-01-25
1533	mutual	fbjl	2017-01-25
5782	mutual	fbjl	2017-01-25
1493	mutual	fbjl	2017-01-25
1521	mutual	fbjl	2017-01-25
16	mutual	fbjl	2017-01-25
3	mutual	fbjl	2017-01-26
1518	mutual	fbjl	2017-01-26
5765	mutual	fbjl	2017-01-26
71	mutual		2017-01-26
1533	mutual	fbjl	2017-01-26
4963	mutual	fbjl	2017-01-26
1517	mutual	fbjl	2017-01-26
1496	mutual	fbjl	2017-01-26
1531	mutual	cyclops	2017-01-26
1531	mutual	cyclops	2017-01-26
1531	mutual	cyclops	2017-01-27
1497	mutual	fbjl	2017-01-27
5017	mutual	cyclops	2017-01-27
1418	mutual	fbjl	2017-01-27
1418	mutual	fbjl	2017-01-27
1418	mutual	fbjl	2017-01-27
9	mutual	fbjl	2017-01-28
4	mutual	fbjl	2017-01-28
5015	mutual	cyclops	2017-01-28
66	mutual	fbjl	2017-01-28
5015	mutual	cyclops	2017-01-28
1433	mutual	fbjl	2017-01-29
1533	mutual	fbjl	2017-01-29
1427	mutual	fbjl	2017-01-29
16	mutual	fbjl	2017-01-29
1433	mutual	fbjl	2017-01-29
1427	mutual	fbjl	2017-01-30
1533	mutual	fbjl	2017-01-30
7	mutual	fbjl	2017-01-30
1423	mutual	fbjl	2017-01-30
1416	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
11	mutual	fbjl	2017-01-31
1533	mutual	fbjl	2017-01-31
30	mutual	fbjl	2017-01-31
8	mutual	fbjl	2017-02-01
813	mutual	cyclops	2017-02-01
9	mutual	fbjl	2017-02-01
8	mutual	fbjl	2017-02-01
66	mutual	fbjl	2017-02-01
6	mutual	fbjl	2017-02-01
7	mutual	fbjl	2017-02-01
18	mutual	fbjl	2017-02-02
17	mutual	fbjl	2017-02-02
1533	mutual	fbjl	2017-02-02
813	mutual	cyclops	2017-02-02
1420	mutual	fbjl	2017-02-02
1421	mutual	fbjl	2017-02-02
1434	mutual	fbjl	2017-02-03
1532	mutual	fbjl	2017-02-03
5015	mutual	cyclops	2017-02-03
1436	mutual	fbjl	2017-02-03
1428	mutual	fbjl	2017-02-03
1424	mutual	fbjl	2017-02-03
1416	mutual	fbjl	2017-02-03
1417	mutual	fbjl	2017-02-03
16	mutual	fbjl	2017-02-04
1532	mutual	fbjl	2017-02-04
1431	mutual	fbjl	2017-02-04
1427	mutual	fbjl	2017-02-04
1427	mutual	fbjl	2017-02-04
1433	mutual	fbjl	2017-02-04
5013	mutual	cyclops	2017-02-04
1531	mutual	cyclops	2017-02-05
12	mutual	fbjl	2017-02-05
5013	mutual	cyclops	2017-02-06
1425	mutual	fbjl	2017-02-06
16	mutual	fbjl	2017-02-06
1435	mutual	fbjl	2017-02-06
1426	mutual	fbjl	2017-02-06
1432	mutual	fbjl	2017-02-06
1419	mutual	fbjl	2017-02-06
1429	mutual	fbjl	2017-02-06
1441	mutual	fbjl	2017-02-06
1425	mutual	fbjl	2017-02-06
1440	mutual	fbjl	2017-02-06
1530	mutual	cyclops	2017-02-07
1452	mutual	fbjl	2017-02-07
1457	mutual	fbjl	2017-02-07
1465	mutual	fbjl	2017-02-07
1447	mutual	fbjl	2017-02-07
1446	mutual	fbjl	2017-02-07
1459	mutual	fbjl	2017-02-07
1449	mutual	fbjl	2017-02-07
1448	mutual	fbjl	2017-02-07
1466	mutual	fbjl	2017-02-07
1450	mutual	fbjl	2017-02-07
1467	mutual	fbjl	2017-02-07
1464	mutual	fbjl	2017-02-07
1454	mutual	fbjl	2017-02-07
1458	mutual	fbjl	2017-02-07
1456	mutual	fbjl	2017-02-07
1462	mutual	fbjl	2017-02-07
1453	mutual	fbjl	2017-02-07
1445	mutual	fbjl	2017-02-07
1444	mutual	fbjl	2017-02-07
1455	mutual	fbjl	2017-02-07
1463	mutual	fbjl	2017-02-07
1461	mutual	fbjl	2017-02-07
1460	mutual	fbjl	2017-02-07
1468	mutual	fbjl	2017-02-07
1451	mutual	fbjl	2017-02-07
19	mutual	fbjl	2017-02-07
10	mutual	fbjl	2017-02-07
41	mutual	fbjl	2017-02-07
90	mutual	fbjl	2017-02-07
32	mutual	fbjl	2017-02-07
1440	mutual	fbjl	2017-02-07
52	mutual	fbjl	2017-02-07
16	mutual	fbjl	2017-02-07
1531	mutual	cyclops	2017-02-07
71	mutual	fbjl	2017-02-07
5780	mutual	fbjl	2017-02-07
5	mutual	fbjl	2017-02-07
57	mutual	fbjl	2017-02-08
4	mutual	fbjl	2017-02-08
7	mutual	fbjl	2017-02-08
30	mutual	fbjl	2017-02-08
10	mutual	fbjl	2017-02-08
1533	mutual	fbjl	2017-02-09
35	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
32	mutual	fbjl	2017-02-09
5016	mutual	cyclops	2017-02-09
5016	mutual	cyclops	2017-02-09
1419	mutual	fbjl	2017-02-09
1510	mutual	fbjl	2017-02-10
74	mutual	fbjl	2017-02-10
1511	mutual	fbjl	2017-02-10
35	mutual	fbjl	2017-02-10
1427	mutual	fbjl	2017-02-10
1433	mutual	fbjl	2017-02-10
10	mutual	fbjl	2017-02-10
10	mutual	fbjl	2017-02-10
10	mutual	fbjl	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops2121121121212.1	2017-02-10
814	mutual	cyclops	2017-02-10
1531	mutual	cyclops	2017-02-11
1533	mutual		2017-02-11
1533	mutual		2017-02-11
9	mutual	fbjl	2017-02-11
1427	mutual	fbjl	2017-02-12
7	mutual	fbjl	2017-02-12
7	mutual	fbjl	2017-02-12
1433	mutual	fbjl	2017-02-13
7	mutual	fbjl	2017-02-13
8	mutual	fbjl	2017-02-13
30	mutual		2017-02-14
4	mutual	fbjl	2017-02-14
30	mutual	fbjl	2017-02-14
30	mutual	fbjl	2017-02-14
30	mutual	fbjl2121121121212.1	2017-02-14
30	mutual	fbjl and 1>1	2017-02-14
30	mutual	fbjl" and "x"="x	2017-02-14
30	mutual	fbjl" and "x"="y	2017-02-14
30	mutual	fbjl	2017-02-14
4	mutual	fbjl	2017-02-15
1533	mutual	fbjl	2017-02-15
1418	mutual	fbjl	2017-02-15
1427	mutual	fbjl	2017-02-15
1423	mutual	fbjl	2017-02-15
4	mutual	fbjl	2017-02-16
1416	mutual	fbjl	2017-02-16
1416	mutual	fbjl	2017-02-16
1416	mutual	fbjl	2017-02-16
5013	mutual	cyclops	2017-02-16
8	mutual	fbjl	2017-02-16
1433	mutual	fbjl	2017-02-16
1427	mutual	fbjl	2017-02-16
16	mutual	fbjl	2017-02-16
3	mutual	fbjl	2017-02-16
30	mutual	fbjl	2017-02-17
10	mutual	fbjl	2017-02-17
1424	mutual	fbjl	2017-02-18
1533	mutual	fbjl	2017-02-18
30	mutual	fbjl	2017-02-18
52	mutual	fbjl	2017-02-19
1532	mutual	fbjl	2017-02-19
10	mutual	fbjl	2017-02-19
1479	mutual	fbjl	2017-02-19
1476	mutual	fbjl	2017-02-19
1469	mutual	fbjl	2017-02-20
1480	mutual	fbjl	2017-02-20
1470	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
11	mutual	fbjl	2017-02-20
1472	mutual	fbjl	2017-02-20
1477	mutual	fbjl	2017-02-20
1473	mutual	fbjl	2017-02-20
1471	mutual	fbjl	2017-02-20
1478	mutual	fbjl	2017-02-20
7	mutual	fbjl	2017-02-20
1475	mutual	fbjl	2017-02-21
1474	mutual	fbjl	2017-02-21
7	mutual	fbjl	2017-02-21
64	mutual	fbjl	2017-02-21
51	mutual	fbjl	2017-02-22
16	mutual	fbjl	2017-02-22
5016	mutual	cyclops	2017-02-22
12	mutual	fbjl	2017-02-22
1480	mutual	fbjl	2017-02-22
5017	mutual	cyclops	2017-02-22
16	mutual	fbjl	2017-02-22
5	mutual	fbjl	2017-02-22
6	mutual	fbjl	2017-02-23
7	mutual	fbjl	2017-02-23
4	mutual	fbjl	2017-02-23
10	mutual	fbjl	2017-02-24
10	mutual	fbjl	2017-02-24
10	mutual	fbjl	2017-02-24
16	mutual	fbjl	2017-02-24
39	mutual	fbjl	2017-02-24
1427	mutual	fbjl	2017-02-24
1433	mutual	fbjl	2017-02-24
16	mutual	fbjl	2017-02-24
5017	mutual	cyclops	2017-02-24
51	mutual	fbjl	2017-02-25
8	mutual	fbjl	2017-02-25
62	mutual	fbjl	2017-02-25
1530	mutual	cyclops	2017-02-26
1433	mutual	fbjl	2017-02-26
1427	mutual	fbjl	2017-02-27
66	mutual	fbjl	2017-02-27
1425	mutual	fbjl	2017-02-27
1531	mutual	cyclops	2017-02-27
1531	mutual	cyclops	2017-02-27
5014	mutual	cyclops	2017-02-27
9	mutual	fbjl	2017-02-27
1419	mutual	fbjl	2017-02-27
1427	mutual	fbjl	2017-02-28
9	mutual	fbjl	2017-02-28
1433	mutual	fbjl	2017-02-28
9	mutual	fbjl	2017-02-28
64	mutual	fbjl	2017-02-28
30	mutual	fbjl	2017-02-28
7	mutual	fbjl	2017-02-28
30	mutual	fbjl	2017-03-01
1533	mutual	fbjl	2017-03-01
16	mutual	fbjl	2017-03-01
5015	mutual	cyclops	2017-03-01
1531	mutual	cyclops	2017-03-01
9	mutual	fbjl	2017-03-01
9	mutual		2017-03-01
9	mutual		2017-03-01
16	mutual	fbjl	2017-03-01
5015	mutual	cyclops	2017-03-02
1416	mutual	fbjl	2017-03-02
4	mutual	fbjl	2017-03-02
16	mutual	fbjl	2017-03-03
9	mutual		2017-03-03
1423	mutual	fbjl	2017-03-03
8	mutual	fbjl	2017-03-03
9	mutual	fbjl	2017-03-03
1427	mutual	fbjl	2017-03-04
1424	mutual	fbjl	2017-03-04
1533	mutual	fbjl	2017-03-04
25	mutual	fbjl	2017-03-04
1533	mutual	fbjl	2017-03-05
1533	mutual	fbjl	2017-03-06
4	mutual	fbjl	2017-03-06
10	mutual	fbjl	2017-03-06
4	mutual	fbjl	2017-03-06
1532	mutual	fbjl	2017-03-06
16	mutual	fbjl	2017-03-06
814	mutual	cyclops	2017-03-07
16	mutual	fbjl	2017-03-08
5790	mutual	fbjl	2017-03-08
5016	mutual	cyclops	2017-03-08
16	mutual	fbjl	2017-03-09
1531	mutual	cyclops	2017-03-09
3	mutual	fbjl	2017-03-09
813	mutual	cyclops	2017-03-09
813	mutual	cyclops	2017-03-09
1425	mutual	fbjl	2017-03-09
30	mutual	fbjl	2017-03-10
5	mutual	fbjl	2017-03-10
30	mutual	fbjl	2017-03-11
1427	mutual	fbjl	2017-03-11
1433	mutual	fbjl	2017-03-11
5013	mutual	cyclops	2017-03-11
16	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
11	mutual	fbjl	2017-03-12
30	mutual	fbjl	2017-03-12
30	mutual	fbjl	2017-03-12
30	mutual	fbjl	2017-03-12
30	mutual	fbjl	2017-03-12
5013	mutual	cyclops	2017-03-13
5015	mutual	cyclops	2017-03-13
5016	mutual	cyclops	2017-03-13
1530	mutual	cyclops	2017-03-13
1530	mutual	cyclops	2017-03-13
10	mutual	fbjl	2017-03-13
4	mutual	fbjl	2017-03-13
1433	mutual	fbjl	2017-03-13
7	mutual	fbjl	2017-03-14
1533	mutual	fbjl	2017-03-15
9	mutual	fbjl	2017-03-15
12	mutual	fbjl	2017-03-15
16	mutual	fbjl	2017-03-15
6	mutual	fbjl	2017-03-15
6	mutual		2017-03-15
10	mutual	fbjl	2017-03-16
10	mutual	fbjl	2017-03-16
9	mutual	fbjl	2017-03-16
71	mutual		2017-03-16
1533	mutual	fbjl	2017-03-16
1533	mutual	fbjl	2017-03-16
6	mutual	fbjl	2017-03-16
6	mutual	fbjl	2017-03-16
102	mutual	fbjl	2017-03-17
1531	mutual	cyclops	2017-03-17
6	mutual		2017-03-17
4	mutual	fbjl	2017-03-17
64	mutual	fbjl	2017-03-17
99	mutual		2017-03-18
99	mutual	fbjl	2017-03-18
99	mutual		2017-03-18
99	mutual	fbjl	2017-03-18
1424	mutual	fbjl	2017-03-18
8	mutual	fbjl	2017-03-18
1531	mutual	cyclops	2017-03-18
30	mutual	fbjl	2017-03-18
1427	mutual	fbjl	2017-03-18
1419	mutual	fbjl	2017-03-19
77	mutual		2017-03-19
1531	mutual	cyclops	2017-03-19
10	mutual	fbjl	2017-03-19
7	mutual	fbjl	2017-03-19
1427	mutual	fbjl	2017-03-20
1433	mutual	fbjl	2017-03-20
1533	mutual	fbjl	2017-03-20
10	mutual	fbjl	2017-03-20
1416	mutual	fbjl	2017-03-20
1533	mutual	fbjl	2017-03-20
1533	mutual	fbjl	2017-03-21
30	mutual	fbjl	2017-03-21
1533	mutual	fbjl	2017-03-21
16	mutual	fbjl	2017-03-21
51	mutual	fbjl	2017-03-21
51	mutual	fbjl	2017-03-21
1533	mutual	fbjl	2017-03-21
1533	mutual	fbjl	2017-03-21
1533	mutual	fbjl	2017-03-21
1423	mutual	fbjl	2017-03-22
1533	mutual	fbjl	2017-03-22
1533	mutual	fbjl	2017-03-22
35	mutual	fbjl	2017-03-22
1533	mutual	fbjl	2017-03-22
30	mutual	fbjl	2017-03-22
6	mutual		2017-03-22
1533	mutual	fbjl	2017-03-22
1533	mutual		2017-03-22
6	mutual		2017-03-22
1533	mutual	fbjl	2017-03-22
16	mutual	fbjl	2017-03-22
1533	mutual	fbjl	2017-03-23
6	mutual	fbjl	2017-03-23
6	mutual	fbjl	2017-03-23
1533	mutual	fbjl	2017-03-23
1533	mutual		2017-03-23
35	mutual	fbjl	2017-03-23
1533	mutual	fbjl	2017-03-23
6	mutual	fbjl	2017-03-23
3	mutual	fbjl	2017-03-23
1533	mutual	fbjl	2017-03-23
1531	mutual	cyclops	2017-03-23
1533	mutual	fbjl	2017-03-24
48	mutual	fbjl	2017-03-24
1533	mutual	fbjl	2017-03-24
99	mutual	fbjl	2017-03-24
1425	mutual	fbjl	2017-03-24
30	mutual	fbjl	2017-03-24
1533	mutual	fbjl	2017-03-24
1533	mutual	fbjl	2017-03-24
1533	mutual	fbjl	2017-03-24
5784	mutual	fbjl	2017-03-24
32	mutual		2017-03-24
5776	mutual	fbjl	2017-03-24
1423	mutual	fbjl	2017-03-24
1424	mutual	fbjl	2017-03-24
1533	mutual	fbjl	2017-03-25
1533	mutual	fbjl	2017-03-25
1533	mutual	fbjl	2017-03-25
1533	mutual	fbjl	2017-03-25
1533	mutual	fbjl	2017-03-25
4	mutual	fbjl	2017-03-25
1533	mutual	fbjl	2017-03-26
8	mutual		2017-03-26
1533	mutual	fbjl	2017-03-26
6	mutual		2017-03-26
1533	mutual	fbjl	2017-03-26
39	mutual	fbjl	2017-03-26
1480	mutual	fbjl	2017-03-26
1533	mutual	fbjl	2017-03-26
4	mutual	fbjl	2017-03-26
1533	mutual	fbjl	2017-03-27
102	mutual	fbjl	2017-03-27
1533	mutual	fbjl	2017-03-27
1533	mutual	fbjl	2017-03-27
1461	mutual	fbjl	2017-03-27
6	mutual	fbjl	2017-03-27
6	mutual	fbjl	2017-03-27
1533	mutual	fbjl	2017-03-27
102	mutual	fbjl	2017-03-28
1533	mutual	fbjl	2017-03-28
1532	mutual	fbjl	2017-03-28
1533	mutual	fbjl	2017-03-28
16	mutual	fbjl	2017-03-29
1530	mutual	cyclops	2017-03-30
1530	mutual	cyclops	2017-03-30
1433	mutual	fbjl	2017-03-31
5017	mutual	cyclops	2017-04-01
5791	mutual	fbjl	2017-04-02
5790	mutual	fbjl	2017-04-02
84	mutual	fbjl	2017-04-02
5015	mutual	cyclops	2017-04-04
8	mutual	fbjl	2017-04-04
30	mutual	fbjl	2017-04-04
1531	mutual	cyclops	2017-04-04
5015	mutual	cyclops	2017-04-04
1418	mutual	fbjl	2017-04-04
40	mutual	fbjl	2017-04-05
1531	mutual	cyclops	2017-04-06
1419	mutual	fbjl	2017-04-07
1531	mutual	cyclops	2017-04-08
1531	mutual	cyclops	2017-04-08
1533	mutual	fbjl	2017-04-08
77	mutual	fbjl	2017-04-08
1533	mutual	fbjl	2017-04-08
51	mutual	fbjl	2017-04-08
51	mutual	fbjl	2017-04-08
51	mutual	fbjl	2017-04-08
7	mutual	fbjl	2017-04-09
62	mutual	fbjl	2017-04-09
30	mutual	fbjl	2017-04-09
1454	mutual	fbjl	2017-04-10
1531	mutual	cyclops	2017-04-10
1492	mutual	fbjl	2017-04-10
1425	mutual	fbjl	2017-04-10
1533	mutual	fbjl	2017-04-11
39	mutual	fbjl	2017-04-11
10	mutual	fbjl	2017-04-12
813	mutual	cyclops	2017-04-12
10	mutual	fbjl	2017-04-13
813	mutual	cyclops	2017-04-13
6	mutual	fbjl	2017-04-13
6	mutual	fbjl	2017-04-15
52	mutual	fbjl	2017-04-15
52	mutual	fbjl aND 8=8	2017-04-15
52	mutual	fbjl/**/aND/**/8=8	2017-04-15
52	mutual	fbjl/**/aND/**/8=3	2017-04-15
52	mutual	fbjl	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl2121121121212.1	2017-04-15
32	mutual	fbjl and 1>1	2017-04-15
32	mutual	fbjl" and "x"="x	2017-04-15
32	mutual	fbjl" and "x"="y	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl	2017-04-15
32	mutual	fbjl AnD SLeeP(3)	2017-04-15
32	mutual	fbjl&&SlEEp(3)	2017-04-15
32	mutual	fbjl AnD BeNChMaRK(2999999,MD5(NOW()))	2017-04-15
32	mutual	fbjl&&BeNChMaRK(2999999,MD5(NOW()))	2017-04-15
5013	mutual	cyclops	2017-04-16
5013	mutual	cyclops	2017-04-17
10	mutual	fbjl	2017-04-17
10	mutual	fbjl	2017-04-17
1531	mutual	cyclops	2017-04-17
9	mutual		2017-04-17
30	mutual		2017-04-17
1531	mutual	cyclops	2017-04-17
1531	mutual	cyclops	2017-04-18
4	mutual	fbjl	2017-04-18
7	mutual	fbjl	2017-04-19
30	mutual	fbjl	2017-04-19
10	mutual	fbjl	2017-04-19
7	mutual	fbjl	2017-04-19
7	mutual	fbjl	2017-04-19
4	mutual	fbjl	2017-04-20
16	mutual	fbjl	2017-04-20
7	mutual	fbjl	2017-04-20
1531	mutual	cyclops	2017-04-20
30	mutual	fbjl	2017-04-20
30	mutual	fbjl	2017-04-20
5018	mutual	cyclops	2017-04-21
5018	mutual	cyclops	2017-04-21
71	mutual		2017-04-21
1433	mutual	fbjl	2017-04-21
5790	mutual	fbjl	2017-04-21
1433	mutual	fbjl	2017-04-22
1427	mutual	fbjl	2017-04-22
90	mutual	fbjl	2017-04-22
90	mutual	fbjl	2017-04-22
90	mutual	fbjl	2017-04-22
9	mutual	fbjl	2017-04-22
32	mutual	fbjl	2017-04-22
32	mutual	fbjl	2017-04-23
6	mutual		2017-04-23
1433	mutual	fbjl	2017-04-23
1433	mutual	fbjl	2017-04-24
35	mutual	fbjl	2017-04-24
40	mutual	fbjl	2017-04-24
1444	mutual	fbjl	2017-04-24
10	mutual	fbjl	2017-04-24
16	mutual	fbjl	2017-04-25
52	mutual	fbjl	2017-04-25
35	mutual	fbjl	2017-04-25
1531	mutual	cyclops	2017-04-25
71	mutual	fbjl	2017-04-26
71	mutual		2017-04-26
30	mutual	fbjl	2017-04-26
6	mutual	fbjl	2017-04-26
6	mutual	fbjl	2017-04-26
6	mutual	fbjl	2017-04-26
71	mutual	fbjl	2017-04-27
5015	mutual	cyclops	2017-04-28
30	mutual	fbjl	2017-04-28
6	mutual	fbjl	2017-04-29
6	mutual	fbjl	2017-04-29
1531	mutual	cyclops	2017-04-29
1433	mutual	fbjl	2017-04-29
1427	mutual	fbjl	2017-04-29
4	mutual	fbjl	2017-04-29
1533	mutual	fbjl	2017-04-30
6	mutual	fbjl	2017-04-30
6	mutual	fbjl	2017-04-30
6	mutual	fbjl	2017-04-30
8	mutual	fbjl	2017-05-01
1533	mutual		2017-05-01
1531	mutual	cyclops	2017-05-02
1433	mutual	fbjl	2017-05-02
1427	mutual	fbjl	2017-05-02
5015	mutual	cyclops	2017-05-02
1530	mutual	cyclops	2017-05-02
5017	mutual	cyclops	2017-05-03
16	mutual	fbjl	2017-05-03
66	mutual	fbjl	2017-05-05
8	mutual	fbjl	2017-05-05
52	mutual	fbjl	2017-05-05
7	mutual	fbjl	2017-05-05
51	mutual	fbjl	2017-05-05
9	mutual	fbjl	2017-05-05
1533	mutual	fbjl	2017-05-05
77	mutual	fbjl	2017-05-05
32	mutual	fbjl	2017-05-05
79	mutual	fbjl	2017-05-05
30	mutual	fbjl	2017-05-05
10	mutual	fbjl	2017-05-05
1531	mutual	cyclops	2017-05-05
66	mutual	fbjl	2017-05-05
6	mutual	fbjl	2017-05-06
48	mutual	fbjl	2017-05-06
99	mutual	fbjl	2017-05-06
5784	mutual	fbjl	2017-05-06
64	mutual	fbjl	2017-05-06
62	mutual	fbjl	2017-05-06
814	mutual	cyclops	2017-05-06
52	mutual	fbjl	2017-05-06
5017	mutual	cyclops	2017-05-06
5015	mutual	cyclops	2017-05-07
1531	mutual	cyclops	2017-05-07
30	mutual	fbjl	2017-05-08
4	mutual	fbjl	2017-05-08
4	mutual	fbjl aND 8=8	2017-05-08
4	mutual	fbjl aND 8=3	2017-05-08
4	mutual	fbjl\taND\t8=8	2017-05-08
4	mutual	fbjl\taND\t8=3	2017-05-08
4	mutual	fbjl/**/aND/**/8=8	2017-05-08
4	mutual	fbjl/**/aND/**/8=3	2017-05-08
62	mutual	fbjl	2017-05-08
1533	mutual	fbjl	2017-05-08
1533	mutual	fbjl	2017-05-08
1517	mutual	fbjl	2017-05-10
1433	mutual	fbjl	2017-05-10
1533	mutual	fbjl	2017-05-10
8	mutual	fbjl	2017-05-10
30	mutual	fbjl	2017-05-10
62	mutual	fbjl	2017-05-11
1533	mutual	fbjl	2017-05-11
8	mutual	fbjl	2017-05-11
1531	mutual	cyclops	2017-05-11
1533	mutual	fbjl	2017-05-12
1530	mutual	cyclops	2017-05-12
1533	mutual	fbjl	2017-05-12
1533	mutual	fbjl	2017-05-12
1531	mutual	cyclops	2017-05-13
30	mutual	fbjl	2017-05-13
1433	mutual	fbjl	2017-05-13
1433	mutual	fbjl	2017-05-13
1531	mutual	cyclops	2017-05-13
1433	mutual	fbjl	2017-05-13
62	mutual	fbjl	2017-05-13
1531	mutual	cyclops	2017-05-13
30	mutual	fbjl	2017-05-13
52	mutual	fbjl	2017-05-13
1433	mutual	fbjl	2017-05-14
62	mutual	fbjl	2017-05-14
4	mutual	fbjl	2017-05-14
1531	mutual	cyclops	2017-05-14
1531	mutual	cyclops	2017-05-14
30	mutual	fbjl	2017-05-14
1531	mutual	cyclops	2017-05-14
62	mutual	fbjl	2017-05-14
813	mutual	cyclops	2017-05-14
30	mutual	fbjl	2017-05-15
4	mutual	fbjl	2017-05-15
51	mutual	fbjl	2017-05-15
30	mutual	fbjl	2017-05-15
32	mutual	fbjl	2017-05-15
30	mutual	fbjl	2017-05-15
30	mutual	fbjl	2017-05-15
1531	mutual	cyclops	2017-05-15
16	mutual	fbjl	2017-05-15
9	mutual	fbjl	2017-05-15
62	mutual	fbjl	2017-05-15
30	mutual	fbjl	2017-05-16
30	mutual	fbjl	2017-05-16
30	mutual	fbjl	2017-05-16
1533	mutual	fbjl	2017-05-16
62	mutual	fbjl	2017-05-17
30	mutual	fbjl	2017-05-17
1533	mutual	fbjl	2017-05-17
30	mutual	fbjl	2017-05-17
62	mutual	fbjl	2017-05-17
30	mutual	fbjl	2017-05-17
1531	mutual	cyclops	2017-05-18
1433	mutual	fbjl	2017-05-18
62	mutual	fbjl	2017-05-18
71	mutual	fbjl	2017-05-18
71	mutual	fbjl	2017-05-18
71	mutual	fbjl2121121121212.1	2017-05-18
71	mutual	fbjl and 1>1	2017-05-18
71	mutual	fbjl" and "x"="x	2017-05-18
71	mutual	fbjl" and "x"="y	2017-05-18
71	mutual	fbjl	2017-05-18
28	mutual	fbjl	2017-05-18
36	mutual	fbjl	2017-05-18
1455	mutual	fbjl	2017-05-18
12	mutual	fbjl	2017-05-19
16	mutual	fbjl	2017-05-19
30	mutual	fbjl	2017-05-19
5013	mutual	cyclops	2017-05-19
1531	mutual	cyclops	2017-05-19
62	mutual	fbjl	2017-05-19
5018	mutual	cyclops	2017-05-19
5018	mutual	cyclops	2017-05-19
1531	mutual	cyclops	2017-05-20
71	mutual	fbjl	2017-05-20
1433	mutual	fbjl	2017-05-21
1531	mutual	cyclops	2017-05-21
71	mutual	fbjl	2017-05-21
71	mutual	fbjl	2017-05-21
71	mutual	fbjl	2017-05-21
71	mutual	fbjl	2017-05-21
71	mutual	fbjl	2017-05-21
71	mutual	fbjl	2017-05-21
1533	mutual	fbjl	2017-05-21
1531	mutual	cyclops	2017-05-21
10	mutual	fbjl	2017-05-21
30	mutual	fbjl	2017-05-21
1427	mutual	fbjl	2017-05-22
1533	mutual	fbjl	2017-05-22
30	mutual	fbjl	2017-05-24
1427	mutual	fbjl	2017-05-24
1533	mutual	fbjl	2017-05-24
1533	mutual	fbjl	2017-05-25
1531	mutual	cyclops	2017-05-25
30	mutual	fbjl	2017-05-26
1433	mutual	fbjl	2017-05-26
1531	mutual	cyclops	2017-05-26
1533	mutual	fbjl	2017-05-27
48	mutual	fbjl	2017-05-27
5016	mutual	cyclops	2017-05-27
6	mutual	fbjl	2017-05-27
16	mutual	fbjl	2017-05-27
1533	mutual	fbjl	2017-05-27
1533	mutual	fbjl	2017-05-27
62	mutual	fbjl	2017-05-27
35	mutual	fbjl	2017-05-27
1433	mutual	fbjl	2017-05-29
1531	mutual	cyclops	2017-05-29
1531	mutual	cyclops	2017-05-29
1531	mutual	cyclops	2017-05-31
1433	mutual	fbjl	2017-05-31
1433	mutual	fbjl	2017-06-01
1531	mutual	cyclops	2017-06-01
1533	mutual	fbjl	2017-06-01
52	mutual	fbjl	2017-06-01
30	mutual	fbjl	2017-06-01
9	mutual	fbjl	2017-06-01
7	mutual	fbjl	2017-06-01
32	mutual	fbjl	2017-06-01
4	mutual	fbjl	2017-06-01
51	mutual	fbjl	2017-06-01
1531	mutual	cyclops	2017-06-01
5015	mutual	cyclops	2017-06-02
5016	mutual	cyclops	2017-06-02
1530	mutual	cyclops	2017-06-02
9	mutual		2017-06-03
16	mutual	fbjl	2017-06-03
1531	mutual	cyclops	2017-06-03
1531	mutual	cyclops	2017-06-03
1455	mutual	fbjl	2017-06-03
1530	mutual	cyclops	2017-06-04
1421	mutual	fbjl	2017-06-04
1427	mutual	fbjl	2017-06-04
1419	mutual	fbjl	2017-06-04
1531	mutual	cyclops	2017-06-04
62	mutual	fbjl	2017-06-04
4963	mutual	fbjl	2017-06-05
102	mutual	fbjl	2017-06-05
1421	mutual	fbjl	2017-06-06
16	mutual	fbjl	2017-06-06
1427	mutual	fbjl	2017-06-06
1419	mutual	fbjl	2017-06-06
1531	mutual	cyclops	2017-06-06
1530	mutual	cyclops	2017-06-06
814	mutual	cyclops	2017-06-06
814	mutual	cyclops	2017-06-06
1531	mutual	cyclops	2017-06-06
1427	mutual	fbjl	2017-06-07
1531	mutual	cyclops	2017-06-07
1433	mutual	fbjl	2017-06-07
1533	mutual	fbjl	2017-06-07
10	mutual	fbjl	2017-06-07
4	mutual	fbjl	2017-06-07
5015	mutual	cyclops	2017-06-07
5018	mutual	cyclops	2017-06-07
5018	mutual	cyclops	2017-06-07
5017	mutual	cyclops	2017-06-08
16	mutual	fbjl	2017-06-09
1433	mutual	fbjl	2017-06-09
4963	mutual	fbjl	2017-06-09
1531	mutual	cyclops	2017-06-09
30	mutual	fbjl	2017-06-10
16	mutual	fbjl	2017-06-11
1427	mutual	fbjl	2017-06-11
5017	mutual	cyclops	2017-06-11
1531	mutual	cyclops	2017-06-11
1533	mutual	fbjl	2017-06-11
89	mutual	fbjl	2017-06-12
71	mutual	fbjl	2017-06-13
84	mutual	fbjl	2017-06-13
84	mutual	fbjl	2017-06-13
84	mutual	fbjl	2017-06-13
84	mutual	fbjl	2017-06-13
1533	mutual	fbjl	2017-06-13
6	mutual	fbjl	2017-06-13
1531	mutual	cyclops	2017-06-14
1433	mutual	fbjl	2017-06-14
1531	mutual	cyclops	2017-06-14
39	mutual	fbjl	2017-06-14
39	mutual	fbjl	2017-06-14
39	mutual	fbjl	2017-06-14
1533	mutual	fbjl	2017-06-14
84	mutual	fbjl	2017-06-14
71	mutual	fbjl	2017-06-14
1533	mutual	fbjl	2017-06-15
39	mutual	fbjl	2017-06-15
39	mutual	fbjl	2017-06-15
16	mutual	fbjl	2017-06-15
5026	mutual	fbjl	2017-06-16
51	mutual	fbjl	2017-06-16
30	mutual	fbjl	2017-06-16
32	mutual	fbjl	2017-06-16
5015	mutual	cyclops	2017-06-16
5015	mutual	cyclops	2017-06-16
5015	mutual	cyclops	2017-06-16
5015	mutual	cyclops	2017-06-16
5018	mutual	cyclops	2017-06-16
5018	mutual	cyclops	2017-06-16
51	mutual	fbjl	2017-06-17
30	mutual	fbjl	2017-06-17
9	mutual	fbjl	2017-06-17
52	mutual	fbjl	2017-06-17
32	mutual	fbjl	2017-06-17
4	mutual	fbjl	2017-06-17
1533	mutual	fbjl	2017-06-17
1531	mutual	cyclops	2017-06-17
1433	mutual	fbjl	2017-06-17
1427	mutual	fbjl	2017-06-18
16	mutual	fbjl	2017-06-18
1531	mutual	cyclops	2017-06-18
5016	mutual	cyclops	2017-06-19
90	mutual	fbjl	2017-06-19
1427	mutual	fbjl	2017-06-20
1533	mutual	fbjl	2017-06-20
1433	mutual	fbjl	2017-06-21
71	mutual		2017-06-21
1531	mutual	cyclops	2017-06-21
66	mutual	fbjl	2017-06-21
1427	mutual	fbjl	2017-06-21
5013	mutual	cyclops	2017-06-21
1531	mutual	cyclops	2017-06-22
5013	mutual	cyclops	2017-06-22
6	mutual		2017-06-22
1533	mutual	fbjl	2017-06-23
1433	mutual	fbjl	2017-06-23
1531	mutual	cyclops	2017-06-23
1433	mutual	fbjl	2017-06-23
1531	mutual	cyclops	2017-06-23
1531	mutual	cyclops	2017-06-24
1531	mutual	cyclops	2017-06-24
16	mutual	fbjl	2017-06-24
1427	mutual	fbjl	2017-06-24
4	mutual	fbjl	2017-06-24
1427	mutual	fbjl	2017-06-24
16	mutual	fbjl	2017-06-24
16	mutual	fbjl	2017-06-25
1531	mutual	cyclops	2017-06-26
1531	mutual	cyclops	2017-06-26
1531	mutual	cyclops	2017-06-26
62	mutual	fbjl	2017-06-27
66	mutual	fbjl	2017-06-28
66	mutual	fbjl	2017-06-28
66	mutual	fbjl	2017-06-28
1421	mutual	fbjl	2017-06-28
16	mutual	fbjl	2017-06-29
84	mutual	fbjl	2017-06-29
84	mutual	fbjl	2017-06-29
84	mutual	fbjl	2017-06-29
62	mutual	fbjl	2017-06-29
4	mutual	fbjl	2017-06-29
71	mutual	fbjl	2017-06-30
1531	mutual	cyclops	2017-06-30
1433	mutual	fbjl	2017-07-01
1531	mutual	cyclops	2017-07-01
1531	mutual	cyclops	2017-07-01
35	mutual	fbjl	2017-07-01
1531	mutual	cyclops	2017-07-01
39	mutual	fbjl	2017-07-01
1427	mutual	fbjl	2017-07-02
1531	mutual	cyclops	2017-07-02
7	mutual	fbjl	2017-07-02
52	mutual	fbjl	2017-07-02
9	mutual	fbjl	2017-07-02
30	mutual	fbjl	2017-07-02
32	mutual	fbjl	2017-07-02
4	mutual	fbjl	2017-07-02
84	mutual	fbjl	2017-07-02
84	mutual	fbjl	2017-07-02
84	mutual	fbjl	2017-07-02
66	mutual	fbjl	2017-07-03
1531	mutual	cyclops	2017-07-03
1533	mutual		2017-07-03
1531	mutual	cyclops	2017-07-04
1427	mutual	fbjl	2017-07-04
16	mutual	fbjl	2017-07-04
1421	mutual	fbjl	2017-07-04
1531	mutual	cyclops	2017-07-04
9	mutual	fbjl	2017-07-04
3	mutual	fbjl	2017-07-04
3	mutual	fbjl	2017-07-04
8	mutual	fbjl	2017-07-04
6	mutual	fbjl	2017-07-04
7	mutual	fbjl	2017-07-04
5	mutual	fbjl	2017-07-04
4	mutual	fbjl	2017-07-05
12	mutual	fbjl	2017-07-05
10	mutual	fbjl	2017-07-05
16	mutual	fbjl	2017-07-05
11	mutual	fbjl	2017-07-05
16	mutual	fbjl	2017-07-05
1420	mutual	fbjl	2017-07-05
1421	mutual	fbjl	2017-07-05
51	mutual	fbjl	2017-07-05
1421	mutual	fbjl	2017-07-06
1427	mutual	fbjl	2017-07-06
16	mutual	fbjl	2017-07-06
28	mutual	fbjl	2017-07-06
1531	mutual	cyclops	2017-07-06
1531	mutual	cyclops	2017-07-06
1433	mutual	fbjl	2017-07-06
6	mutual	fbjl	2017-07-06
32	mutual	fbjl	2017-07-07
1433	mutual	fbjl	2017-07-07
1531	mutual	cyclops	2017-07-07
1530	mutual	cyclops	2017-07-08
5016	mutual	cyclops	2017-07-08
1532	mutual	fbjl	2017-07-08
5780	mutual	fbjl	2017-07-09
1416	mutual	fbjl	2017-07-09
1418	mutual	fbjl	2017-07-09
1417	mutual	fbjl	2017-07-09
1526	mutual	fbjl	2017-07-09
69	mutual	fbjl	2017-07-09
27	mutual	fbjl	2017-07-09
26	mutual	fbjl	2017-07-09
24	mutual	fbjl	2017-07-09
1483	mutual	fbjl	2017-07-09
1481	mutual	fbjl	2017-07-09
1485	mutual	fbjl	2017-07-09
1486	mutual	fbjl	2017-07-09
5781	mutual	fbjl	2017-07-09
1482	mutual	fbjl	2017-07-09
1527	mutual	fbjl	2017-07-09
1484	mutual	fbjl	2017-07-09
1488	mutual	fbjl	2017-07-09
1489	mutual	fbjl	2017-07-09
5014	mutual	cyclops	2017-07-09
5026	mutual	fbjl	2017-07-09
5015	mutual	cyclops	2017-07-09
5776	mutual	fbjl	2017-07-09
1423	mutual	fbjl	2017-07-09
1424	mutual	fbjl	2017-07-09
1425	mutual	fbjl	2017-07-09
1419	mutual	fbjl	2017-07-09
1531	mutual	cyclops	2017-07-09
1531	mutual	cyclops	2017-07-09
16	mutual	fbjl	2017-07-09
1427	mutual	fbjl	2017-07-09
5015	mutual	cyclops	2017-07-10
4	mutual	fbjl	2017-07-10
1531	mutual	cyclops	2017-07-10
1433	mutual	fbjl	2017-07-10
30	mutual	fbjl	2017-07-10
5018	mutual	cyclops	2017-07-11
1529	mutual	cyclops	2017-07-11
5024	mutual	fbjl	2017-07-11
1491	mutual	fbjl	2017-07-11
1529	mutual	cyclops	2017-07-11
5024	mutual	fbjl	2017-07-11
5017	mutual	cyclops	2017-07-11
10	mutual	fbjl	2017-07-11
16	mutual	fbjl	2017-07-11
1531	mutual	cyclops	2017-07-12
1433	mutual	fbjl	2017-07-12
1531	mutual	cyclops	2017-07-12
8	mutual	fbjl	2017-07-12
5017	mutual	cyclops	2017-07-12
16	mutual	fbjl	2017-07-13
1530	mutual	cyclops	2017-07-13
5017	mutual	cyclops	2017-07-14
1433	mutual	fbjl	2017-07-14
1531	mutual	cyclops	2017-07-14
6	mutual	fbjl	2017-07-14
1531	mutual	cyclops	2017-07-14
1533	mutual	fbjl	2017-07-14
16	mutual	fbjl	2017-07-15
1427	mutual	fbjl	2017-07-15
1533	mutual	fbjl	2017-07-15
1531	mutual	cyclops	2017-07-15
16	mutual	fbjl	2017-07-16
16	mutual	fbjl	2017-07-16
24	mutual	fbjl	2017-07-16
814	mutual	cyclops	2017-07-16
1531	mutual	cyclops	2017-07-16
1427	mutual	fbjl	2017-07-17
16	mutual	fbjl	2017-07-17
1421	mutual	fbjl	2017-07-17
1531	mutual	cyclops	2017-07-17
1530	mutual	cyclops	2017-07-17
1530	mutual	cyclops	2017-07-17
1530	mutual	cyclops	2017-07-17
1531	mutual	cyclops	2017-07-17
1533	mutual	fbjl	2017-07-18
1531	mutual	cyclops	2017-07-18
51	mutual	fbjl	2017-07-18
1531	mutual	cyclops	2017-07-19
7	mutual	fbjl	2017-07-19
9	mutual	fbjl	2017-07-19
32	mutual	fbjl	2017-07-19
4	mutual	fbjl	2017-07-19
52	mutual	fbjl	2017-07-19
30	mutual	fbjl	2017-07-19
51	mutual	fbjl	2017-07-19
16	mutual	fbjl	2017-07-20
1421	mutual	fbjl	2017-07-20
1427	mutual	fbjl	2017-07-20
30	mutual		2017-07-20
1531	mutual	cyclops	2017-07-20
813	mutual	cyclops	2017-07-20
16	mutual	fbjl	2017-07-20
1427	mutual	fbjl	2017-07-20
1533	mutual	fbjl	2017-07-21
1531	mutual	cyclops	2017-07-21
1533	mutual	fbjl	2017-07-22
1531	mutual	cyclops	2017-07-22
1533	mutual	fbjl	2017-07-22
1427	mutual	fbjl	2017-07-23
1421	mutual	fbjl	2017-07-23
16	mutual	fbjl	2017-07-23
1531	mutual	cyclops	2017-07-23
1531	mutual	cyclops	2017-07-24
1492	mutual	fbjl	2017-07-24
5013	mutual	cyclops	2017-07-24
1531	mutual	cyclops	2017-07-24
10	mutual	fbjl	2017-07-25
1531	mutual	cyclops	2017-07-25
5013	mutual	cyclops	2017-07-25
30	mutual	fbjl	2017-07-25
1533	mutual	fbjl	2017-07-26
30	mutual	fbjl	2017-07-26
1427	mutual	fbjl	2017-07-26
1531	mutual	cyclops	2017-07-26
1427	mutual	fbjl	2017-07-27
5013	mutual	cyclops	2017-07-27
5016	mutual	cyclops	2017-07-28
5016	mutual	cyclops	2017-07-28
5016	mutual	cyclops	2017-07-28
5016	mutual	cyclops	2017-07-28
5016	mutual	cyclops	2017-07-28
5016	mutual	cyclops	2017-07-28
6	mutual	fbjl	2017-07-29
1433	mutual	fbjl	2017-07-29
1427	mutual	fbjl	2017-07-29
1433	mutual	fbjl	2017-07-30
1531	mutual	cyclops	2017-07-30
1427	mutual	fbjl	2017-07-30
16	mutual	fbjl	2017-07-31
16	mutual	fbjl	2017-08-01
16	mutual	fbjl	2017-08-02
1531	mutual	cyclops	2017-08-02
1421	mutual	fbjl	2017-08-02
1531	mutual	cyclops	2017-08-02
1433	mutual	fbjl	2017-08-02
7	mutual	fbjl	2017-08-03
4	mutual	fbjl	2017-08-03
32	mutual	fbjl	2017-08-03
52	mutual	fbjl	2017-08-03
30	mutual	fbjl	2017-08-03
9	mutual	fbjl	2017-08-03
51	mutual	fbjl	2017-08-03
57	mutual	fbjl	2017-08-03
9	mutual		2017-08-03
1531	mutual	cyclops	2017-08-04
1433	mutual	fbjl	2017-08-04
1421	mutual	fbjl	2017-08-04
1531	mutual	cyclops	2017-08-04
62	mutual	fbjl	2017-08-05
1531	mutual	cyclops	2017-08-05
39	mutual	fbjl	2017-08-06
1531	mutual	cyclops	2017-08-06
4	mutual	fbjl	2017-08-06
1531	mutual	cyclops	2017-08-07
1531	mutual	cyclops	2017-08-07
1531	mutual	cyclops	2017-08-08
1531	mutual	cyclops	2017-08-08
1531	mutual	cyclops	2017-08-09
1427	mutual	fbjl	2017-08-09
35	mutual	fbjl	2017-08-09
1433	mutual	fbjl	2017-08-09
1531	mutual	cyclops	2017-08-10
1531	mutual	cyclops	2017-08-10
5782	mutual	fbjl	2017-08-10
16	mutual	fbjl	2017-08-10
1421	mutual	fbjl	2017-08-10
1531	mutual	cyclops	2017-08-10
30	mutual	fbjl	2017-08-11
1531	mutual	cyclops	2017-08-11
1531	mutual	cyclops	2017-08-11
1421	mutual	fbjl	2017-08-11
1433	mutual	fbjl	2017-08-11
1530	mutual	cyclops	2017-08-11
1531	mutual	cyclops	2017-08-12
1531	mutual	cyclops	2017-08-12
1530	mutual	cyclops	2017-08-12
4	mutual	fbjl	2017-08-12
6	mutual	fbjl	2017-08-12
1531	mutual	cyclops	2017-08-13
1531	mutual	cyclops	2017-08-13
1531	mutual	cyclops	2017-08-14
71	mutual	fbjl	2017-08-14
84	mutual	fbjl	2017-08-14
1421	mutual	fbjl	2017-08-14
1531	mutual	cyclops	2017-08-14
5018	mutual	cyclops	2017-08-14
5018	mutual	cyclops	2017-08-14
1531	mutual	cyclops	2017-08-15
16	mutual	fbjl	2017-08-15
1433	mutual	fbjl	2017-08-17
84	mutual	fbjl	2017-08-17
7	mutual	fbjl	2017-08-17
30	mutual	fbjl	2017-08-17
32	mutual	fbjl	2017-08-17
4	mutual	fbjl	2017-08-17
52	mutual	fbjl	2017-08-17
51	mutual	fbjl	2017-08-17
9	mutual	fbjl	2017-08-17
10	mutual	fbjl	2017-08-17
1531	mutual	cyclops	2017-08-17
1533	mutual	fbjl	2017-08-18
5015	mutual	cyclops	2017-08-18
1433	mutual	fbjl	2017-08-19
84	mutual	fbjl	2017-08-19
1533	mutual	fbjl	2017-08-19
5015	mutual	cyclops	2017-08-19
1531	mutual	cyclops	2017-08-20
1433	mutual	fbjl	2017-08-20
1533	mutual	fbjl	2017-08-20
16	mutual	fbjl	2017-08-21
16	mutual	fbjl	2017-08-21
1427	mutual	fbjl	2017-08-21
16	mutual	fbjl	2017-08-21
5015	mutual	cyclops	2017-08-21
16	mutual	fbjl	2017-08-21
5017	mutual	cyclops	2017-08-22
1531	mutual	cyclops	2017-08-22
1533	mutual	fbjl	2017-08-22
16	mutual	fbjl	2017-08-23
1427	mutual	fbjl	2017-08-23
1531	mutual	cyclops	2017-08-24
6	mutual		2017-08-24
1433	mutual	fbjl	2017-08-24
1531	mutual	cyclops	2017-08-24
1531	mutual	cyclops	2017-08-24
1433	mutual	fbjl	2017-08-26
30	mutual	fbjl	2017-08-26
1531	mutual	cyclops	2017-08-26
16	mutual	fbjl	2017-08-26
1427	mutual	fbjl	2017-08-26
813	mutual	cyclops	2017-08-27
6	mutual	fbjl	2017-08-27
1531	mutual	cyclops	2017-08-27
16	mutual	fbjl	2017-08-27
4	mutual	fbjl	2017-08-27
1531	mutual	cyclops	2017-08-28
1433	mutual	fbjl	2017-08-28
1531	mutual	cyclops	2017-08-28
5766	mutual	fbjl	2017-08-29
814	mutual	cyclops	2017-08-29
1531	mutual	cyclops	2017-08-29
5014	mutual	cyclops	2017-08-29
1531	mutual	cyclops	2017-08-29
813	mutual	cyclops	2017-08-30
1531	mutual		2017-08-30
16	mutual	fbjl	2017-08-30
1533	mutual	fbjl	2017-08-30
28	mutual		2017-08-31
10	mutual		2017-08-31
1531	mutual	cyclops	2017-08-31
16	mutual	fbjl	2017-08-31
1531	mutual	cyclops	2017-08-31
1531	mutual	cyclops	2017-08-31
5766	mutual	fbjl	2017-09-01
814	mutual	cyclops	2017-09-01
814	mutual	cyclops	2017-09-01
30	mutual	fbjl	2017-09-01
7	mutual	fbjl	2017-09-01
51	mutual	fbjl	2017-09-01
4	mutual	fbjl	2017-09-01
52	mutual	fbjl	2017-09-01
9	mutual	fbjl	2017-09-01
5014	mutual	cyclops	2017-09-01
814	mutual	cyclops	2017-09-01
52	mutual	fbjl	2017-09-01
1533	mutual		2017-09-01
4	mutual		2017-09-02
84	mutual	fbjl	2017-09-02
4	mutual	fbjl	2017-09-03
4	mutual	http://www.google.com	2017-09-03
1533	mutual	fbjl	2017-09-03
1531	mutual	cyclops	2017-09-03
52	mutual	fbjl	2017-09-04
5784	mutual	fbjl	2017-09-04
1531	mutual	cyclops	2017-09-05
1531	mutual	cyclops	2017-09-05
1433	mutual	fbjl	2017-09-05
16	mutual	fbjl	2017-09-05
1427	mutual	fbjl	2017-09-05
1533	mutual	fbjl	2017-09-06
62	mutual	fbjl	2017-09-07
24	mutual	fbjl	2017-09-07
1531	mutual	cyclops	2017-09-08
1533	mutual	fbjl	2017-09-08
1433	mutual	fbjl	2017-09-09
35	mutual	fbjl	2017-09-10
1533	mutual	fbjl	2017-09-10
62	mutual	fbjl	2017-09-10
1427	mutual	fbjl	2017-09-10
6	mutual	fbjl	2017-09-10
1433	mutual	fbjl	2017-09-11
1531	mutual	cyclops	2017-09-11
1427	mutual	fbjl	2017-09-11
5791	mutual	fbjl	2017-09-12
1531	mutual	cyclops	2017-09-12
1530	mutual	cyclops	2017-09-13
1427	mutual	fbjl	2017-09-13
1531	mutual	cyclops	2017-09-13
1531	mutual	cyclops	2017-09-13
1530	mutual	cyclops	2017-09-14
16	mutual	fbjl	2017-09-14
5014	mutual	cyclops	2017-09-15
1531	mutual	cyclops	2017-09-15
64	mutual	fbjl	2017-09-15
52	mutual	fbjl	2017-09-15
32	mutual	fbjl	2017-09-15
30	mutual	fbjl	2017-09-15
4	mutual	fbjl	2017-09-15
7	mutual	fbjl	2017-09-15
9	mutual	fbjl	2017-09-15
52	mutual	fbjl	2017-09-16
814	mutual	cyclops	2017-09-16
52	mutual	fbjl	2017-09-16
1533	mutual	fbjl	2017-09-16
5014	mutual	cyclops	2017-09-16
5014	mutual	cyclops	2017-09-17
5014	mutual	cyclops	2017-09-17
28	mutual	fbjl	2017-09-17
1531	mutual	cyclops	2017-09-17
1531	mutual	cyclops	2017-09-18
1531	mutual	cyclops	2017-09-18
16	mutual	fbjl	2017-09-19
1531	mutual	cyclops	2017-09-19
5017	mutual	cyclops	2017-09-19
1531	mutual	cyclops	2017-09-20
71	mutual		2017-09-20
1531	mutual	cyclops	2017-09-20
1531	mutual	cyclops	2017-09-21
5015	mutual	cyclops	2017-09-21
1531	mutual	cyclops	2017-09-21
5015	mutual	cyclops	2017-09-21
1531	mutual	cyclops	2017-09-22
1531	mutual		2017-09-22
5	mutual	fbjl	2017-09-22
16	mutual	fbjl	2017-09-22
11	mutual	fbjl	2017-09-22
16	mutual	fbjl	2017-09-23
1531	mutual	cyclops	2017-09-23
1531	mutual	cyclops	2017-09-24
5017	mutual	cyclops	2017-09-24
5017	mutual	cyclops	2017-09-25
16	mutual	fbjl	2017-09-26
16	mutual	fbjl	2017-09-26
5015	mutual	cyclops	2017-09-26
5018	mutual	cyclops	2017-09-26
10	mutual	fbjl	2017-09-26
1531	mutual	cyclops	2017-09-27
4	mutual		2017-09-27
1465	mutual	fbjl	2017-09-27
1531	mutual	cyclops	2017-09-27
16	mutual	fbjl	2017-09-27
39	mutual		2017-09-28
16	mutual	fbjl	2017-09-28
1531	mutual	cyclops	2017-09-28
16	mutual	fbjl	2017-09-29
1531	mutual	cyclops	2017-09-29
5014	mutual	cyclops	2017-09-29
52	mutual	fbjl	2017-09-30
30	mutual	fbjl	2017-09-30
32	mutual	fbjl	2017-09-30
7	mutual	fbjl	2017-09-30
51	mutual	fbjl	2017-09-30
4	mutual	fbjl	2017-09-30
1433	mutual	fbjl	2017-09-30
4	mutual		2017-09-30
5016	mutual		2017-10-01
813	mutual	cyclops	2017-10-01
39	mutual		2017-10-01
1531	mutual	cyclops	2017-10-02
1531	mutual	cyclops	2017-10-02
90	mutual	fbjl	2017-10-02
5014	mutual	cyclops	2017-10-02
1531	mutual	cyclops	2017-10-03
5017	mutual	cyclops	2017-10-04
47	mutual	fbjl	2017-10-04
1531	mutual	cyclops	2017-10-04
1531	mutual	cyclops	2017-10-04
1531	mutual	cyclops	2017-10-05
5766	mutual	fbjl	2017-10-05
1427	mutual	fbjl	2017-10-05
1433	mutual	fbjl	2017-10-05
16	mutual	fbjl	2017-10-05
1433	mutual	fbjl	2017-10-05
5017	mutual	cyclops	2017-10-08
1531	mutual	cyclops	2017-10-08
1531	mutual	cyclops	2017-10-08
1533	mutual	fbjl	2017-10-09
1491	mutual	fbjl	2017-10-09
5024	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5787	mutual	fbjl	2017-10-09
5017	mutual	cyclops	2017-10-09
5024	mutual	fbjl	2017-10-09
5017	mutual	cyclops	2017-10-09
5791	mutual	fbjl	2017-10-09
5017	mutual	cyclops	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5788	mutual	fbjl	2017-10-09
5014	mutual	cyclops	2017-10-09
1427	mutual	fbjl	2017-10-09
814	mutual	cyclops	2017-10-09
814	mutual	cyclops	2017-10-09
1450	mutual	fbjl	2017-10-10
5018	mutual	cyclops	2017-10-10
5018	mutual	cyclops	2017-10-10
1440	mutual	fbjl	2017-10-10
28	mutual	fbjl	2017-10-11
1531	mutual	cyclops	2017-10-11
1531	mutual	cyclops	2017-10-11
1433	mutual	fbjl	2017-10-11
1529	mutual	cyclops	2017-10-11
1433	mutual	fbjl	2017-10-11
1427	mutual	fbjl	2017-10-11
35	mutual	fbjl	2017-10-12
1531	mutual	cyclops	2017-10-12
1531	mutual	cyclops	2017-10-12
1531	mutual	cyclops	2017-10-12
1531	mutual	cyclops	2017-10-12
35	mutual	fbjl	2017-10-12
1531	mutual	cyclops	2017-10-14
16	mutual	fbjl	2017-10-14
1531	mutual	cyclops	2017-10-14
1531	mutual	cyclops	2017-10-14
1427	mutual	fbjl	2017-10-15
1531	mutual	cyclops	2017-10-15
1531	mutual	cyclops	2017-10-15
1531	mutual	cyclops	2017-10-16
1530	mutual	cyclops	2017-10-16
1529	mutual	cyclops	2017-10-17
1491	mutual	fbjl	2017-10-17
5017	mutual	cyclops	2017-10-17
5017	mutual	cyclops	2017-10-17
5017	mutual	cyclops	2017-10-17
5020	mutual	fbjl	2017-10-17
5017	mutual	cyclops	2017-10-17
5787	mutual	fbjl	2017-10-17
5788	mutual	fbjl	2017-10-17
1501	mutual	fbjl	2017-10-17
5024	mutual	fbjl	2017-10-17
5018	mutual	cyclops	2017-11-27
1530	mutual	cyclops	2017-12-11
12	mutual	fbjl	2017-12-27
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
5018	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
1531	mutual	cyclops	2018-01-17
5015	mutual	cyclops	2018-01-17
5791	mutual	fbjl	2018-01-17
1530	mutual	cyclops	2018-01-17
5018	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
1492	mutual	fbjl	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5014	mutual	cyclops	2018-01-17
5017	mutual	cyclops	2018-02-12
5018	mutual	cyclops	2018-02-12
5015	mutual	cyclops	2018-02-28
5016	mutual	cyclops	2018-02-28
1530	mutual	cyclops	2018-03-02
5790	mutual	fbjl	2018-03-05
5015	mutual	cyclops	2018-04-04
5016	mutual	cyclops	2018-04-04
5791	mutual	fbjl	2018-04-16
5790	mutual	fbjl	2018-04-16
5016	mutual	cyclops	2018-04-19
5018	mutual	cyclops	2018-04-19
5015	mutual	cyclops	2018-04-23
1530	mutual	cyclops	2018-04-23
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-14
5018	mutual	cyclops	2018-05-15
5018	mutual	cyclops	2018-05-15
5014	mutual	cyclops	2018-06-04
5015	mutual	cyclops	2018-06-07
5018	mutual	cyclops	2018-06-15
1529	mutual	cyclops	2018-06-26
5015	mutual	cyclops	2018-06-28
5016	mutual	cyclops	2018-06-28
5016	mutual	cyclops	2018-06-28
5016	mutual	cyclops	2018-06-28
1531	mutual	cyclops	2018-06-28
1531	mutual	cyclops	2018-06-28
1531	mutual	cyclops	2018-06-28
1531	mutual	cyclops	2018-06-28
1529	mutual	cyclops	2018-06-28
5788	mutual	fbjl	2018-07-10
12	mutual	fbjl	2018-07-10
1465	mutual	fbjl	2018-07-10
47	mutual	fbjl	2018-07-10
5018	mutual	cyclops	2018-07-13
5018	mutual	cyclops	2018-07-13
5791	mutual	fbjl	2018-07-17
5781	mutual	fbjl	2018-07-23
5791	mutual	fbjl	2018-08-28
1530	mutual	cyclops	2018-09-14
1491	mutual	fbjl	2018-09-17
1501	mutual	fbjl	2018-09-17
5024	mutual	fbjl	2018-09-17
1529	mutual	cyclops	2018-09-17
5020	mutual	fbjl	2018-09-17
1530	mutual	cyclops	2018-09-17
5017	mutual	cyclops	2018-09-17
5787	mutual	fbjl	2018-09-17
5788	mutual	fbjl	2018-09-17
1530	mutual	cyclops	2018-09-27
5018	mutual	cyclops	2018-10-01
5018	mutual	cyclops	2018-10-01
5018	mutual	cyclops	2018-10-01
5018	mutual	cyclops	2018-10-01
5018	mutual	cyclops	2018-10-01
5017	mutual	cyclops	2018-10-01
1491	mutual	fbjl	2018-10-01
5787	mutual	fbjl	2018-10-01
5015	mutual	cyclops	2018-10-03
5015	mutual	cyclops	2018-10-03
5016	mutual	cyclops	2018-10-03
5015	mutual	cyclops	2018-10-15
813	mutual	cyclops	2018-10-29
1530	mutual	cyclops	2018-10-29
1530	mutual	cyclops	2018-10-29
1530	mutual	cyclops	2018-11-02
1529	mutual	cyclops	2018-11-05
5015	mutual	cyclops	2018-12-03
5018	mutual	cyclops	2019-01-25
5018	mutual	cyclops	2019-01-25
5018	mutual	cyclops	2019-01-25
5017	mutual	cyclops	2019-01-25
51	mutual	fbjl	2019-02-08
51	mutual	fbjl	2019-02-08
5018	mutual	cyclops	2019-03-01
5014	mutual	cyclops	2019-03-01
5013	mutual	cyclops	2019-03-01
1530	mutual	cyclops	2019-03-06
1530	mutual	cyclops	2019-03-18
1530	mutual	cyclops	2019-03-18
1530	mutual	cyclops	2019-03-18
8	mutual	fbjl	2019-03-18
1530	mutual	cyclops	2019-03-18
5015	mutual	cyclops	2019-03-20
5015	mutual	cyclops	2019-03-20
1530	mutual	cyclops	2019-03-22
1530	mutual	cyclops	2019-03-22
1530	mutual	cyclops	2019-03-22
813	mutual	cyclops	2019-03-25
5013	mutual	cyclops	2019-03-25
5017	mutual	cyclops	2019-03-25
5015	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
813	mutual	cyclops	2019-03-25
5013	mutual	cyclops	2019-03-25
5017	mutual	cyclops	2019-03-25
5015	mutual	cyclops	2019-03-25
5017	mutual	cyclops	2019-03-25
813	mutual	cyclops	2019-03-25
5013	mutual	cyclops	2019-03-25
5017	mutual	cyclops	2019-03-25
5015	mutual	cyclops	2019-03-25
5013	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
1530	mutual	cyclops	2019-03-25
58	mutual	fbjl	2019-04-11
1530	mutual	cyclops	2019-05-06
1530	mutual	cyclops	2019-05-06
5014	mutual	cyclops	2019-05-06
5014	mutual	cyclops	2019-05-06
5015	mutual	cyclops	2019-05-06
5016	mutual	cyclops	2019-05-06
1529	mutual	cyclops	2019-05-06
813	mutual	cyclops	2019-05-06
1531	mutual	cyclops	2019-05-06
5013	mutual	cyclops	2019-05-06
5017	mutual	cyclops	2019-05-06
5018	mutual	cyclops	2019-05-06
5016	mutual	cyclops	2019-05-06
5794	mutual	cyclops	2019-05-07
5016	mutual	cyclops	2019-05-07
5016	mutual	cyclops	2019-05-08
\.


--
-- Data for Name: revistes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY revistes (id, nom, url, cat, embargo, paquet, resum_cat, username, passwd, disponible, comentari, comentari_cast) FROM stdin;
921	Comparative and General Pharmacology	http://www.sciencedirect.com/science/journal/00104035	001		sdirect						
107	Administration and Policy in Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=55623		365	pq				1999 --		
648	Health Services Research (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=26127			pq						
703	Journal of Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=34485			pq				1997 - 2000		
2069	MD Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67461			pq				2005 --		
499	Psychology and Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37367			pq				1998 --		
3	Advances in Physiology Education 	http://advan.physiology.org/			fbjl				1989 -		
361	Journal of Inherited Metabolic Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55670		365	pq				1998 --		
362	Journal of Interventional Cardiac Electrophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55671		365	pq				1999 --		
1423	BMC Biochemistry 	http://www.biomedcentral.com/bmcbiochem/			fbjl				2000 -		
1457	BMC Medicine	http://www.biomedcentral.com/bmcmed/			fbjl				2003 -		
25	Chronic Diseases in Canada	http://www.phac-aspc.gc.ca/publicat/cdic-mcc/			fbjl				1995 -		
30	Dermatology Online Journal	http://dermatology.cdlib.org/issuesindex.html			fbjl				1995 -		
32	Drug Metabolism and Disposition	http://dmd.aspetjournals.org/		365	fbjl				1997 -		
33	Early Childhood Research and Practice 	http://ecrp.uiuc.edu/			fbjl				1999 -		
40	Genetics	http://intl.genetics.org/			fbjl				1916 -		
41	Genome Research	http://www.genome.org/			fbjl				1991 -		
45	Indian Pediatrics 	http://www.indianpediatrics.net/			fbjl				1991 -		
1533	PLoS Medicine	http://www.plosmedicine.org			fbjl				2004 -		
58	Journal of Applied Physiology	http://intl-jap.physiology.org/			fbjl				1997 -		
71	Journal of Physiology	http://jp.physoc.org/			fbjl				1878 -		
102	Singapore Medical Journal 	http://www.sma.org.sg/smj/smjcurrent.html			fbjl				1960 - 		
1433	BMC Clinical Pharmacology	http://www.biomedcentral.com/bmcclinpharmacol/			fbjl				2001 -		
1438	BMC Ecology	http://www.biomedcentral.com/bmcecol/			fbjl				2001 -		
1443	BMC Gastroenterology	http://www.biomedcentral.com/bmcgastroenterol/			fbjl				2001 -		
1447	BMC Health Services Research	http://www.biomedcentral.com/bmchealthservres/			fbjl				2001 -		
1462	BMC Neurology	http://www.biomedcentral.com/bmcneurol/			fbjl				2001 -		
1468	BMC Palliative Care	http://www.biomedcentral.com/bmcpalliatcare/			fbjl				2002 -		
1477	BMC Structural Biology	http://www.biomedcentral.com/bmcstructbiol/			fbjl				2001 -		
36	Family Practice Management 	http://www.aafp.org/fpm/index.html		365	fbjl				1998 -		
78	Microbiology and Molecular Biology Reviews 	http://intl-mmbr.asm.org/			fbjl				1937 -		
79	Molecular Biology of the Cell	http://www.molbiolcell.org/		60	fbjl				1997 -		
81	Molecular Pharmacology	http://intl-molpharm.aspetjournals.org/			fbjl				1965 -		
20	British Medical Journal, BMJ	http://bmj.bmjjournals.com			bmj						
101	Sao Paulo Medical Journal	http://www.scielo.br/spmj.htm			fbjl				1994 -		
62	Journal of Clinical Microbiology	http://jcm.asm.org/			fbjl				1975 -		
82	Molecular Vision	http://www.molvis.org/molvis/			fbjl				1995 -		
80	Molecular and Cellular Biology	http://intl-mcb.asm.org/			fbjl				1981 -		
85	NLM Newsline	http://www.nlm.nih.gov/pubs/nlmnews/nlmnews.html			fbjl				1994 - 2005		
59	Journal of Bacteriology	http://intl-jb.asm.org/			fbjl				1916 -		
64	Journal of Molecular Diagnostics	http://jmd.amjpathol.org/			fbjl				1999 -		
66	Journal of Neurophysiology	http://intl-jn.physiology.org/			fbjl				1997 -		
67	Journal of Pharmacology and Experimental Therapeutics	http://intl-jpet.aspetjournals.org/			fbjl				1909 -		
74	Journal of Virology	http://jvi.asm.org/			fbjl				1967 -		
76	Learning and Memory	http://intl.learnmem.org/		365	fbjl				1994 -		
35	Family Medicine	https://www.stfm.org/NewsJournals/FamilyMedicine			fbjl				1998 -		
44	Hospital Practice 	https://hospitalpracticemed.com/			fbjl						
47	Internet Journal of Advanced Nursing Practice, The	https://ispub.com/IJANP			fbjl				1997 -		
63	Journal of Medical Internet Research 	http://www.jmir.org/			fbjl				1999 -		
57	Japanese Journal of Pharmacology	http://www.jstage.jst.go.jp/browse/jjp			fbjl				1951 -	�s continuaci� de: The Japanese Journal of Pharmacology (1998-2002)	Es continuaci�n de: The Japanese Journal of Pharmacology (1998-2002)
68	Journal of Pharmacy and Pharmaceutical Sciences	http://ejournals.library.ualberta.ca/index.php/JPPS/index			fbjl				1998 - 2007		
61	Journal of the Canadian Dental Association 	http://www.jcda.ca/			fbjl				Maig 1999 -		
99	Revista Panamericana de Salud Pública	http://www.scielosp.org/scielo.php?script=sci_serial&pid=1020-4989&lng=es&nrm=iso			fbjl				1997 -		
100	Salud Pública de México	http://www.scielosp.org/scielo.php?script=sci_serial&pid=0036-3634&lng=es&nrm=iso			fbjl				1997 -		
18	BMC Family Practice	https://bmcfampract.biomedcentral.com/			fbjl				2000 -		
43	Haematologica	http://www.haematologica.org/			fbjl				1994 -		
39	Genes and Development	http://www.genesdev.org/		180	fbjl				1987 -		
802	Circulation Research	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003012-000000000-00000	001		imas						
803	Sexually Transmitted Infections	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00115314-000000000-00000	001		imas						
804	Thorax	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00007783-000000000-00000	001		imas						
805	Gut	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003970-000000000-00000	001		imas						
806	Journal of Clinical Oncology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005083-000000000-00000	001		imas						
807	Journal of Clinical Pathology (Molecular Pathology)	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004696-000000000-00000	001		imas						
808	Journal of Neurology, Neurosurgery and Psychiatry	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005069-000000000-00000	001		imas						
809	Journal of Pediatrics	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005186-000000000-00000	001		imas						
810	Journal of Trauma: Injury, Infection and Critical Care	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005373-000000000-00000	001		imas						
811	Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005792-000000000-00000	001		imas						
812	Stroke	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00007670-000000000-00000	001		imas						
4971	Critical Care	http://ccforum.com			althaia						
815	Diagnostic Imaging Europe	http://proquest.umi.com/pqdlink?RQT=318&PMID=38236	001								
817	American Journal of Cardiology (editor)	http://www.sciencedirect.com/science/journal/00029149	001		sdirect						
818	American Journal of Medicine (editor)	http://www.sciencedirect.com/science/journal/00029343 	001		sdirect						
819	American Journal of Ophthalmology	http://www.sciencedirect.com/science/journal/00029394\\n	001		sdirect						
820	American Journal of Surgery (editor)	http://www.sciencedirect.com/science/journal/00029610	001		sdirect						
821	Annales de Genetique	http://www.sciencedirect.com/science/journal/00033995\\n	001		sdirect						
822	Annals of Thoracic Surgery	http://www.sciencedirect.com/science/journal/00034975\\n	001		sdirect						
823	Blood Cells Molecules & Diseases	http://www.sciencedirect.com/science/journal/10799796\\n	001		sdirect						
824	BJOG British Journal of Obstetrics and Gynecology	http://www.sciencedirect.com/science/journal/14700328\\n	001		sdirect						
825	Cancer Genetics and Cytogenetics	http://www.sciencedirect.com/science/journal/01654608\\n	001		sdirect						
826	Cardiovascular Research	http://www.sciencedirect.com/science/journal/00086363\\n	001		sdirect						
827	Clinical Nutrition	http://www.sciencedirect.com/science/journal/02615614\\n	001		sdirect						
828	Clinical Radiology	http://www.sciencedirect.com/science/journal/00099260\\n	001		sdirect						
829	Clinics in Dermatology	http://www.sciencedirect.com/science/journal/0738081X\\n	001		sdirect						
830	Controlled Clinical Trials	http://www.sciencedirect.com/science/journal/01972456\\n	001		sdirect						
832	Experimental Hematology	http://www.sciencedirect.com/science/journal/0301472X \\n	001		sdirect						
833	Injury	http://www.sciencedirect.com/science/journal/00201383\\n	001		sdirect						
834	International Journal of Radiation Oncology/Biology/Physics	http://www.sciencedirect.com/science/journal/03603016\\n	001		sdirect						
835	Journal of the American College of Cardiology	http://www.sciencedirect.com/science/journal/07351097\\n	001		sdirect						
836	Journal of the American College of Surgeons	http://www.sciencedirect.com/science/journal/10727515\\n	001		sdirect						
837	Journal of Clinical Epidemiology	http://www.sciencedirect.com/science/journal/08954356\\n	001		sdirect						
838	Journal of Emergency Medicine	http://www.sciencedirect.com/science/journal/07364679\\n	001		sdirect						
839	Journal of Heart and Lung Transplantation, The	http://www.sciencedirect.com/science/journal/10532498	001		sdirect						
840	Journal of Hepatology	http://www.sciencedirect.com/science/journal/01688278\\n	001		sdirect						
841	Journal of Hospital Infection	http://www.sciencedirect.com/science/journal/01956701\\n	001		sdirect						
842	Journal of Orthopaedic Research	http://www.sciencedirect.com/science/journal/07360266\\n	001		sdirect						
843	Journal of Psychiatric Research	http://www.sciencedirect.com/science/journal/00223956\\n	001		sdirect						
844	Journal of Psychosomatic Research	http://www.sciencedirect.com/science/journal/00223999\\n	001		sdirect						
845	Lancet, The (editor)	http://www.sciencedirect.com/science/journal/01406736	001		sdirect						
846	Leukemia Research	http://www.sciencedirect.com/science/journal/01452126\\n	001		sdirect						
847	Ophthalmology	http://www.sciencedirect.com/science/journal/01616420\\n	001		sdirect						
848	Pain	http://www.sciencedirect.com/science/journal/03043959\\n	001		sdirect						
849	Surgical Neurology	http://www.sciencedirect.com/science/journal/00903019\\n	001		sdirect						
850	Molecular and Biochemical Parasitology	http://www.sciencedirect.com/science/journal/01666851	001		sdirect						
851	Thrombosis Research	http://www.sciencedirect.com/science/journal/00493848\\n	001		sdirect						
852	Transplantation Proceedings	http://www.sciencedirect.com/science/journal/00411345\\n	001		sdirect						
853	Obstetrics & Gynecology	http://www.sciencedirect.com/science/journal/00297844	001		sdirect						
854	Best Practice and Research in Clinical Gastroenterology	http://www.sciencedirect.com/web-editions?_ob=JournalURL&_cdi=6709&_auth=y&_acct=C000017980&_version=1&_urlVersion=0&_userid=376611&md5=5bee0afffbf5ef5790573f4520f26ce9	001		sdirect						
855	Best Practice and Research in Clinical Haematology	http://www.sciencedirect.com/web-editions?_ob=JournalURL&_cdi=6710&_auth=y&_acct=C000017980&_version=1&_urlVersion=0&_userid=376611&md5=18255ecc3b02ebf59f2355fb0ed19773	001		sdirect						
856	Current Therapeutic Research	http://www.sciencedirect.com/science/journal/0011393X	001		sdirect						
857	Accident and Emergency Nursing	http://www.sciencedirect.com/science/journal/09652302	001		sdirect						
858	Acta Psychologica	http://www.sciencedirect.com/science/journal/00016918	001		sdirect						
859	Acute Pain	http://www.sciencedirect.com/science/journal/13660071	001		sdirect						
860	Addictive Behaviors	http://www.sciencedirect.com/science/journal/03064603	001		sdirect						
861	Advanced Drug Delivery Reviews	http://www.sciencedirect.com/science/journal/0169409X	001		sdirect						
862	Advances in Free Radical Biology & Medicine	http://www.sciencedirect.com/science/journal/87559668	001		sdirect						
863	Ageing Research Reviews	http://www.sciencedirect.com/science/journal/15681637	001		sdirect						
864	Alcohol	http://www.sciencedirect.com/science/journal/07418329	001		sdirect						
865	Ambulatory Surgery	http://www.sciencedirect.com/science/journal/09666532	001		sdirect						
866	American Journal of Hypertension	http://www.sciencedirect.com/science/journal/08957061	001		sdirect						
867	American Journal of Preventive Medicine	http://www.sciencedirect.com/science/journal/07493797	001		sdirect						
868	Analytica Chimica Acta	http://www.sciencedirect.com/science/journal/00032670	001		sdirect						
869	Analytical Biochemistry	http://www.sciencedirect.com/science/journal/00032697	001		sdirect						
870	Annales de Chirurgie	http://www.sciencedirect.com/science/journal/00033944	001		sdirect						
873	Annals of Epidemiology	http://www.sciencedirect.com/science/journal/10472797	001		sdirect						
874	Annals of Occupational Hygiene, The	http://www.sciencedirect.com/science/journal/00034878	001		sdirect						
875	Burns	http://www.sciencedirect.com/science/journal/03054179	001		sdirect						
876	Cancer Detection and Prevention 	http://www.sciencedirect.com/science/journal/0361090X	001		sdirect						
877	Cancer Letters 	http://www.sciencedirect.com/science/journal/03043835	001		sdirect						
879	Cardiovascular Pathology 	http://www.sciencedirect.com/science/journal/10548807	001		sdirect						
880	Cardiovascular Radiation Medicine 	http://www.sciencedirect.com/science/journal/15221865	001		sdirect						
881	Cardiovascular Surgery	http://www.sciencedirect.com/science/journal/09672109	001		sdirect						
882	Cell Biology International	http://www.sciencedirect.com/science/journal/10656995	001		sdirect						
883	Cell Differentiation	http://www.sciencedirect.com/science/journal/00456039	001		sdirect						
884	Cell Differentiation and Development	http://www.sciencedirect.com/science/journal/09223371	001		sdirect						
885	Cellular Immunology 	http://www.sciencedirect.com/science/journal/00088749	001		sdirect						
886	Child Abuse & Neglect	http://www.sciencedirect.com/science/journal/01452134	001		sdirect						
887	Children and Youth Services Review	http://www.sciencedirect.com/science/journal/01907409	001		sdirect						
888	Chirurgie	http://www.sciencedirect.com/science/journal/00014001	001		sdirect						
889	Chirurgie de la Main	http://www.sciencedirect.com/science/journal/12973203	001		sdirect						
890	Clinica Chimica Acta 	http://www.sciencedirect.com/science/journal/00098981	001		sdirect						
891	Clinical and Applied Immunology Reviews	http://www.sciencedirect.com/science/journal/15291049	001		sdirect						
892	Clinical and Diagnostic Virology	http://www.sciencedirect.com/science/journal/09280197	001		sdirect						
893	Clinical Biochemistry	http://www.sciencedirect.com/science/journal/00099120	001		sdirect						
894	Clinical Biomechanics	http://www.sciencedirect.com/science/journal/02680033	001		sdirect						
895	Clinical Chiropractic 	http://www.sciencedirect.com/science/journal/14792354	001		sdirect						
896	Clinical Eye and Vision Care	http://www.sciencedirect.com/science/journal/09534431	001		sdirect						
897	Clinical Imaging 	http://www.sciencedirect.com/science/journal/08997071	001		sdirect						
898	Clinical Immunology 	http://www.sciencedirect.com/science/journal/15216616	001		sdirect						
899	Clinical Immunology and Immunopathology	http://www.sciencedirect.com/science/journal/00901229	001		sdirect						
900	Clinical Immunology Newsletter	http://www.sciencedirect.com/science/journal/01971859	001		sdirect						
901	Clinical Microbiology Newsletter	http://www.sciencedirect.com/science/journal/01964399	001		sdirect						
902	Clinical Neurology and Neurosurgery 	http://www.sciencedirect.com/science/journal/03038467	001		sdirect						
903	Clinical Neurophysiology	http://www.sciencedirect.com/science/journal/13882457	001		sdirect						
904	Clinical Neuroscience Research	http://www.sciencedirect.com/science/journal/15662772	001		sdirect						
905	Clinical Oncology 	http://www.sciencedirect.com/science/journal/09366555	001		sdirect						
906	Clinical Psychology Review 	http://www.sciencedirect.com/science/journal/02727358	001		sdirect						
907	Clinical Radiology Extra 	http://www.sciencedirect.com/science/journal/14776804	001		sdirect						
908	Clinical Therapeutics 	http://www.sciencedirect.com/science/journal/01492918	001		sdirect						
909	Cognitive Brain Research 	http://www.sciencedirect.com/science/journal/09266410	001		sdirect						
910	Cognitive Development 	http://www.sciencedirect.com/science/journal/08852014	001		sdirect						
911	Cognitive Psychology 	http://www.sciencedirect.com/science/journal/00100285	001		sdirect						
912	Cognitive Science 	http://www.sciencedirect.com/science/journal/03640213	001		sdirect						
913	Cognitive Systems Research	http://www.sciencedirect.com/science/journal/13890417	001		sdirect						
914	Comparative Biochemistry and Physiology	http://www.sciencedirect.com/science/journal/0010406X	001		sdirect						
915	Comparative Biochemistry and Physiology Part C: Comparative Pharmacology and Toxicology	http://www.sciencedirect.com/science/journal/07428413	001		sdirect						
916	Comparative Biochemistry and Physiology Part A: Physiology 	http://www.sciencedirect.com/science/journal/03009629	001		sdirect						
917	Comparative Biochemistry and Physiology Part A: Molecular & Integrative Physiology 	http://www.sciencedirect.com/science/journal/10956433	001		sdirect						
918	Comparative Biochemistry and Physiology Part B: Biochemistry and Molecular Biology	http://www.sciencedirect.com/science/journal/10964959	001		sdirect						
919	Comparative Biochemistry and Physiology Part C: Pharmacology, Toxicology and Endocrinology	http://www.sciencedirect.com/science/journal/07428413	001		sdirect						
920	Comparative Biochemistry and Physiology Part C: Toxicology & Pharmacology	http://www.sciencedirect.com/science/journal/15320456	001		sdirect						
922	Comparative Immunology, Microbiology and Infectious Diseases	http://www.sciencedirect.com/science/journal/01479571	001		sdirect						
923	Complementary Therapies in Nursing and Midwifery	http://www.sciencedirect.com/science/journal/13536117	001		sdirect						
924	Comptes Rendus Biologies 	http://www.sciencedirect.com/science/journal/16310691	001		sdirect						
925	Comptes Rendus Chimie	http://www.sciencedirect.com/science/journal/16310748	001		sdirect						
926	Computational Biology and Chemistry	http://www.sciencedirect.com/science/journal/14769271	001		sdirect						
927	Computerized Medical Imaging and Graphics	http://www.sciencedirect.com/science/journal/08956111	001		sdirect						
928	Computers and Biomedical Research	http://www.sciencedirect.com/science/journal/00104809	001		sdirect						
929	Computers & Chemistry	http://www.sciencedirect.com/science/journal/00978485	001		sdirect						
930	Computers in Biology and Medicine	http://www.sciencedirect.com/science/journal/00104825	001		sdirect						
931	Computers in Human Behavior	http://www.sciencedirect.com/science/journal/07475632	001		sdirect						
932	Consciousness and Cognition 	http://www.sciencedirect.com/science/journal/10538100	001		sdirect						
933	Contact Lens and Anterior Eye	http://www.sciencedirect.com/science/journal/13670484	001		sdirect						
934	Contemporary Educational Psychology	http://www.sciencedirect.com/science/journal/0361476X	001		sdirect						
935	Contraception	http://www.sciencedirect.com/science/journal/00107824	001		sdirect						
936	Critical Reviews in Oncology/Hematology	http://www.sciencedirect.com/science/journal/10408428	001		sdirect						
937	Current Biology	http://www.sciencedirect.com/science/journal/09609822	001		sdirect						
938	Current Opinion in Cell Biology	http://www.sciencedirect.com/science/journal/09550674	001		sdirect						
939	Current Opinion in Chemical Biology	http://www.sciencedirect.com/science/journal/13675931	001		sdirect						
940	Current Opinion in Genetics & Development	http://www.sciencedirect.com/science/journal/0959437X	001		sdirect						
941	Current Opinion in Immunology	http://www.sciencedirect.com/science/journal/09527915	001		sdirect						
942	Current Opinion in Microbiology 	http://www.sciencedirect.com/science/journal/13695274	001		sdirect						
943	Current Opinion in Neurobiology	http://www.sciencedirect.com/science/journal/09594388	001		sdirect						
944	Current Opinion in Pharmacology	http://www.sciencedirect.com/science/journal/14714892	001		sdirect						
945	Current Opinion in Plant Biology	http://www.sciencedirect.com/science/journal/13695266	001		sdirect						
946	Current Opinion in Structural Biology	http://www.sciencedirect.com/science/journal/0959440X	001		sdirect						
947	Current Orthopaedics	http://www.sciencedirect.com/science/journal/02680890	001		sdirect						
948	Current Surgery 	http://www.sciencedirect.com/science/journal/01497944	001		sdirect						
949	Developmental & Comparative Immunology	http://www.sciencedirect.com/science/journal/0145305X	001		sdirect						
950	Developmental Biology	http://www.sciencedirect.com/science/journal/00121606	001		sdirect						
951	Developmental Brain Research	http://www.sciencedirect.com/science/journal/01653806	001		sdirect						
952	Developmental Review	http://www.sciencedirect.com/science/journal/02732297	001		sdirect						
953	Diabetes Research and Clinical Practice 	http://www.sciencedirect.com/science/journal/01688227	001		sdirect						
954	Diagnostic Microbiology and Infectious Disease	http://www.sciencedirect.com/science/journal/07328893	001		sdirect						
955	Drug and Alcohol Dependence	http://www.sciencedirect.com/science/journal/03768716	001		sdirect						
956	Drug Discovery Today	http://www.sciencedirect.com/science/journal/13596446	001		sdirect						
957	Early Childhood Research Quarterly	http://www.sciencedirect.com/science/journal/08852006 	001		sdirect						
958	Early Human Development	http://www.sciencedirect.com/science/journal/03783782	001		sdirect						
959	Eating Behaviors 	http://www.sciencedirect.com/science/journal/14710153	001		sdirect						
960	Electroencephalography and Clinical Neurophysiology	http://www.sciencedirect.com/science/journal/00134694	001		sdirect						
961	Electroencephalography and Clinical Neurophysiology/Electromyography and Motor Control	http://www.sciencedirect.com/science/journal/0924980X	001		sdirect						
962	Electroencephalography and Clinical Neurophysiology/Evoked Potentials Section	http://www.sciencedirect.com/science/journal/01685597	001		sdirect						
963	Environmental Toxicology and Pharmacology	http://www.sciencedirect.com/science/journal/13826689	001		sdirect						
964	Enzyme and Microbial Technology	http://www.sciencedirect.com/science/journal/01410229	001		sdirect						
965	Epilepsy & Behavior	http://www.sciencedirect.com/science/journal/15255050	001		sdirect						
966	Epilepsy Research 	http://www.sciencedirect.com/science/journal/09201211	001		sdirect						
967	European Journal of Cancer 	http://www.sciencedirect.com/science/journal/09598049	001		sdirect						
968	European Journal of Cardio-Thoracic Surgery	http://www.sciencedirect.com/science/journal/10107940	001		sdirect						
969	European Journal of Cardiovascular Nursing	http://www.sciencedirect.com/science/journal/14745151	001		sdirect						
970	European Journal of Heart Failure	http://www.sciencedirect.com/science/journal/13889842	001		sdirect						
971	European Journal of Heart Failure Supplements	http://www.sciencedirect.com/science/journal/15674215	001		sdirect						
972	European Journal of Internal Medicine	http://www.sciencedirect.com/science/journal/09536205	001		sdirect						
973	European Journal of Medicinal Chemistry	http://www.sciencedirect.com/science/journal/02235234	001		sdirect						
974	European Journal of Obstetrics & Gynecology and Reproductive Biology	http://www.sciencedirect.com/science/journal/03012115	001		sdirect						
975	European Journal of Oncology Nursing	http://www.sciencedirect.com/science/journal/14623889	001		sdirect						
976	European Journal of Paediatric Neurology	http://www.sciencedirect.com/science/journal/10903798	001		sdirect						
977	European Journal of Pain	http://www.sciencedirect.com/science/journal/10903801	001		sdirect						
978	European Journal of Pharmaceutical Sciences	http://www.sciencedirect.com/science/journal/09280987	001		sdirect						
979	European Journal of Pharmaceutics and Biopharmaceutics	http://www.sciencedirect.com/science/journal/09396411	001		sdirect						
980	European Journal of Pharmacology	http://www.sciencedirect.com/science/journal/00142999	001		sdirect						
981	European Journal of Pharmacology: Environmental Toxicology and Pharmacology	http://www.sciencedirect.com/science/journal/09266917	001		sdirect						
982	European Journal of Pharmacology: Molecular Pharmacology	http://www.sciencedirect.com/science/journal/09224106	001		sdirect						
983	European Journal of Radiology	http://www.sciencedirect.com/science/journal/0720048X	001		sdirect						
984	European Journal of Radiology Extra 	http://www.sciencedirect.com/science/journal/15714675	001		sdirect						
985	European Journal of Surgical Oncology	http://www.sciencedirect.com/science/journal/07487983	001		sdirect						
986	European Journal of Ultrasound	http://www.sciencedirect.com/science/journal/09298266	001		sdirect						
987	European Journal of Vascular and Endovascular Surgery	http://www.sciencedirect.com/science/journal/10785884	001		sdirect						
988	European Neuropsychopharmacology 	http://www.sciencedirect.com/science/journal/0924977X	001		sdirect						
989	European Psychiatry	http://www.sciencedirect.com/science/journal/09249338	001		sdirect						
990	European Urology	http://www.sciencedirect.com/science/journal/03022838	001		sdirect						
991	European Urology Supplements	http://www.sciencedirect.com/science/journal/15699056	001		sdirect						
992	Evolution and Human Behavior 	http://www.sciencedirect.com/science/journal/10905138	001		sdirect						
993	Journal of Molecular and Cellular Cardiology	http://www.sciencedirect.com/science/journal/00222828	001		sdirect						
994	Journal of Molecular Biology 	http://www.sciencedirect.com/science/journal/00222836	001		sdirect						
995	Journal of Neuroimmunology	http://www.sciencedirect.com/science/journal/01655728	001		sdirect						
996	Journal of Neurolinguistics	http://www.sciencedirect.com/science/journal/09116044	001		sdirect						
997	Journal of the Neurological Sciences	http://www.sciencedirect.com/science/journal/0022510X	001		sdirect						
998	Journal of Neuroscience Methods	http://www.sciencedirect.com/science/journal/01650270	001		sdirect						
999	Journal of Nurse-Midwifery	http://www.sciencedirect.com/science/journal/00912182	001		sdirect						
1000	Journal of Nutritional Biochemistry, The	http://www.sciencedirect.com/science/journal/09552863	001		sdirect						
1001	Journal of Occupational Accidents	http://www.sciencedirect.com/science/journal/03766349	001		sdirect						
1002	Journal of Orthopaedic Nursing 	http://www.sciencedirect.com/science/journal/13613111	001		sdirect						
1003	Journal of Pain and Symptom Management 	http://www.sciencedirect.com/science/journal/08853924	001		sdirect						
1004	Journal of Pediatric and Adolescent Gynecology	http://www.sciencedirect.com/science/journal/10833188	001		sdirect						
1005	Journal of Pharmaceutical and Biomedical Analysis 	http://www.sciencedirect.com/science/journal/07317085	001		sdirect						
1006	Journal of Pharmacological Methods	http://www.sciencedirect.com/science/journal/01605402	001		sdirect						
1007	Journal of Pharmacological and Toxicological Methods 	http://www.sciencedirect.com/science/journal/10568719	001		sdirect						
1008	Journal of Reproductive Immunology	http://www.sciencedirect.com/science/journal/01650378	001		sdirect						
1009	Journal of Research in Personality 	http://www.sciencedirect.com/science/journal/00926566	001		sdirect						
1010	Journal of Social and Evolutionary Systems	http://www.sciencedirect.com/science/journal/10617361	001		sdirect						
1011	Journal of the Society for Gynecologic Investigation 	http://www.sciencedirect.com/science/journal/10715576	001		sdirect						
1012	Journal of Steroid Biochemistry and Molecular Biology, The 	http://www.sciencedirect.com/science/journal/09600760	001		sdirect						
1013	Journal of Strategic Information Systems, The 	http://www.sciencedirect.com/science/journal/09638687	001		sdirect						
1014	Journal of Substance Abuse 	http://www.sciencedirect.com/science/journal/08993289	001		sdirect						
1015	Journal of Substance Abuse Treatment 	http://www.sciencedirect.com/science/journal/07405472	001		sdirect						
1016	Journal of Surgical Research 	http://www.sciencedirect.com/science/journal/00224804	001		sdirect						
1017	Journal of Virological Methods	http://www.sciencedirect.com/science/journal/01660934	001		sdirect						
1018	Journal of Visual Languages & Computing	http://www.sciencedirect.com/science/journal/1045926X	001		sdirect						
1019	Journal of Voice 	http://www.sciencedirect.com/science/journal/08921997	001		sdirect						
1020	Knee, The	http://www.sciencedirect.com/science/journal/09680160	001		sdirect						
1021	Lancet Infectious Diseases, The 	http://www.sciencedirect.com/science/journal/14733099	001		sdirect						
1022	Lancet Neurology, The	http://www.sciencedirect.com/science/journal/14744422	001		sdirect						
1023	Lancet Oncology, The	http://www.sciencedirect.com/science/journal/14702045	001		sdirect						
1024	Legal Medicine 	http://www.sciencedirect.com/science/journal/13446223	001		sdirect						
1025	Library Acquisitions: Practice & Theory 	http://www.sciencedirect.com/science/journal/03646408	001		sdirect						
1026	Library & Information Science Research 	http://www.sciencedirect.com/science/journal/07408188	001		sdirect						
1074	Neuroscience Research 	http://www.sciencedirect.com/science/journal/01680102	001		sdirect						
1027	Library Collections, Acquisitions, and Technical Services 	http://www.sciencedirect.com/science/journal/14649055	001		sdirect						
1028	Life Sciences 	http://www.sciencedirect.com/science/journal/00243205	001		sdirect						
1029	Lung Cancer 	http://www.sciencedirect.com/science/journal/01695002	001		sdirect						
1030	Magnetic Resonance Imaging 	http://www.sciencedirect.com/science/journal/0730725X	001		sdirect						
1031	Magnetic Resonance Materials in Biology, Physics, and Medicine	http://www.sciencedirect.com/science/journal/13528661	001		sdirect						
1032	Maturitas	http://www.sciencedirect.com/science/journal/03785122	001		sdirect						
1033	Molecular Diagnosis (HSP)	 http://www.sciencedirect.com/science/journal/10848592	001		sdirect						
1034	Medecine & Droit 	http://www.sciencedirect.com/science/journal/12467391	001		sdirect						
1035	Medecine et Maladies Infectieuses	http://www.sciencedirect.com/science/journal/0399077X	001		sdirect						
1036	Medical Dosimetry 	http://www.sciencedirect.com/science/journal/09583947	001		sdirect						
1037	Medical Engineering & Physics	http://www.sciencedirect.com/science/journal/13504533	001		sdirect						
1038	Medical Image Analysis	http://www.sciencedirect.com/science/journal/13618415	001		sdirect						
1039	Microbes and Infection 	http://www.sciencedirect.com/science/journal/12864579	001		sdirect						
1040	Microbial Pathogenesis	http://www.sciencedirect.com/science/journal/08824010	001		sdirect						
1041	Micron	http://www.sciencedirect.com/science/journal/09684328	001		sdirect						
1042	Molecular Brain Research	http://www.sciencedirect.com/science/journal/0169328X	001		sdirect						
1043	Molecular Cell Biology Research Communications 	http://www.sciencedirect.com/science/journal/15224724	001		sdirect						
1044	Molecular Genetics and Metabolism	http://www.sciencedirect.com/science/journal/10967192	001		sdirect						
1045	Molecular Imaging & Biology	http://www.sciencedirect.com/science/journal/15361632	001		sdirect						
1046	Molecular Immunology 	http://www.sciencedirect.com/science/journal/01615890	001		sdirect						
1047	Molecular Medicine Today	http://www.sciencedirect.com/science/journal/13574310	001		sdirect						
1048	Molecular Therapy	http://www.sciencedirect.com/science/journal/15250016	001		sdirect						
1049	Mutation Research/DNA Repair	http://www.sciencedirect.com/science/journal/09218777	001		sdirect						
1050	Mutation Research/DNA Repair Reports 	http://www.sciencedirect.com/science/journal/01678817	001		sdirect						
1051	Mutation Research/Fundamental and Molecular Mechanisms of Mutagenesis	http://www.sciencedirect.com/science/journal/00275107	001		sdirect						
1052	Mutation Research/Genetic Toxicology	http://www.sciencedirect.com/science/journal/01651218	001		sdirect						
1053	Mutation Research/Genetic Toxicology and Environmental Mutagenesis	http://www.sciencedirect.com/science/journal/13835718	001		sdirect						
1054	Mutation Research/Mutation Research Genomics	http://www.sciencedirect.com/science/journal/13835726	001		sdirect						
1055	Mutation Research/Reviews in Genetic Toxicology	http://www.sciencedirect.com/science/journal/01651110	001		sdirect						
1056	Mutation Research/Reviews in Mutation Research	http://www.sciencedirect.com/science/journal/13835742	001		sdirect						
1057	Netherlands Journal of Medicine, The	http://www.sciencedirect.com/science/journal/03002977	001		sdirect						
1058	Neural Networks 	http://www.sciencedirect.com/science/journal/08936080	001		sdirect						
1059	Neurobiology of Aging	http://www.sciencedirect.com/science/journal/01974580	001		sdirect						
1060	Neurobiology of Disease	http://www.sciencedirect.com/science/journal/09699961	001		sdirect						
1061	Neurobiology of Learning and Memory	http://www.sciencedirect.com/science/journal/10747427	001		sdirect						
1062	Neurochemistry International	http://www.sciencedirect.com/science/journal/01970186	001		sdirect						
1063	Neurodegeneration 	http://www.sciencedirect.com/science/journal/10558330	001		sdirect						
1064	NeuroImage 	http://www.sciencedirect.com/science/journal/10538119	001		sdirect						
1065	Neuromuscular Disorders	http://www.sciencedirect.com/science/journal/09608966	001		sdirect						
1066	Neuropharmacology 	http://www.sciencedirect.com/science/journal/00283908	001		sdirect						
1067	Neurophysiologie Clinique/Clinical Neurophysiology	http://www.sciencedirect.com/science/journal/09877053	001		sdirect						
1068	Neuroprotocols 	http://www.sciencedirect.com/science/journal/10586741	001		sdirect						
1069	Neuropsychologia 	http://www.sciencedirect.com/science/journal/00283932	001		sdirect						
1070	Neuropsychopharmacology	http://www.sciencedirect.com/science/journal/0893133X	001		sdirect						
1071	Neuroscience 	http://www.sciencedirect.com/science/journal/03064522	001		sdirect						
1072	Neuroscience & Biobehavioral Reviews 	http://www.sciencedirect.com/science/journal/01497634	001		sdirect						
1073	Neuroscience Letters	http://www.sciencedirect.com/science/journal/03043940	001		sdirect						
1075	Neuroscience Research Supplements	http://www.sciencedirect.com/science/journal/09218696	001		sdirect						
1076	Respiration Physiology	 http://www.sciencedirect.com/science/journal/00345687	001		sdirect						
1077	Neurotoxicology and Teratology	http://www.sciencedirect.com/science/journal/08920362	001		sdirect						
1078	Nitric Oxide 	http://www.sciencedirect.com/science/journal/10898603	001		sdirect						
1079	Nuclear Medicine and Biology	http://www.sciencedirect.com/science/journal/09698051	001		sdirect						
1080	Nuclear Physics	http://www.sciencedirect.com/science/journal/00295582	001		sdirect						
1081	Nutrition	http://www.sciencedirect.com/science/journal/08999007	001		sdirect						
1083	Nutrition Research 	http://www.sciencedirect.com/science/journal/02715317	001		sdirect						
1084	Oral Oncology 	http://www.sciencedirect.com/science/journal/13688375	001		sdirect						
1085	Osteoarthritis and Cartilage	http://www.sciencedirect.com/science/journal/10634584	001		sdirect						
1086	Parasitology International	http://www.sciencedirect.com/science/journal/13835769	001		sdirect						
1087	Parasitology Today 	http://www.sciencedirect.com/science/journal/01694758	001		sdirect						
1088	Parkinsonism & Related Disorders	http://www.sciencedirect.com/science/journal/13538020	001		sdirect						
1089	Pathologie Biologie 	http://www.sciencedirect.com/science/journal/03698114	001		sdirect						
1090	Pathophysiology 	http://www.sciencedirect.com/science/journal/09284680	001		sdirect						
1091	Patient Education and Counseling	http://www.sciencedirect.com/science/journal/07383991	001		sdirect						
1092	Pediatric Neurology 	http://www.sciencedirect.com/science/journal/08878994	001		sdirect						
1093	Peptides	http://www.sciencedirect.com/science/journal/01969781	001		sdirect						
1094	Personality and Individual Differences	http://www.sciencedirect.com/science/journal/01918869	001		sdirect						
1095	Pharmaceutica Acta Helvetiae	http://www.sciencedirect.com/science/journal/00316865	001		sdirect						
1096	Pharmaceutical Science & Technology Today	http://www.sciencedirect.com/science/journal/14615347	001		sdirect						
1097	Pharmacological Research	http://www.sciencedirect.com/science/journal/10436618	001		sdirect						
1098	Pharmacology & Therapeutics	http://www.sciencedirect.com/science/journal/01637258	001		sdirect						
1099	Pharmacology & Therapeutics. Part A: Chemotherapy, Toxicology and Metabolic Inhibitors	http://www.sciencedirect.com/science/journal/03625478	001		sdirect						
1100	Pharmacology & Therapeutics. Part B: General and Systematic Pharmacology 	http://www.sciencedirect.com/science/journal/0306039X	001		sdirect						
1101	Pharmacology Biochemistry and Behavior	http://www.sciencedirect.com/science/journal/00913057	001		sdirect						
1102	Physiology & Behavior	http://www.sciencedirect.com/science/journal/00319384	001		sdirect						
1103	Placenta	http://www.sciencedirect.com/science/journal/01434004	001		sdirect						
1104	Preventive Medicine	http://www.sciencedirect.com/science/journal/00917435	001		sdirect						
1105	Primary Care Update for OB/GYNS	http://www.sciencedirect.com/science/journal/1068607X	001		sdirect						
1106	Progress in the Chemistry of Fats and other Lipids	http://www.sciencedirect.com/science/journal/00796832	001		sdirect						
1107	Progress in Lipid Research	http://www.sciencedirect.com/science/journal/01637827	001		sdirect						
1108	Progress in Neuro-Psychopharmacology and Biological Psychiatry 	http://www.sciencedirect.com/science/journal/02785846	001		sdirect						
1109	Progress in Neurobiology	http://www.sciencedirect.com/science/journal/03010082	001		sdirect						
1110	Progress in Nuclear Magnetic Resonance Spectroscopy	http://www.sciencedirect.com/science/journal/00796565	001		sdirect						
1111	Progress in Pediatric Cardiology	http://www.sciencedirect.com/science/journal/10589813	001		sdirect						
1112	Progress in Retinal Research	http://www.sciencedirect.com/science/journal/02784327	001		sdirect						
1113	Progress in Retinal and Eye Research	http://www.sciencedirect.com/science/journal/13509462	001		sdirect						
1114	Prostaglandins & Other Lipid Mediators	http://www.sciencedirect.com/science/journal/00906980	001		sdirect						
1115	Protein Expression and Purification	http://www.sciencedirect.com/science/journal/10465928	001		sdirect						
1116	Psychiatry Research	http://www.sciencedirect.com/science/journal/01651781	001		sdirect						
1117	Psychiatry Research: Neuroimaging	http://www.sciencedirect.com/science/journal/09254927	001		sdirect						
1118	Psychology of Sport and Exercise	http://www.sciencedirect.com/science/journal/14690292	001		sdirect						
1119	Psychoneuroendocrinology 	http://www.sciencedirect.com/science/journal/03064530	001		sdirect						
1120	Public Health 	http://www.sciencedirect.com/science/journal/00333506	001		sdirect						
1121	Pulmonary Pharmacology	http://www.sciencedirect.com/science/journal/09520600	001		sdirect						
1122	Pulmonary Pharmacology & Therapeutics	http://www.sciencedirect.com/science/journal/10945539	001		sdirect						
1123	Radiography 	http://www.sciencedirect.com/science/journal/10788174	001		sdirect						
1124	Radiotherapy and Oncology	http://www.sciencedirect.com/science/journal/01678140	001		sdirect						
1127	Regulatory Peptides	http://www.sciencedirect.com/science/journal/01670115	001		sdirect						
1128	Regulatory Toxicology and Pharmacology	http://www.sciencedirect.com/science/journal/02732300	001		sdirect						
1129	Reproductive Health Matters	http://www.sciencedirect.com/science/journal/09688080	001		sdirect						
1130	Reproductive Toxicology 	http://www.sciencedirect.com/science/journal/08906238	001		sdirect						
1131	Research in Developmental Disabilities	http://www.sciencedirect.com/science/journal/08914222	001		sdirect						
1132	Research in Immunology 	http://www.sciencedirect.com/science/journal/09232494	001		sdirect						
1133	Research in Microbiology 	http://www.sciencedirect.com/science/journal/09232508	001		sdirect						
1134	Research in Virology	http://www.sciencedirect.com/science/journal/09232516	001		sdirect						
1135	Respiratory Medicine 	http://www.sciencedirect.com/science/journal/09546111	001		sdirect						
1136	Respiratory Physiology & Neurobiology	http://www.sciencedirect.com/science/journal/15699048	001		sdirect						
1137	Resuscitation 	http://www.sciencedirect.com/science/journal/03009572	001		sdirect						
1138	Reviews in Gynaecological Practice	http://www.sciencedirect.com/science/journal/14717697	001		sdirect						
1139	Revue du Rhumatisme	http://www.sciencedirect.com/science/journal/11698330	001		sdirect						
1141	Schizophrenia Research	http://www.sciencedirect.com/science/journal/09209964	001		sdirect						
1142	Science & Sports 	http://www.sciencedirect.com/science/journal/07651597	001		sdirect						
1143	Seminars in Cancer Biology 	http://www.sciencedirect.com/science/journal/1044579X	001		sdirect						
1144	Seminars in Cell & Developmental Biology	http://www.sciencedirect.com/science/journal/10849521	001		sdirect						
1145	Seminars in Cell Biology	http://www.sciencedirect.com/science/journal/10434682	001		sdirect						
1146	Seminars in Developmental Biology	http://www.sciencedirect.com/science/journal/10445781	001		sdirect						
1147	Seminars in Immunology	http://www.sciencedirect.com/science/journal/10445323	001		sdirect						
1148	Seminars in Neuroscience	http://www.sciencedirect.com/science/journal/10445765	001		sdirect						
1149	Seminars in Virology 	http://www.sciencedirect.com/science/journal/10445773	001		sdirect						
1150	Sleep Medicine	http://www.sciencedirect.com/science/journal/13899457	001		sdirect						
1151	Social Science & Medicine	http://www.sciencedirect.com/science/journal/02779536	001		sdirect						
1152	Social Science & Medicine. Part A: Medical Psychology & Medical Sociology 	http://www.sciencedirect.com/science/journal/02717123	001		sdirect						
1153	Social Science & Medicine. Part B: Medical Anthropology	http://www.sciencedirect.com/science/journal/01607987	001		sdirect						
1154	Social Science & Medicine. Part C: Medical Economics	http://www.sciencedirect.com/science/journal/01607995	001		sdirect						
1155	Social Science & Medicine. Part D: Medical Geography	http://www.sciencedirect.com/science/journal/01608002	001		sdirect						
1156	Social Science & Medicine. Part E: Medical Psychology	http://www.sciencedirect.com/science/journal/02715384	001		sdirect						
1157	Social Science & Medicine. Part F: Medical and Social Ethics	http://www.sciencedirect.com/science/journal/02715392	001		sdirect						
1158	Spine Journal, The	http://www.sciencedirect.com/science/journal/15299430	001		sdirect						
1159	Surgical Oncology 	http://www.sciencedirect.com/science/journal/09607404	001		sdirect						
1160	Toxicological Sciences	http://www.sciencedirect.com/science/journal/10966080	001		sdirect						
1161	Toxicology 	http://www.sciencedirect.com/science/journal/0300483X	001		sdirect						
1162	Toxicology and Applied Pharmacology 	http://www.sciencedirect.com/science/journal/0041008X	001		sdirect						
1163	Toxicology in Vitro 	http://www.sciencedirect.com/science/journal/08872333	001		sdirect						
1164	Toxicology Letters	http://www.sciencedirect.com/science/journal/03784274	001		sdirect						
1165	Toxicon	http://www.sciencedirect.com/science/journal/00410101	001		sdirect						
1166	TrAC Trends in Analytical Chemistry 	http://www.sciencedirect.com/science/journal/01672940	001		sdirect						
1167	Transfusion and Apheresis Science	http://www.sciencedirect.com/science/journal/14730502	001		sdirect						
1168	Transfusion Clinique et Biologique	http://www.sciencedirect.com/science/journal/12467820	001		sdirect						
1169	Transfusion Science	http://www.sciencedirect.com/science/journal/09553886	001		sdirect						
1170	Transplant Immunology	http://www.sciencedirect.com/science/journal/09663274	001		sdirect						
1171	Travel Medicine and Infectious Disease 	http://www.sciencedirect.com/science/journal/14778939	001		sdirect						
1172	Trends in Biochemical Sciences 	http://www.sciencedirect.com/science/journal/09680004	001		sdirect						
1173	Trends in Cardiovascular Medicine	http://www.sciencedirect.com/science/journal/10501738	001		sdirect						
1174	Trends in Cell Biology 	http://www.sciencedirect.com/science/journal/09628924	001		sdirect						
1175	Trends in Cognitive Sciences	http://www.sciencedirect.com/science/journal/13646613	001		sdirect						
1176	Trends in Endocrinology and Metabolism	http://www.sciencedirect.com/science/journal/10432760	001		sdirect						
1177	Trends in Genetics	http://www.sciencedirect.com/science/journal/01689525	001		sdirect						
1178	Trends in Immunology 	http://www.sciencedirect.com/science/journal/14714906	001		sdirect						
1179	Trends in Microbiology 	http://www.sciencedirect.com/science/journal/0966842X	001		sdirect						
1180	Trends in Molecular Medicine	http://www.sciencedirect.com/science/journal/14714914	001		sdirect						
1181	Trends in Neurosciences	http://www.sciencedirect.com/science/journal/01662236	001		sdirect						
1182	Trends in Parasitology 	http://www.sciencedirect.com/science/journal/14714922	001		sdirect						
1183	Trends in Pharmacological Sciences 	http://www.sciencedirect.com/science/journal/01656147	001		sdirect						
1184	Ultrasonic Imaging 	http://www.sciencedirect.com/science/journal/01617346	001		sdirect						
1185	Ultrasound in Medicine & Biology	http://www.sciencedirect.com/science/journal/03015629	001		sdirect						
1187	Urologic Oncology: Seminars and Original Investigations	http://www.sciencedirect.com/science/journal/10781439	001		sdirect						
1188	Urology	http://www.sciencedirect.com/science/journal/00904295	001		sdirect						
1189	Vaccine	http://www.sciencedirect.com/science/journal/0264410X	001		sdirect						
1190	Vacuum	http://www.sciencedirect.com/science/journal/0042207X	001		sdirect						
1191	Vascular Pharmacology	http://www.sciencedirect.com/science/journal/15371891	001		sdirect						
1192	Virology	http://www.sciencedirect.com/science/journal/00426822	001		sdirect						
1193	Virus Research 	http://www.sciencedirect.com/science/journal/01681702	001		sdirect						
1194	Vision Research 	http://www.sciencedirect.com/science/journal/00426989	001		sdirect						
1195	Cellular Signalling	http://www.sciencedirect.com/science/journal/08986568	001		sdirect						
1196	Chemistry & Biology 	http://www.sciencedirect.com/science/journal/10745521	001		sdirect						
1197	Chemistry and Physics of Lipids	http://www.sciencedirect.com/science/journal/00093084	001		sdirect						
1198	Cytokine 	http://www.sciencedirect.com/science/journal/10434666	001		sdirect						
1199	Cytokine & Growth Factor Reviews 	http://www.sciencedirect.com/science/journal/13596101	001		sdirect						
1200	Advances in Neonatal Care (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12939&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=ec3fce11a56f1767064882a3e2737ed0	001		sdirect						
1201	Aesthetic Surgery Journal (HSP)  	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6682&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=5f240a6c3c65bed87bee485a87003f79	001		sdirect						
1480	Breast Cancer Research	http://breast-cancer-research.com/home/			fbjl				1999 -		
1202	Aggression and Violent Behavior	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6059&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=c17d007385fa01aa5705e0c84dff572d	001		sdirect						
1203	American Journal of Contact Dermatitis (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6684&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=f19b3fcdd62354ab56d9aa305cea0493	001		sdirect						
1204	American Journal of Emergency Medicine (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6685&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=ac12ae0ddc6f79f59792cfad70c03c3f	001		sdirect						
1205	American Journal of Infection Control (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6685&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=ac12ae0ddc6f79f59792cfad70c03c3f	001		sdirect						
1206	American Journal of Orthodontics and Dentofacial Orthopedics (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6685&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=ac12ae0ddc6f79f59792cfad70c03c3f	001		sdirect						
1207	American Journal of Otolaryngology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6690&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=5de8660fdb1fe1b3d8b43c51bc5b53bd	001		sdirect						
1208	Annals of Diagnostic Pathology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6695&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=0b91bb95cf27b3b4dc15810728d7ede4	001		sdirect						
1209	Applied Nursing Research (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6700&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=b88d2d8dfe9e4ff12d82fa38d32b9865	001		sdirect						
1210	Archives of Physical Medicine and Rehabilitation (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6702&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=71558b8a3ab3145254b767cfe57432e2	001		sdirect						
1211	Archives of Psychiatric Nursing (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6703&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=4e67fb2fe80cd0e8c69c46789e3dd758	001		sdirect						
1212	Arthroscopy- The Journal of Arthroscopic  & Related Surgery (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6704&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=e0628bcdaa6ff75a991e837f0358af7b	001		sdirect						
1213	Best Practice & Research Clinical Anaesthesiology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6707&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=e7c48c10330f9a06ba08d3442c53e742	001		sdirect						
1214	Best Practice & Research Clinical Endocrinology & Metabolism (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6708&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=b099497ac781a77f87e5b17cc1c10eae	001		sdirect						
1215	Best Practice & Research Clinical Obstetrics & Gynaecology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6711&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=a1a6b7681ff225b6631e93ae6c36f246	001		sdirect						
1216	Best Practice & Research Clinical Rheumatology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6712&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=cbccb516ccd6d6e4695367fb3e28556a	001		sdirect						
1217	Blood Reviews (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6721&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=010c904294c1a6e65434ff78fa17c086	001		sdirect						
1218	Cancer Treatment Reviews (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6732&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=a89faa427978033b26981b3742911380	001		sdirect						
1219	Clinical Acupuncture and Oriental Medicine (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=7171&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=76b7392f79e473fcaf7b61f24c3e517a	001		sdirect						
1220	Clinical Effectiveness in Nursing (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6739&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=80f18a43d5d3afba4c3f595900aaeddf	001		sdirect						
1221	Complementary Therapies in Medicine (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6746&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=918f70fc66e52856fc1fa63c48ee91a9	001		sdirect						
1222	Comprehensive Psychiatry (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6748&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=8c87085f22137105fb07d580411c2f06	001		sdirect						
1223	Computer Methods and Programs in Biomedicine (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=5004&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=580c3d437df9edd8460b06a0f77fedc0	001		sdirect						
1224	Coronary Health Care (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6754&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=818af27ee4fd5bbaa285978b6f29b0ba	001		sdirect						
1225	Current Anaesthesia & Critical Care (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6758&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=8c145aececd9a1f35f512c54edf5d7a3	001		sdirect						
1261	International Journal of Applied Radiation and Isotopes	http://www.sciencedirect.com/science/journal/0020708X	001		sdirect						
1226	Current Diagnostic Pathology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6759&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=b21615d3d7ce6889f0eb78730cceec33	001		sdirect						
1227	Current Obstetrics & Gynaecology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6760&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=5fe1da4cdd1af12c7afd555f5d80189f	001		sdirect						
1228	Current Opinion in Biotechnology	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6760&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=5fe1da4cdd1af12c7afd555f5d80189f	001		sdirect						
1265	International Journal of Medical Informatics	http://www.sciencedirect.com/science/journal/13865056	001		sdirect						
1229	Current Problems in Cancer (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12943&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=87d0638d9b36953928484313cb5437d0	001		sdirect						
1230	Current Problems in Cardiology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12975&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=5c931ccf1a7630af6f5373267b636325	001		sdirect						
1231	Current Problems in Dermatology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12992&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=4c2e5675dd7732e158c9d1554a15dc0e	001		sdirect						
1232	Current Problems in Diagnostic Radiology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12936&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=d3e41d4e81b01fe5cda95421fdc2d171	001		sdirect						
1233	Current Problems in Pediatric and Adolescent Health Care (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12916&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=47fe7b444bcbf52eb98a61472e797fb2	001		sdirect						
1234	Current Problems in Surgery  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12969&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=f602c82f6e7885dee12ab5e4ed8c745c	001		sdirect						
1235	Digestive and Liver Diseases  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12914&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=920a8bd659a0fbe43cd75b21046a9e08	001		sdirect						
1236	Disease-a-Month  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=12981&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=7e65f3cb40bf67ba8098a260cd9fd547	001		sdirect						
1272	Journal of Arthroplasty, The (HSP)	  http://www.sciencedirect.com/science/journal/08835403	001		sdirect						
1237	Drug Resistance Updates  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6769&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=2da516acc31344884b3068db346c76e5	001		sdirect						
1238	Evidence-based Cardiovascular Medicine  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6786&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=9677df96b2d378b16b8c3a1bb4c42a8b	001		sdirect						
1239	Evidence-based Healthcare  (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6787&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=37aaa842c40a16bf5e5947400177ea1e	001		sdirect						
1240	Evidence-based Obstetrics & Gynecology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6788&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=594bc96a79cb92ce9560010a6032cdec	001		sdirect						
1241	Evidence-based Oncology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6789&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=e073fb3167186401140561b6c6bee8a9	001		sdirect						
1242	Fibrinolysis and Proteolysis (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6797&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=ea0211e007eeedcf9aa192a8cc42798c	001		sdirect						
1243	Foot, The (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6801&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=e7d8734a1a4586ed45a4a11f760377db	001		sdirect						
1244	Geriatric Nursing (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6810&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=b526e648f8ac090331bb43bfb43e6e42	001		sdirect						
1245	Heart & Lung, The Journal of Acute and Critical Care (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6815&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=f98bd9e93a915fa581e2b727bac60bc3	001		sdirect						
1246	Homeopathy	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=7170&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=6a71b1fce95837fda9bc045467f7876d	001		sdirect						
1247	Human Pathology (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6820&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=e138b10a09941f4a357f2bd68b566363	001		sdirect						
1248	Immunity (HSP)	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=7052&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=749ef4815177bd10aca8b64a2a0ebf40	001		sdirect						
1250	ImmunoMethods	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6823&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=18aaea8e96e44daba6e30e991cb279cf	001		sdirect						
1251	Information and Computation	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=6825&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=06a2f6d24e31a16a7d3dc2d06812eda4	001		sdirect						
1252	Information & Management	http://www.sciencedirect.com/science?_ob=JournalURL&_cdi=5968&_auth=y&_acct=C000000738&_version=1&_urlVersion=0&_userid=1507090&md5=b496afe53d4c1e4fccfa01e335cdd688	001		sdirect						
1253	Information and Organization	http://www.sciencedirect.com/science/journal/14717727 	001		sdirect						
1254	Information Processing Letters	 http://www.sciencedirect.com/science/journal/00200190	001		sdirect						
1255	Information Processing & Management	http://www.sciencedirect.com/science/journal/03064573 	001		sdirect						
1256	Information Sciences - Applications	http://www.sciencedirect.com/science/journal/10690115	001		sdirect						
1257	Information Security Technical Report	http://www.sciencedirect.com/science/journal/13634127	001		sdirect						
1258	Information and Software Technology	http://www.sciencedirect.com/science/journal/09505849	001		sdirect						
1259	Information Storage and Retrieval	http://www.sciencedirect.com/science/journal/00200271	001		sdirect						
1260	International Contact Lens Clinic	http://www.sciencedirect.com/science/journal/08928967	001		sdirect						
1262	International Journal of Hospitality Management	http://www.sciencedirect.com/science/journal/02784319	001		sdirect						
1263	International Journal of Information Management	http://www.sciencedirect.com/science/journal/02684012	001		sdirect						
1264	International Journal of Law and Psychiatry	 http://www.sciencedirect.com/science/journal/01602527	001		sdirect						
1266	International Journal of Trauma Nursing (HSP)	http://www.sciencedirect.com/science/journal/10754210	001		sdirect						
1267	Journal of Aging Studies	 http://www.sciencedirect.com/science/journal/08904065	001		sdirect						
1268	Journal of the American Academy of Dermatology (HSP)	  http://www.sciencedirect.com/science/journal/01909622	001		sdirect						
1269	Journal of American Association for Pediatric Ophthalmology and Strabismus (HSP)	http://www.sciencedirect.com/science/journal/10918531	001		sdirect						
1270	Journal of the American Psychiatric Nurses Association (HSP)	http://www.sciencedirect.com/science/journal/10783903	001		sdirect						
1271	Journal of the American Society for Surgery of the Hand (HSP)	 http://www.sciencedirect.com/science/journal/15310914	001		sdirect						
1273	Molecular and Cellular Endocrinology	 http://www.sciencedirect.com/science/journal/03037207	001		sdirect						
1274	Molecular and Cellular Neuroscience	  http://www.sciencedirect.com/science/journal/10447431	001		sdirect						
1275	Molecular and Cellular Probes	 http://www.sciencedirect.com/science/journal/08908508	001		sdirect						
1276	Molecular Aspects of Medicine	http://www.sciencedirect.com/science/journal/00982997	001		sdirect						
1277	Neuropeptides (HSP)	 http://www.sciencedirect.com/science/journal/01434179	001		sdirect						
1278	Tuberculosis (HSP)	 http://www.sciencedirect.com/science/journal/14729792	001		sdirect						
1279	Tubercle and Lung Diseases (HSP)	http://www.sciencedirect.com/science/journal/09628479	001		sdirect						
1280	Tissue and Cell (HSP)	 http://www.sciencedirect.com/science/journal/00408166	001		sdirect						
1281	Ultrasonics	http://www.sciencedirect.com/science/journal/0041624X	001		sdirect						
1282	Survey of Ophthalmology	http://www.sciencedirect.com/science/journal/0041624X	001		sdirect						
1283	Sleep Medicine Reviews (HSP)	http://www.sciencedirect.com/science/journal/10870792	001		sdirect						
1284	Seminars in Neonatology (HSP)	 http://www.sciencedirect.com/science/journal/10842756	001		sdirect						
1285	Regional Anesthesia and Pain Medicine (HSP)	http://www.sciencedirect.com/science/journal/10987339 	001		sdirect						
1286	Prostaglandins, leukotrienes and Essential Fatty Acids (HSP)	 http://www.sciencedirect.com/science/journal/09523278	001		sdirect						
1287	Newborn and Infant Nursing Reviews (HSP)	http://www.sciencedirect.com/science/journal/15273369	001		sdirect						
1288	Nurse Education in Practice (HSP)	http://www.sciencedirect.com/science/journal/14715953	001		sdirect						
1289	Nurse Education Today (HSP)	http://www.sciencedirect.com/science/journal/02606917	001		sdirect						
1290	Nursing Outlook (HSP)	http://www.sciencedirect.com/science/journal/00296554	001		sdirect						
1291	Ophthalmic and Physiological Optics 	http://www.sciencedirect.com/science/journal/02755408	001		sdirect						
1292	Oral Surgery, Oral Medicine, Oral Pathology, Oral Radiology & Endodontics (HSP)	http://www.sciencedirect.com/science/journal/10792104	001		sdirect						
1293	Otolaryngology - Head and Neck Surgery (HSP)	http://www.sciencedirect.com/science/journal/01945998	001		sdirect						
1294	Pain Management Nursing (HSP)	 http://www.sciencedirect.com/science/journal/15249042	001		sdirect						
1295	Pathology and Oncology Rsearch (HSP)	http://www.sciencedirect.com/science/journal/12194956	001		sdirect						
1296	Progress in Biophysics and Molecular Biology	http://www.sciencedirect.com/science/journal/00796107	001		sdirect						
1297	Metabolism (HSP)	 http://www.sciencedirect.com/science/journal/00260495	001		sdirect						
1298	Midwifery (HSP)	 http://www.sciencedirect.com/science/journal/02666138	001		sdirect						
1410	Annals of Rheumatic Diseases	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000652-000000000-00000	001		imas						
1412	Clinical Obstetrics & Gynecology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003081-000000000-00000	001		imas						
1414	Archives of Disease in Childhood - Fetal & Neonatal Edition	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00042223-000000000-00000	001		imas						
1418	Arthritis Research & Therapy	http://arthritis-research.com/home/			fbjl				1999 -		
1421	BMC Anesthesiology	http://www.biomedcentral.com/bmcanesthesiol/			fbjl				2001 -		
1419	BioMagnetic Research and Technology	http://www.biomagres.com/articles/browse.asp			fbjl				2003 -		
1424	BMC Bioinformatics	http://www.biomedcentral.com/bmcbioinformatics/			fbjl				2000 -		
1426	BMC Biotechnology	http://www.biomedcentral.com/bmcbiotechnol/			fbjl				2001 -		
1425	BMC Biology	http://www.biomedcentral.com/bmcbiol/			fbjl				2003 -		
1450	BMC International Health and Human Rights	http://www.biomedcentral.com/bmcinthealthhumrights/			fbjl				2001 -		
1451	BMC Medical Education	http://www.biomedcentral.com/bmcmededuc/			fbjl				2001 -		
1420	BioMedical Engineering OnLine	http://www.biomedical-engineering-online.com/home/			fbjl				2002 -		
1452	BMC Medical Ethics	http://www.biomedcentral.com/bmcmedethics/			fbjl				2000 -		
1453	BMC Medical Genetics	http://www.biomedcentral.com/bmcmedgenet/			fbjl				2000 -		
1454	BMC Medical Imaging	http://www.biomedcentral.com/bmcmedimaging/			fbjl				2001 -		
1455	BMC Medical Informatics and Decision Making	http://www.biomedcentral.com/bmcmedinformdecismak/			fbjl				2001 -		
1456	BMC Medical Research Methodology	http://www.biomedcentral.com/bmcmedresmethodol/			fbjl				2001 -		
1458	BMC Microbiology	http://www.biomedcentral.com/bmcmicrobiol/			fbjl				2001 -		
1463	BMC Neuroscience	http://www.biomedcentral.com/bmcneurosci/			fbjl				2000 -		
1469	BMC Pediatrics	http://www.biomedcentral.com/bmcpediatr/			fbjl				2001 -		
1478	BMC Surgery	http://www.biomedcentral.com/bmcsurg/			fbjl				2001 -		
1471	BMC Physiology	http://www.biomedcentral.com/bmcphysiol/			fbjl				2001 -		
89	Pharmacological Reviews 	http://intl-pharmrev.aspetjournals.org/			fbjl				1949 -		
52	Internet Journal of Neurosurgery, The	https://ispub.com/IJN			fbjl				2001 -		
16	Blood	http://www.bloodjournal.org/content/by/year		365	fbjl				1946 -		
5013	Orthopedic Clinics of North America	http://www.sciencedirect.com/science/journal/00305898			cyclops				2006 -		
1481	Cancer Cell International	http://www.cancerci.com/home/			fbjl				2001 -		
1482	Cardiovascular Diabetology	http://www.cardiab.com/home/			fbjl				2002 -		
1483	Cardiovascular Ultrasound	http://www.cardiovascularultrasound.com/home/			fbjl				2003 -		
1485	Cell Communication and Signaling	http://www.biosignaling.com/home/			fbjl				2003 -		
1486	Clinical and Molecular Allergy	http://www.clinicalmolecularallergy.com/home/			fbjl				2003 -		
1488	Cost Effectiveness and Resource Allocation	http://www.resource-allocation.com/home/			fbjl				2003 -		
1489	Critical Care Forum	http://ccforum.com/			fbjl				1997 -		
1492	Environmental Health: A Global Access Science Source	http://www.ehjournal.net/home/			fbjl				2002 -		
1475	BMC Public Health	http://www.biomedcentral.com/bmcpublichealth/	001		fbjl						
1495	Genome Biology	http://genomebiology.com/home/			fbjl				2000 -		
1496	Harm Reduction Journal	http://www.harmreductionjournal.com/home/			fbjl				2004 -		
1498	Health Research Policy and Systems	http://www.health-policy-systems.com/home/			fbjl				2003 -		
1497	Health and Quality of Life Outcomes	http://www.hqlo.com/home/			fbjl				2003 -		
1499	Human Resources for Health	http://www.human-resources-health.com/home/			fbjl				2003 -		
1500	International Journal for Equity in Health	http://www.equityhealthj.com/home/			fbjl				2002 -		
1505	Journal of Carcinogenesis	http://www.carcinogenesis.com/			fbjl				2002 -		
1508	Journal of Nanobiotechnology	http://www.jnanobiotechnology.com/home/			fbjl				2003 -		
1509	Journal of Negative Results in Biomedicine	http://www.jnrbm.com/home/			fbjl				2002 -		
1510	Journal of Neuroinflammation	http://www.jneuroinflammation.com/home/			fbjl				2004 -		
1511	Journal of Translational Medicine	http://www.translational-medicine.com/home/			fbjl				2003 -		
1513	Lipids in Health and Disease	http://www.lipidworld.com/home/			fbjl				2002 -		
1514	Malaria Journal	http://www.malariajournal.com/home/			fbjl				2002 -		
90	Plant Physiology	http://intl.plantphysiol.org/			fbjl				1926 -		
1522	Reproductive Biology and Endocrinology	http://www.rbej.com/home/			fbjl				2003 -		
1523	Reproductive Health	http://www.reproductive-health-journal.com/home/			fbjl				2004 -		
1524	Respiratory Research	http://respiratory-research.com/home/			fbjl				2000 -		
1525	Retrovirology	http://www.retrovirology.com/home/			fbjl				2004 -		
1526	Theoretical Biology and Medical Modelling	http://www.tbiomed.com/home/			fbjl				2004 -		
1527	Thrombosis Journal	http://www.thrombosisjournal.com/home/			fbjl				2003 -		
1528	World Journal of Surgical Oncology	http://www.wjso.com/home/			fbjl				2003 -		
1576	American Journal of Surgical Pathology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000478-000000000-00000	001		imas						
1577	Annals of Surgery	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000658-000000000-00000	001		imas						
1578	Annals of Surgical Oncology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00042561-000000000-00000	001		imas						
2197	JAMA: Journal of the American Medical Association, The	http://jama.ama-assn.org/			presen				1998 -		
1395	Acta Dermato-Venereologica + Suplement	http://www.medicaljournals.se/acta/content/			presen				1998-		
1579	Archives of Disease in Childhood Education and Practice	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=01196049-000000000-00000	001		imas						
1580	Arthritis & Rheumatism	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000889-000000000-00000	001		imas						
1581	Arthritis Care & Research	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00001608-000000000-00000	001		imas						
1582	Brain	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00002423-000000000-00000	001		imas						
1583	British Medical Journal	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00002591-000000000-00000	001		imas						
1584	Clinical Journal of Pain	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00002508-000000000-00000	001		imas						
1585	Clinical Molecular Pathology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00043774-000000000-00000	001		imas						
1586	Clinical Nuclear Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003072-000000000-00000	001		imas						
1587	Clinical Orthopaedics & Related Research	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003086-000000000-00000	001		imas						
1588	Cornea	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003226-000000000-00000	001		imas						
1589	Current Opinion in Cardiology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00001573-000000000-00000	001		imas						
1590	Current Opinion in Oncology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00001622-000000000-00000	001		imas						
1506	Journal of Circadian Rhythms	http://www.jcircadianrhythms.com/			fbjl				2003 -		
1507	Journal of Immune Based Therapies and Vaccines	http://www.jibtherapies.com/content/			fbjl				2003 - 2011		
1512	Kinetoplastid Biology and Disease	http://www.kinetoplastids.com/content/			fbjl				2002 - 2007		
1494	Genetic Vaccines and Therapy	http://gvt-journal.biomedcentral.com/articles			fbjl				2003 - 2012		
1591	Current Opinion in Ophthalmology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00055735-000000000-00000	001		imas						
1592	Current Opinion in Rheumatology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00002281-000000000-00000	001		imas						
1593	Genitourinary Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004190-000000000-00000	001		imas						
1968	Current Opinion in Psychiatry (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66927			pq						
1594	Journal of Clinical Psychopharmacology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004714-000000000-00000	001		imas						
1595	Journal of Computer Assisted Tomography	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004728-000000000-00000	001		imas						
1596	Journal of Hypertension	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004872-000000000-00000	001		imas						
1597	Journal of Hypertension - Supplement	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005136-000000000-00000		001	imas						
1598	Journal of Orthopaedic Trauma	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005131-000000000-00000	001		imas						
1599	Journal of Pediatric Orthopaedics	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00004694-000000000-00000	001		imas						
1600	Journal of the American Society of Echocardiography	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00002144-000000000-00000	001		imas						
1601	Laryngoscope	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00005537-000000000-00000	001		imas						
1602	Menopause	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00042192-000000000-00000	001		imas						
1603	Molecular Pathology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00063451-000000000-00000	001		imas						
1604	Neurology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00006114-000000000-00000	001		imas						
1605	Neurology in Practice	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00130829-000000000-00000	001		imas						
1606	New England Journal of Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00006024-000000000-00000	001		imas						
1607	Obstetrics & Gynecology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00006250-000000000-00000	001		imas						
1608	Pediatric Infectious Disease Journal, The	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00006454-000000000-00000	001		imas						
1609	Retina	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00006982-000000000-00000	001		imas						
1610	Seminars in Respiratory & Critical Care Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00019574-000000000-00000	001		imas						
1611	Southern Medical Association Journal	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00007611-000000000-00000	001		imas						
1612	Spine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00007632-000000000-00000	001		imas						
1613	Spine: Affiliated Society Meeting Abstracts	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00152232-000000000-00000	001		imas						
1614	Transactions of the ... Meeting of the American Surgical Association	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00153307-000000000-00000	001		imas						
1615	Transactions of the ... Meeting of the Southern Surgical Association	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00594858-000000000-00000	001		imas						
1616	Transplantation	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00007890-000000000-00000	001		imas						
1617	American Journal of Clinical Oncology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000421-000000000-00000	001		imas						
4949	Journal of Bone and Joint Surgery, The 	http://www.ejbjs.org/			vicft		hvic08	hvic08			
2539	Acupuncture in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=78768\r\n\n			pqhmc				2006 - 		
2540	Addiction	http://proquest.umi.com/pqdlink?RQT=318&PMID=17071\r\n\n			pqhmc				1997 - 2000		
163	ANS. Advances in Nursing Science (1998-2004)	http://proquest.umi.com/pqdlink?RQT=318&PMID=35665			pqn						
1413	Archives of Disease in Childhood	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000740-000000000-00000			imas						
1636	European Journal of Nutrition	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037024&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66950&PageNum=1		365	pq				2002 --		
288	Healthcare Executive; Chicago (1991-actualitat)	http://proquest.umi.com/pqdlink?RQT=318&PMID=14232			pq						
264	European Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26835			pq				1996 -		
316	International Journal of Surgical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38744			pq				1998 --		
415	Journal of Vascular Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27452			pq				1996 --		
630	Health; New York (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=30042			pq						
631	Health; San Francisco (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12318			pq						
652	Healthline (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11468			pq						
724	Mayo Clinic Health Letter; English ed. (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12134			pq						
1653	Osteoporosis International (abstracts)	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037713&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66967&PageNum=1			pq						
774	Public Health Reports; Cary (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=44188			pq						
1777	Journal of Gene Medicine	http://		300	pq				1999 --		
1856	Acta Orthopaedica Scandinavica (2000-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=300377 			ebscoimas						
1857	American Journal of Nephrology (1998-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=100727			ebscoimas		00R93E6EZ2	CU7Q5L43			
105	Acta Histochemica	http://proquest.umi.com/pqdlink?RQT=318&PMID=48508			pq				2002 --		
1858	American Journal of Neuroradiology (AJNR) (1995-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=106079 			ebscoimas		azubiri	delmar			
1859	American Journal of Roentgenology (AJR) (2000-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=104322			ebscoimas						
1860	The American Journal of Sports Medicine (1998-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=108242			ebscoimas		imas	delmar			
1970	Diagnostic Imaging Europe (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=38236			pq						
1861	Annales d'Otolaryngologie et de chirurgie cervico-faciale (1997-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=107528			ebscoimas						
1862	Calcified Tissue International (1996-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=100120			ebscoimas						
1863	Canadian Journal of Anesthesia (1987-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=107664			ebscoimas		azubiri	686686			
1864	Clinical Nephrology (2002-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=109334			ebscoimas		imas	F209537z			
1865	European Journal of Endocrinology (2000-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=102027			ebscoimas						
2741	BMC Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68316\r\n\n			pqhmc				 - 		
1866	International Journal for Quality in Health Care (1998-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=102627			ebscoimas						
1867	Journal of Clinical Psychiatry	http://ejournals.ebsco.com/direct.asp?JournalID=103915			ebscoimas						
1868	Journal of Neurosurgery (1990-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=104815			ebscoimas						
1869	Journal of Rheumatology (2001-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=104640			ebscoimas						
1871	Osteoporosis International (1997-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=102828			ebscoimas						
1872	Radiology (1999-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=103646			ebscoimas		azubiri	242552			
1874	Seminars in Hematology (2002-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=108389			ebscoimas		azubiri	delmar			
1875	Seminars in Oncology (2002-actualitat)	http://ejournals.ebsco.com/direct.asp?JournalID=108392			ebscoimas		azubiri	delmar			
1520	Population Health Metrics	http://www.pophealthmetrics.com/home/			fbjl				2003 -		
38	Future of Children, The (web editor)	http://www.futureofchildren.org/			fbjl				1991 -		
1891	AIDS & Public Policy Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=10273			pq						
1892	AIDS Alert (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11517			pq						
1893	AIDS Patient Care & STDs (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11518			pq						
1895	ANZ Journal of Surgery (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67113			pq						
1896	Acta Psychiatrica Scandinavica (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67103			pq						
1897	Addiction Letter, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11520			pq						
1898	Addictive Behaviors (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8573			pq						
1900	Alcoholism & Drug Abuse Weekly (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11521			pq						
1901	Allergy (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67108			pq						
1904	American Dental Association. The Joirnal of the American Dental Association (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28760			pq						
1905	American Fitness (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11458			pq						
1906	American Journal of Cardiology, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27507			pq						
1908	Anaesthesia (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67109			pq						
1909	Anatomical Science International (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67201			pq						
1912	Annals of Behavioral Science (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66274			pq						
1913	Annals of Clinical Microbiology and Antimicrobials (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68260			pq						
1921	Applied Psychology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66822			pq						
1924	Archives of Disease in Childhood. Fetal and Neonatal Edition (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=45484			pq						
1925	Arteriosclerosis, Thrombosis and Vascular Biology (abstract)	http://proquest.umi.com/pqdlink?RQT=318&PMID=17151			pq						
1926	Arthritis Today (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11493			pq						
1928	BJOG, an International Journal of Obstetrics and Gynaecology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28706			pq						
1929	Behavior Genetics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69701			pq						
1930	Behavioral Interventions (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66214			pq						
1931	Bioethics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67118			pq						
1935	Brief Treatment and Crisis Intervention (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=59679			pq						
1940	Cambridge Quarterly of Healthcare Ethics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66183			pq						
1943	Cancer Cell International (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68329			pq						
1945	Cancer Nursing (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66296			pq						
1947	Cardiovacular Diabetology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68330			pq						
1949	Cardiovascular Ultrasound (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68330			pq						
1951	Cell & Chromosome (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68334			pq						
1515	Medical Immunology	http://www.medimmunol.com/content/			fbjl				2002 - 2006		
1952	Cell Communication and Signaling (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68335			pq						
1954	Child & Adolescent Social Work Journal; C&A (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=16425			pq						
1955	Children's Health Care (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66276			pq						
1959	Clinical Infectious Diseases (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67474			pq						
1962	Clinical and Experimental Allergy (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=36733			pq						
1963	Comparative Hepatology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68337			pq						
1965	Cost Effectiveness and Resource Allocation (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68338			pq						
1966	Culture, Medicine and Psychiatry (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69704			pq						
1967	Current Controlled Trials in Cardiovascular Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68340			pq						
1971	Dynamic Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68341			pq						
1977	European Journal of Cancer Care (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=39050			pq						
1979	European Spine Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69706			pq						
1981	Filaria Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68343			pq						
1985	Genetic Vaccines and Therapy (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68344			pq						
1987	Genome Biology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68345			pq						
1988	Geriatrics and Gerontology International (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67270			pq						
1991	Health Communication (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66282			pq						
1992	Health Education & Behavior (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=22101			pq						
1996	Health Physics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66359			pq						
1997	Health Research Policy and System (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68347			pq						
2004	Human Resources for Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68349			pq						
2005	Infancy (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67710			pq						
2006	International Journal of Behavioral Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66285			pq						
2007	International Journal of Behavioral Nutrition and Physical Activity (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68352			pq						
2009	International Journal of Clinical Practice (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67273			pq						
2010	International Journal of Geriatric Psychiatry (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66260			pq						
2013	International Journal of Health Geographics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68353			pq						
2014	International Journal of Rehabilitation Research (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66360			pq						
2017	Journal of Behavioral Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69709			pq						
2018	Journal of Biology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68354			pq						
2020	Journal of Circadian Rhythms (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68356			pq						
2021	Journal of Clinical Pharmacology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=45490			pq						
2023	Journal of Community Health Nursing (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67714			pq						
2026	Journal of Developmental and Behavioral Pediatrics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66361			pq						
2027	Journal of ECT, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66362			pq						
2028	Journal of Educational & Psychological Consultation (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66287			pq						
2031	Journal of Evolutionary Biology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67144			pq						
2032	Journal of General Internal Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67145			pq						
2036	Journal of Immune Based Therapies and Vaccines (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68357			pq						
2038	Journal of Medicine and Philosophy, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=15342			pq						
2039	Journal of Musculoskeletal Pain (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66208			pq						
2040	Journal of Nanobiotechnology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68358			pq						
2041	Journal of Negative Results in Biomedicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68359			pq						
2042	Journal of Nervous and Mental Disease (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66363			pq						
2043	Journal of Neurotrauma (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66583			pq						
2044	Journal of Nursing Administration (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66364			pq						
2047	Journal of Occupational Rehabilitation (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69710			pq						
2048	Journal of Occupational and Environmental Hygiene (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67680			pq						
2050	Journal of Paediatrics and Child Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67148			pq						
2051	Journal of Personality Assessment (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66288			pq						
2052	Journal of Psychosocial Oncology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66209			pq						
2058	Journal of Translational Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68360			pq						
2059	Journal of the Learning Sciences, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66289			pq						
2063	Kinetoplastid Biology and Disease (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68361			pq						
2068	Lipids in Health and Disease (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68362			pq						
2074	Measurement in Physical Education and Exercise Science (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67682			pq						
2076	Medical Care (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66365			pq						
2079	Medical Letter on Drugs and Therapeutics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27220			pq						
2083	Microbial Cell Factories (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68365			pq						
2084	Mind, Culture and Activity (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67675			pq						
2085	Mutagenesis (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68504			pq						
2092	Nursing and Health Sciences (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67154			pq						
2093	Nutrition Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68369			pq						
2098	PN (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11484			pq						
2099	Paediatrc Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38809			pq						
2102	Pediatrics International (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67160			pq						
2108	Population Health Metrics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68370			pq						
2111	Proteome Science (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68371			pq						
2113	Psycho - Oncology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66270			pq						
2114	Psychological Inquiry (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66294			pq						
2115	Psychological Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66193			pq						
2116	Psychometrika (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69716			pq						
2117	Psychophysiology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67164			pq						
2118	Psychosomatic Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66366			pq						
2122	Research in Nursing & Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66271			pq						
2123	Research on Language and Social Interaction (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66295			pq						
2124	Scandinavian Journal of Medicine and Science (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67167			pq						
2126	Scientific Studies of Reading (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67702			pq						
2128	Social Psychiatry and Psychiatric Epidemiology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=69718			pq						
2130	Sociology of Health & Illness (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67171			pq						
2133	Statistics in Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66272			pq						
2135	Stress and Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66273			pq						
2136	Stroke (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=23419			pq						
2138	Surgical Practice (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67203			pq						
2139	Teaching of Psychology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=19335			pq						
2142	Therapeutic Drug Monitoring (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66368			pq						
2143	Thrombosis Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68374			pq						
2146	Trends in Health Care, Law & Ethics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=10841			pq						
2147	Trends in Neurosciences (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8953			pq						
2148	Tropical Medicine and International Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67176			pq						
2151	University of California, berkeley, Wellness Center (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11559			pq						
2153	Violence and Abuse Abstracts (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=37605			pq						
2155	Vox Sanguinis (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27420			pq						
2156	Weight Watchers Magazine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=16476			pq						
2157	Western Journal of Nursing Research (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=13649			pq						
2159	Women & Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=7904			pq						
2162	World Journal of Surgical Oncology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=68375			pq						
1741	AANA Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240050&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66992&PageNum=1			pq				2004 --		
1983	Food & Drug Law Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=67544			pq				2005 --		
1674	AAOHN Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1107344715&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=39312&PageNum=1			pq				1999 --		
104	ACP Journal Club	http://proquest.umi.com/pqdlink?RQT=318&PMID=52709			pq				2002 --		
1890	AHA News	http://proquest.umi.com/pqdlink?RQT=318&PMID=67111			pq				2004 --		
111	AIDS Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=9953			pq				1996 - 2000		
1680	AIDS Education and Prevention	http://proquest.umi.com/pqdweb?RQT=318&TS=1107345140&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37943&PageNum=1			pq				1998 --		
1894	AIDS Vaccine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56198			pq				2003 --		
1804	AIDS Weekly	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243606&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=51278&PageNum=1			pq				1995 --		
545	AIDS and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=55624		365	pq				1999 --		
547	AIHA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=20167			pq				1993 - 2003		
1675	Abdominal Imaging	http://proquest.umi.com/pqdweb?RQT=318&TS=1107344821&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65798&PageNum=1		365	pq				2002 --		
103	Academic Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=46162			pq				2001 --		
1676	Academic Psychiatry	http://proquest.umi.com/pqdweb?RQT=318&TS=1107344870&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37254&PageNum=1			pq				1998 --		
538	Accent on Living	http://proquest.umi.com/pqdlink?RQT=318&PMID=22603			pq				1994 - 2001		
1742	Acta Diabetologica	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240050&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65753&PageNum=1		365	pq				2002 --		
1620	Acta Neuropathologica	http://proquest.umi.com/pqdweb?RQT=318&TS=1105975033&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66934&PageNum=1		365	pq				2002 --		
106	Addiction	http://proquest.umi.com/pqdlink?RQT=318&PMID=17071			pq				1997 - 2000		
2145	Trauma	http://proquest.umi.com/pqdlink?RQT=318&PMID=66730			pq				1999 --		
541	Administration in Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=7931			pq						
1677	Adolescence	http://proquest.umi.com/pqdweb?RQT=318&TS=1107344916&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=26960&PageNum=1			pq				1988 --		
108	Adolescent Medicine Clinics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49932			pq				2001 --		
1678	Advances in Skin & Wound Care	http://proquest.umi.com/pqdweb?RQT=318&TS=1107344971&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=39398&PageNum=1			pq				1999 - 2004		
109	Age and Ageing	http://proquest.umi.com/pqdlink?RQT=318&PMID=15291		180	pq				1997 --		
542	Aging	http://proquest.umi.com/pqdlink?RQT=318&PMID=27374			pq				1990 - 1996		
1899	Aging & Elder Health Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67437			pq				2005 --		
110	Aging Male	http://proquest.umi.com/pqdlink?RQT=318&PMID=56223			pq				2003 --		
113	Alcohol Research and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=18306			pq				1990 --		
112	Alcohol and Alcoholism : International Journal of the Medical Council on Alcoholism	http://proquest.umi.com/pqdlink?RQT=318&PMID=53217		180	pq				1999 --		
114	Alternative Therapies in Health and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38441			pq				1998 --		
550	Alzheimer's Care Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=50639			pq				2002 - 2003		
1902	Ambio	http://proquest.umi.com/pqdlink?RQT=318&PMID=68214		180	pq				2005 --		
1903	Ambulatory Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68215		180	pq				2005 --		
551	American Annals of the Deaf	http://proquest.umi.com/pqdlink?RQT=318&PMID=27282			pq				1997 --		
115	American Dietetic Association. Journal of the American Dietetic Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=18999			pq				1995 - 2003		
116	American Family Physician	http://proquest.umi.com/pqdlink?RQT=318&PMID=24034			pq				1998 --		
555	American Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=15424			pq				1988 - 1993		
556	American Indian and Alaska Native Mental Health Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=37877			pq				1998 - 1999		
1682	American Journal of Audiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1107345837&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36486&PageNum=1			pq				1998 --		
1683	American Journal of Clinical Hypnosis	http://proquest.umi.com/pqdweb?RQT=318&TS=1107345921&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53562&PageNum=1			pq				2003 --		
558	American Journal of Clinical Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27518			pq				1994 - 1996		
117	American Journal of Community Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=18028		365	pq				1994 --		
118	American Journal of Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36637			pq				1998 --		
559	American Journal of Drug and Alcohol Abuse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=17557			pq						
119	American Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53195		180	pq				2000 --		
1684	American Journal of Geriatric Psychiatry, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1107345960&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37469&PageNum=1			pq				1998 --		
1685	American Journal of Health Behavior	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346053&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=52772&PageNum=1			pq				2003 --		
560	American Journal of Health Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=11449			pq				1997 --		
1907	American Journal of Human Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67473		180	pq				2005 --		
120	American Journal of Law and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=18339			pq				1998 --		
561	American Journal of Medicine, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27519			pq						
121	American Journal of Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10268			pq				1996 --		
562	American Journal of Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28566			pqn						
122	American Journal of Pathology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21318			pq				1996 - 2002		
123	American Journal of Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28648			pq				1988 --		
564	American Journal of Psychoanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=27115		365	pq				1995 --		
124	American Journal of Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29197			pq				1995 - 2001		
125	American Journal of Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=12495			pq				1994 --		
126	American Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=8			pq				1992 --		
128	American Journal of Respiratory Cell and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=12432			pq				1994 --		
127	American Journal of Respiratory and Critical Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54254			pq				2003 --		
1687	American Journal of Speech - Language Pathology	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346194&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36485&PageNum=1			pq				1998 --		
129	American Journal of Sports Medicine, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=14418			pq						
131	American Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=38445			pqn				1998 --		
565	American Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=18305			pq				1995 --		
132	American Surgeon, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35779			pq				1997 --		
133	Amyloid	http://proquest.umi.com/pqdlink?RQT=318&PMID=56225			pq				2003 --		
134	Anaesthesia and Intensive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37181			pq				1998 --		
135	Anatomischer Anzeiger	http://proquest.umi.com/pqdlink?RQT=318&PMID=48509			pq				2002 --		
182	Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53218		180	pq				1999 --		
1621	Anatomy and Embryology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106035778&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66935&PageNum=1		365	pq				2002 --		
1910	Anesthesia Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=68216		180	pq				2004 --		
136	Angiogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55625		365	pq				1998 --		
1911	Angiogenesis Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51257			pq				1998 --		
137	Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36630			pq				1998 --		
139	Annals of Clinical Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=43083			pq				2001 --		
140	Annals of Clinical Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=55626			pq				1999 - 2003		
141	Annals of Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=51939			pq				2002 --		
142	Annals of Nutrition & Metabolism	http://proquest.umi.com/pqdlink?RQT=318&PMID=45286			pq				2001 --		
143	Annals of Otology, Rhinology & Laryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26397			pq				1995 --		
1914	Annals of Surgical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69699		365	pq				1999 --		
145	Annals of Tropical Paediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38656			pq				1997 - 2000		
1915	Annals of Vascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37001			pq				1998 --		
1916	Annals of the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=28112			pq				1997 - 2003		
146	Annual Review of Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37421		365	pq				1998 --		
147	Annual Review of Biophysics and Biomolecular Structure	http://proquest.umi.com/pqdlink?RQT=318&PMID=37669		365	pq				1998 --		
148	Annual Review of Cell and Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37363		365	pq				1997 --		
149	Annual Review of Entomology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37670		365	pq				1998 --		
150	Annual Review of Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=22339			pq				1996 - 2002		
1917	Annual Review of Gerontology & Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68261			pq				2004 --		
151	Annual Review of Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17128		365	pq				1997 --		
152	Annual Review of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37671		365	pq				1998 --		
153	Annual Review of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24718		365	pq				1997 --		
154	Annual Review of Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=18603		365	pq				1996 --		
1918	Annual Review of Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68348			pq				2005 --		
155	Annual Review of Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=17150		365	pq				1997 --		
156	Annual Review of Pharmacology and Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24717		365	pq				1997 --		
157	Annual Review of Physical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=38647		365	pq				1998 --		
158	Annual Review of Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37672		365	pq				1998 --		
159	Annual Review of Phytopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37376		365	pq				1998 --		
160	Annual Review of Plant Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37379		365	pq				1998 --		
161	Annual Review of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24716		365	pq				1993 --		
162	Annual Review of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=17732		365	pq				1997 --		
1919	Annual of Psychoanalysis, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67281			pq				2003 -2004		
1920	Anti-Infectives Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56199			pq				2003 --		
1922	Applied Psychophysiology and Biofeedback	http://proquest.umi.com/pqdlink?RQT=318&PMID=69700		365	pq				1997 --		
1923	Applied Radiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66993			pq				2004 --		
1622	Archives of Dermatological Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106035864&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66936&PageNum=1		365	pq				2002 --		
165	Archives of Disease in Childhood	http://proquest.umi.com/pqdlink?RQT=318&PMID=45484			pq				1996 - 2003		
166	Archives of Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=24517			pq				1996 --		
174	Archives of Pathology & Laboratory Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30163			pq				1996 --		
176	Archives of Sexual Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19481		365	pq				1992 --		
1623	Archives of Virology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106035910&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66937&PageNum=1		365	pq				2002 --		
1743	Archives of Women's Mental Health	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240228&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65749&PageNum=1		365	pq				2001 --		
179	Association of Operating Room Nurses. AORN Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35897			pqn				1998 --		
180	Audiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33512			pq				1996 - 2001		
1744	Audiology & Neurotology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240273&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66443&PageNum=1			pq				1998 --		
1927	Australian Journal of Advanced Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=59499			pq				2003 --		
571	Australian Journal of Oto - Laryngology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38208			pq				1998 --		
572	Australian Nursing Journal, ANJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=36024			pqn				1998 --		
570	Australian and New Zealand Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=16273			pq				1997 - 2001		
1624	Basic Research in Cardiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036062&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66938&PageNum=1		365	pq				2002 --		
574	Behavioral Health Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=13860			pq				1994 --		
573	Behavioral and Brain Sciences (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=17437			pq						
575	Better Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=12368			pq				1994 --		
181	Biochemistry and Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36120		180	pq				1998 --		
183	Biological Bulletin, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21371			pq				1994 --		
576	Biological Therapies in Dentistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=44284			pq				2001 - 2001		
1745	Biology of the Neonate	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240365&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66451&PageNum=1			pq				1998 --		
184	Biomedical Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=55627		365	pq				2000 --		
1932	Biomedical Instrumentation & Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68217		180	pq				2005 --		
577	Biomedical Microdevices	http://proquest.umi.com/pqdlink?RQT=318&PMID=55628		365	pq				1998 --		
578	Biomedical Safety & Standards	http://proquest.umi.com/pqdlink?RQT=318&PMID=13019			pq				1998 - 2004		
185	Biometrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37041			pq				1998 - 2002		
186	Biophysical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36123			pq				1999 --		
579	Biostatistics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53239		180	pq				2000 --		
1933	Biotech Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56200			pq				2003 --		
580	Biotech Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51258			pq				1998 --		
1934	Bioterrorism Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51270			pq				2001 --		
581	Blood Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36039			pq				1995 --		
582	Body Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=36040			pq				1998 - 1999		
188	Brain	http://proquest.umi.com/pqdlink?RQT=318&PMID=33531		365	pq				1994 --		
189	Brain Topography	http://proquest.umi.com/pqdlink?RQT=318&PMID=55630			pq				1994 - 2004		
190	Brain, Behavior and Evolution	http://proquest.umi.com/pqdlink?RQT=318&PMID=37870			pq				1998 --		
191	Breast Cancer Research and Treatment	http://proquest.umi.com/pqdlink?RQT=318&PMID=55631		365	pq				1997 --		
192	Briefings in Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49211		120	pq				2001 --		
193	British Journal of Anaesthesia	http://proquest.umi.com/pqdlink?RQT=318&PMID=28118			pq				1995 --		
194	British Journal of Biomedical Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=37186			pq				1998 --		
195	British Journal of Clinical Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37365			pq				1998 --		
1936	British Journal of Forensic Practice, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=59282			pq				2003 --		
584	British Journal of Guidance & Counselling	http://proquest.umi.com/pqdlink?RQT=318&PMID=34449			pq				1997 - 2000		
1689	British Journal of Health Psychology	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346330&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38749&PageNum=1			pq				1998 --		
1937	British Journal of Healthcare Computing & Information Management, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67962			pq				2005 --		
585	British Journal of Neurosurgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=34451			pq				1997 - 2000		
196	British Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28109			pq				1996 - 2003		
197	British Journal of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=15882			pq				1995 --		
198	British Journal of Social Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37369			pq				1998 --		
199	British Journal of Sports Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45585			pq				2001 - 2003		
200	British Medical Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=53193		180	pq				2001 --		
1938	British Medical Journal, International Edition; BMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=28218			pq				1994 - 2003		
586	Buffalo Public Interest Law Journal (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=10276			pq						
1939	Bulletin of Experimental Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=55632		365	pq				2004 --		
203	Bulletin of the History of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54135			pq				2003 --		
1690	Bulletin of the Menninger Clinic	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346380&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37966&PageNum=1			pq				1998 --		
204	Bulletin on the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=37288			pq				1998 --		
587	Business and Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=15338			pq						
592	CJEM : Journal of the Canadian Association of Emergency Physicians	http://proquest.umi.com/pqdlink?RQT=318&PMID=43698			pq				2001 --		
588	Ca : a Cancer Journal for Clinicians (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=22723			pq						
1625	Calcified Tissue International	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036143&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66939&PageNum=1		365	pq				2002 --		
205	Canadian Association of Radiologists Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=47209			pq				1998 --		
1691	Canadian Journal of Dietetic Practice and Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346413&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38819&PageNum=1			pq				1998 --		
206	Canadian Journal of Experimental Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=20379			pq				1993 --		
207	Canadian Journal of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36143		180	pq				1998 --		
1941	Canadian Journal of Occupational Therapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=40569			pq				2000 --		
208	Canadian Journal of Physiology and Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37382		180	pq				1998 --		
1692	Canadian Journal of Psychiatry	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346493&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=55050&PageNum=1			pq				2004 --		
209	Canadian Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=37869			pq				1998 --		
1740	Canadian Journal of Rural Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1109163236&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=39285&PageNum=1			pq				1998 --		
210	Canadian Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=33539			pq				1994 --		
211	Canadian Medical Association Journal, CMAJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=33824			pq				1997 --		
1942	Canadian Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55078			pq				1999 --		
1693	Canadian Operating Room Nursing Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346541&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65709&PageNum=1			pq				2003 --		
1660	Cancer Biotherapy & Radiopharmaceuticals	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037983&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66581&PageNum=1		90	pq				2003 --		
213	Cancer Causes & Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=55633		365	pq				1999 - 2004		
1626	Cancer Chemotherapy and Pharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036452&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66940&PageNum=1		365	pq				1998 --		
1944	Cancer Gene Therapy Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56202			pq				2003 --		
1627	Cancer Immunology, Immunotherapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036572&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66941&PageNum=1		365	pq				2002 --		
589	Cancer News (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11453			pq						
1946	Cancer Vaccine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56203			pq				2003 --		
212	Cancer and Metastasis Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55164		365	pq				1997 - 2004		
590	Cancerweekly Plus	http://proquest.umi.com/pqdlink?RQT=318&PMID=36044			pq				1995 --		
214	Carcinogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37370		180	pq				1998 --		
215	Cardiac Electrophysiology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=55634		365	pq				1999 --		
1746	Cardiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240404&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66455&PageNum=1			pq				1998 --		
216	Cardiovascular Drugs and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55635		365	pq				1999 --		
1948	Cardiovascular Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=55636		365	pq				2004 --		
1950	Cardiovascular Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56201			pq				2003 --		
217	Caries Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=26453			pq				1997 --		
1953	Cell Stress & Chaperones	http://proquest.umi.com/pqdlink?RQT=318&PMID=68219		180	pq				2005 --		
1694	Cell and Tissue Banking	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346579&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=55637&PageNum=1		365	pq				2000 --		
1628	Cell and Tissue Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036616&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66942&PageNum=1		365	pq				2002 --		
1747	Cells Tissues Organs	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240453&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66450&PageNum=1			pq				1999 --		
218	Cerebral Cortex	http://proquest.umi.com/pqdlink?RQT=318&PMID=53219		180	pq				1999 --		
1748	Cerebrovascular Diseases	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240487&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66445&PageNum=1			pq				1997 --		
219	Chemical Senses	http://proquest.umi.com/pqdlink?RQT=318&PMID=53220		180	pq				1999 --		
1749	Chemotherapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240521&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66454&PageNum=1			pq				1998 --		
220	Chest	http://proquest.umi.com/pqdlink?RQT=318&PMID=28929			pq				1996 --		
591	Child Abuse & Neglect (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8343			pq						
221	Child Health Alert	http://proquest.umi.com/pqdlink?RQT=318&PMID=11503			pq				1997 --		
1695	Child Welfare	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346618&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=27849&PageNum=1			pq				1994 --		
1956	Chronic Respiratory Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66711			pq				2004 --		
222	Circulation	http://proquest.umi.com/pqdlink?RQT=318&PMID=27249			pq				1994 - 2002		
223	Circulation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27245			pq				1994 - 2002		
1957	Cleft Palate - Craniofacial Journal, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36488		180	pq				1998 --		
224	Climacteric (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=56224			pq						
225	Clinical & Experimental Metastasis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55639		365	pq				1999 - 2004		
1753	Clinical Autonomic Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240679&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65754&PageNum=1		365	pq				2002 --		
227	Clinical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=53534			pq				2002 --		
593	Clinical Diabetes	http://proquest.umi.com/pqdlink?RQT=318&PMID=36050			pq				1998 --		
1754	Clinical EEG and Neuroscience	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240716&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67419&PageNum=1			pq				2004 --		
1958	Clinical Excellence for Nurse Practitioners	http://proquest.umi.com/pqdlink?RQT=318&PMID=68376			pq				2005 --		
594	Clinical Governance Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=59205			pq				2003 --		
1696	Clinical Laboratory Science	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346669&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36487&PageNum=1			pq				1998 --		
228	Clinical Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=32456			pqn						
1960	Clinical Oncology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56204			pq				2003 --		
229	Clinical Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36052			pq				1998 --		
1666	Clinical Rehabilitation	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038204&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66566&PageNum=1			pq				2004 --		
1807	Clinical Trials	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66712&PageNum=1			pq				1994 --		
1961	Clinical Trials Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56205			pq				2003 --		
1751	Clinical and Experimental Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240613&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65728&PageNum=1		365	pq				2002 --		
226	Clinical and Investigative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=33540			pq				1994 --		
1752	Clinical and Experimental Nephrology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240613&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65678&PageNum=1		365	pq				2002 --		
1756	Community Genetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240843&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66453&PageNum=1			pq				1998 --		
230	Community Mental Health Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=19197		365	pq				1996 --		
596	Consumer Reports on Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11506			pq						
1964	Contemporary Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68377			pq				2005 --		
1809	Contemporary Drug Problems	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243798&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=23292&PageNum=1			pq				1996 --		
231	Contemporary Longterm Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36071			pq				1998 - 2002		
598	Counselling Psychology Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=34457			pq				1997 - 2000		
232	Critical Care Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=36633			pqn				1998 --		
233	Critical Care Nursing Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36080			pqn				1998 - 2003		
234	Critical Reviews in Biochemistry and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56217			pq				2003 --		
235	Critical Reviews in Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56218			pq				2003 --		
236	Critical Reviews in Clinical Laboratory Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=56259			pq				2003 --		
237	Critical Reviews in Computed Tomography	http://proquest.umi.com/pqdlink?RQT=318&PMID=56248			pq				2003 --		
238	Critical Reviews in Food Science and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=43989			pq				2001 --		
239	Critical Reviews in Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56219			pq				2003 --		
240	Critical Reviews in Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38195			pq				1998 --		
599	Current Health 1	http://proquest.umi.com/pqdlink?RQT=318&PMID=32974			pq				1996 --		
600	Current Health 2	http://proquest.umi.com/pqdlink?RQT=318&PMID=18757			pq				1988 --		
241	Current Medical Research and Opinion	http://proquest.umi.com/pqdlink?RQT=318&PMID=37296			pq				1998 --		
242	Cutis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37972			pq				1998 - 2003		
243	Cytogenetic and Genome Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27434			pq				1996 --		
601	Death Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=19217			pq				1996 - 2000		
244	Dementia and Geriatric Cognitive Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37871			pq				1998 --		
1969	Demography	http://proquest.umi.com/pqdlink?RQT=318&PMID=23899			pq				1995 --		
245	Dental Assistant	http://proquest.umi.com/pqdlink?RQT=318&PMID=41516			pq				2000 --		
246	Dental Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=27174			pq				1992 --		
1757	Dermatology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240882&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66456&PageNum=1			pq				1998 --		
247	Dermatology Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35680			pqn				2001 --		
602	Dermatology Times	http://proquest.umi.com/pqdlink?RQT=318&PMID=35694			pq				1998 --		
248	Developmental Medicine and Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26850			pq				2001 --		
1758	Developmental Neuroscience	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240920&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66444&PageNum=1			pq				1998 --		
249	Diabetes	http://proquest.umi.com/pqdlink?RQT=318&PMID=23769			pq				1997 --		
250	Diabetes Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=17598			pq				1996 --		
604	Diabetes Forecast	http://proquest.umi.com/pqdlink?RQT=318&PMID=11457			pq				1997 --		
1811	Diabetes Week	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243879&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=51259&PageNum=1			pq				2001 --		
605	Diabetes in the News (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11460			pq						
1629	Diabetologia	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036711&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66943&PageNum=1		365	pq				2002 --		
251	Digestion	http://proquest.umi.com/pqdlink?RQT=318&PMID=26836			pq				1994 --		
252	Digestive Diseases and Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=55640		365	pq				1997 --		
1759	Digestive Surgery	http://proquest.umi.com/pqdweb?RQT=318&TS=1109240956&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66457&PageNum=1			pq				1998 --		
253	Dimensions of Critical Care Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37202			pqn				1999 - 2002		
623	Food and Nutrition (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=22645			pq						
1630	Diseases of the Colon & Rectum	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036780&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66944&PageNum=1		365	pq				2002 --		
254	Documenta Ophthalmologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=55641		365	pq				1999 --		
606	Drug Information Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38240			pq				1998 --		
607	Drug Topics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=22506			pq						
608	Drug Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51260			pq				2000 --		
1812	Drugs and Alcohol Today	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243913&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59283&PageNum=1			pq				2003 --		
1631	Dysphagia	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036821&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66945&PageNum=1		365	pq				2002 --		
1972	EBRI Issue Brief	http://proquest.umi.com/pqdlink?RQT=318&PMID=38245			pq				1998 --		
1698	EMBO Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=53252			pq				2000 - 2002		
255	Ear, Nose & Throat Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37298			pq				1998 --		
256	Ecotoxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55642		365	pq				1999 --		
1852	El Farmaceutico Hospitales	http://proquest.umi.com/pqdweb?RQT=318&TS=1112170101&clientId=67485&VType=PQD&VName=PQD&VInst=PROD&pmid=67265&PageNum=1			pq				2004 --		
1973	Elder Law Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=68396			pq				2005 --		
258	Emergency Medicine Journal: EMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=58253			pq				2003 - 2003		
1813	Environmental Health Perspectives	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243951&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67001&PageNum=1			pq				2004 --		
610	Environmental Nutrition (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11464			pq						
1974	Environmental Toxicology and Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68221		180	pq				2005 --		
1975	Ethical Human Psychology and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68378			pq				2005 --		
611	Ethics & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=44935			pq				2001 --		
612	Ethnicity and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=37602			pq				1998 - 2000		
1632	European Archives of Psychiatry and Clinical Neuroscience	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036866&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66946&PageNum=1		365	pq				2002 --		
1633	European Child & Adolescent Psychiatry	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036909&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66947&PageNum=1		365	pq				2002 --		
1976	European Heart Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=67742		180	pq				2005 --		
259	European Journal of Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48510			pq				2001 --		
613	European Journal of Clinical Nutrition (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=13841			pq						
1634	European Journal of Clinical Pharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036939&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66948&PageNum=1		365	pq				2003 --		
260	European Journal of Contraception & Reproductive Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=56235			pq				2002 --		
1978	European Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55643		365	pq				2004 --		
1635	European Journal of Nuclear Medicine and Molecular Imaging	http://proquest.umi.com/pqdweb?RQT=318&TS=1106036985&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66949&PageNum=1		365	pq				2003 --		
262	European Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53253		180	pq				1999 --		
263	European Journal of Protistology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48520			pq				2001 --		
616	European Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53202		180	pq				2000 --		
1814	European Journal of Trauma	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243993&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65755&PageNum=1		365	pq				2002 --		
617	Evaluation & the Health Professions (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=16525			pq						
1980	Evidence - Based Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=52703			pq				2002 - 2003		
1761	Evidence - Based Nursing	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241039&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=52704&PageNum=1			pq				2003 - 2003		
618	Executive Health's Good Health Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=37100			pq				1998 - 1999		
266	Experimental & Applied Acarology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38255			pq				2000 --		
1637	Experimental Brain Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037088&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66951&PageNum=1		365	pq				2003 --		
269	FDA Consumer	http://proquest.umi.com/pqdlink?RQT=318&PMID=26588			pq				1988 --		
619	Familial Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=55644		365	pq				2001 --		
620	Families, Systems & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=39413			pq				1999 --		
267	Family Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=53221		180	pq				1999 --		
1702	Family Practice Management	http://proquest.umi.com/pqdweb?RQT=318&TS=1107346960&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37668&PageNum=1			pq				1998 --		
268	Family Process	http://proquest.umi.com/pqdlink?RQT=318&PMID=39292			pq				1999 --		
621	Family and Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=35986			pq				1998 - 2004		
1762	Fetal Diagnosis and Therapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241074&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66448&PageNum=1			pq				1998 --		
270	Florida Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37205			pqn				1998 --		
1982	Folia Biologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=68086			pq				2005 --		
1850	Folia Clinica en Obstetricia y Ginecologia	http://proquest.umi.com/pqdweb?RQT=318&TS=1112168001&clientId=67485&VType=PQD&VName=PQD&VInst=PROD&pmid=67253&PageNum=1			pq				2004 --		
271	Folia Phoniatrica et Logopaedica	http://proquest.umi.com/pqdlink?RQT=318&PMID=37872			pq				1998 --		
272	Folia Primatologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=38201			pq				1998 --		
624	Formulary	http://proquest.umi.com/pqdlink?RQT=318&PMID=36005			pq				1998 --		
273	Frontiers of Health Services Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=15980			pq				1987 --		
1763	Functional & Integrative Genomics	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241106&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65686&PageNum=1		365	pq				2002 --		
1703	Future of Children, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347006&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38606&PageNum=1			pq				1998 - 2004		
1764	Gastric Cancer	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241214&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65732&PageNum=1		365	pq				2002 --		
1984	Gastroenterology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56206			pq				2003 --		
625	Gene Therapy Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51276			pq				1995 --		
1765	Genetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241805&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=17472&PageNum=1			pq				2004 --		
1986	Genetics & Environmental Health Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67448			pq				2005 --		
274	Genome	http://proquest.umi.com/pqdlink?RQT=318&PMID=37377		180	pq				1998 --		
626	Genomics & Genetics Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51261			pq				1998 --		
275	Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=17521			pq				1996 --		
276	Gerontologist, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27214			pq				1992 --		
277	Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10181			pq				1994 --		
627	Global Cosmetic Industry	http://proquest.umi.com/pqdlink?RQT=318&PMID=26967			pq				1994 --		
278	Glycobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53258		180	pq				1999 --		
279	Gut	http://proquest.umi.com/pqdlink?RQT=318&PMID=28089			pq				1997 - 2003		
1770	Gynecologic and Obstetric Investigation	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242113&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66458&PageNum=1			pq				1998 --		
280	Gynecological Endocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56220			pq				2003 --		
655	HEC Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=53333		365	pq				1999 --		
628	Harvard Health Letter (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12165			pq						
629	Hastings Center Report, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21451			pq				1988 --		
1989	He@lth Information on the Internet	http://proquest.umi.com/pqdlink?RQT=318&PMID=66074			pq				2003 --		
632	Health & Medicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51262			pq				1998 --		
281	Health & Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=18747			pq				1994 --		
634	Health Affairs	http://proquest.umi.com/pqdlink?RQT=318&PMID=15986			pq				1994 --		
1816	Health At Every Size	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244064&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=11429&PageNum=1			pq				1994 - 1995		
282	Health Care Financing Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=14925			pq				1987 --		
637	Health Care Management Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=17776			pq				1992 - 2004		
1990	Health Care Management Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=53331		365	pq				2004 --		
638	Health Care Manager, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=16603			pq				1987 - 2003		
639	Health Care Strategic Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12636			pq				1991 --		
284	Health Data Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=34954			pq				1998 --		
285	Health Education Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53222		180	pq				1999 --		
1993	Health Facilities Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=67110			pq				2004 --		
641	Health Forum Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=27548			pq				1987 - 2003		
642	Health Industry Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=20363			pq				1992 - 2001		
1994	Health Insurance Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67451			pq				2005 --		
1817	Health Law Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244100&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=54996&PageNum=1			pq				1999 --		
1995	Health Law Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=55450			pq				2004 --		
643	Health Letter (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=10838			pq				\\n		
644	Health Management Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17789			pq				1987 --		
645	Health Marketing Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=7976			pq				1995 - 1998		
646	Health News	http://proquest.umi.com/pqdlink?RQT=318&PMID=11467			pq				1995 - 2001		
647	Health Policy and Planning	http://proquest.umi.com/pqdlink?RQT=318&PMID=53260		180	pq				1999 --		
286	Health Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=37123			pq				1988 --		
1707	Health Promotion International	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347183&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53223&PageNum=1		180	pq				1999 --		
1998	Health Risk Factor Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67452			pq				2005 --		
287	Health Services Management Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=45492			pq				2001 --		
649	Health Systems Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=18215			pq				1992 - 1997		
635	Health and Hygiene	http://proquest.umi.com/pqdlink?RQT=318&PMID=37983			pq				1998 --		
651	HealthFacts	http://proquest.umi.com/pqdlink?RQT=318&PMID=11602			pq				1997 --		
650	Healthcare Financial Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=17804			pq				1987 --		
1999	Healthcare Mergers, Acquisition & Ventures Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67453			pq				2005 --		
289	Heart	http://proquest.umi.com/pqdlink?RQT=318&PMID=28113			pq				1996 - 2003		
654	Heart Disease Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51264			pq				2000 --		
290	Heart Failure Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55645		365	pq				1999 --		
1767	Heart and Vessels	http://proquest.umi.com/pqdweb?RQT=318&TS=1109241973&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65757&PageNum=1		365	pq				2002 --		
2000	Hematology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56207			pq				2003 --		
656	Hepatitis Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51277			pq				1995 --		
2001	Heredity	http://proquest.umi.com/pqdlink?RQT=318&PMID=38630		365	pq				2000 --		
1708	Herz	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347216&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65805&PageNum=1		365	pq				2002 --		
2002	Hispanic Health Care International	http://proquest.umi.com/pqdlink?RQT=318&PMID=68382			pq				2005 --		
1638	Histochemistry and Cell Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037122&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66952&PageNum=1		365	pq				2003 --		
291	Holistic Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=36014			pqn				1998 - 2004		
2003	Hospital & Nursing Home Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67454			pq				2005 --		
292	Hospital Law Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=37215			pq				1998 --		
293	Hospital Materials Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12422			pq				1991 --		
657	Hospital Materiel Management Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=17711			pq				1987 - 2001		
294	Hospital Topics	http://proquest.umi.com/pqdlink?RQT=318&PMID=29060			pq				1997 --		
295	Human Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27986			pq				1994 --		
1709	Human Factors	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347260&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=19745&PageNum=1		365	pq				1997 --		
1639	Human Genetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037157&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66953&PageNum=1		365	pq				2003 --		
2015	International Quarterly of Community Health Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=59586		180	pq				2005 --		
1768	Human Genomics	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242008&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67590&PageNum=1		120	pq				2003 --		
1818	Human Heredity	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244141&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66447&PageNum=1			pq				1998 --		
296	Human Molecular Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53262		180	pq				1999 --		
1771	Human Mutation	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242153&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67593&PageNum=1		365	pq				1997 --		
297	Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53264		180	pq				1999 --		
298	Human Reproduction Update	http://proquest.umi.com/pqdlink?RQT=318&PMID=53263		180	pq				1999 --		
1667	Human and Experimental Toxicology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038234&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66716&PageNum=1			pq				2004 --		
299	Hypertension (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=18021			pq						
672	IT Health Care Strategist	http://proquest.umi.com/pqdlink?RQT=318&PMID=39258			pq				1999 - 2002		
300	Immunobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48716			pq				2001 --		
660	Immunotherapy Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51280			pq				1996 -		
302	Indian Journal of Medical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=36700			pq				1998 --		
1640	Infection	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037194&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66954&PageNum=1		365	pq				1999 --		
303	Infection Control and Hospital Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=16982			pq				1997 --		
304	Infectious Diseases in Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56216			pq				2003 --		
305	Inflammation	http://proquest.umi.com/pqdlink?RQT=318&PMID=55646		365	pq				1999 - 2004		
1641	Inflammation Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037230&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66955&PageNum=1		365	pq				2002 --		
306	Injury Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=49929			pq				2003 - 2003		
662	Inquiry	http://proquest.umi.com/pqdlink?RQT=318&PMID=17448			pq						
663	Inside MS	http://proquest.umi.com/pqdlink?RQT=318&PMID=11469			pq				1997 --		
1642	Intensive Care Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037269&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66956&PageNum=1		365	pq				2002 --		
307	International Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38262			pq				1998 --		
1819	International Archives of Allergy and Immunology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244181&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66446&PageNum=1			pq				1998 --		
1710	International Family Planning Perspectives	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347304&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37240&PageNum=1			pq				1998 --		
308	International Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33529		180	pq				1994 --		
1820	International Journal for Quality in Health Care	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244227&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65777&PageNum=1		180	pq				2000 --		
664	International Journal of Aging & Human Development, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12509			pq						
1821	International Journal of Angiology, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244451&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65758&PageNum=1		365	pq				2002 --		
309	International Journal of Cardiovascular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55647		365	pq				1999 --		
2008	International Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65783		365	pq				2004 --		
1643	International Journal of Colorectal Disease	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037305&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66957&PageNum=1		365	pq				2003 --		
665	International Journal of Eating Disorders (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=17401			pq						
310	International Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37023		180	pq				1998 --		
667	International Journal of Food Sciences and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=30322			pq				1996 - 2000		
1711	International Journal of Group Psychotherapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347351&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37928&PageNum=1			pq				1998 --		
2011	International Journal of Health Care Finance and Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53456		365	pq				2004 --		
398	Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53305		180	pq				1999 --		
2012	International Journal of Health Care Quality Assurance	http://proquest.umi.com/pqdlink?RQT=318&PMID=11861		365	pq				1992 --		
311	International Journal of Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=37435			pq				1998 - 2001		
1644	International Journal of Legal Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037362&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66958&PageNum=1		365	pq				2002 --		
312	International Journal of Leprosy and Other Mycobacterial Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=18181			pq				1996 --		
313	International Journal of Medical Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48512			pq				2002 --		
314	International Journal of Nursing Terminologies and Classifications	http://proquest.umi.com/pqdlink?RQT=318&PMID=36028			pqn				1998 --		
315	International Journal of Occupational and Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49933			pq				2002 --		
1713	International Journal of Psychiatry in Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347434&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59586&PageNum=1		180	pq				1999 --		
668	International Journal of Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=34470			pq				1997 - 2000		
1774	International Journal of STD & AIDS	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242289&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38467&PageNum=1			pq				1998 --		
669	International Journal of Social Psychiatry, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12523			pq						
317	International Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55648		365	pq				1999 --		
670	International Review of Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=34475			pq				1997 - 2000		
318	International Urology and Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55649		365	pq				1999 --		
319	Intervirology	http://proquest.umi.com/pqdlink?RQT=318&PMID=22467			pq				1995 --		
320	Investigational New Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=55650		365	pq				1997 - 2004		
321	Israel Journal of Psychiatry and Related Sciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37243			pq				1998 --		
671	Issues in Law & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30263			pq				1999 --		
417	JPEN, Journal of Parenteral and Enteral Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=12704			pq				1996 --		
323	Japanese Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53291		180	pq				1999 --		
2016	Japanese Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69708			pq				2004 --		
674	Joe Weider's Muscle & Fitness	http://proquest.umi.com/pqdlink?RQT=318&PMID=11621			pq				1995 --		
324	Journal for Specialists in Pediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36687			pqn				1998 --		
675	Journal of Acquired Immune Deficiency Syndromes (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12056			pq						
676	Journal of Aging & Social Policy (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=7960			pq						
677	Journal of Aging Studies (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11056			pq						
325	Journal of Aging and Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=13685			pq						
326	Journal of Allied Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49722			pq				2002 --		
327	Journal of Ambulatory Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=36990			pq				1998 - 2004		
1715	Journal of American College Health	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347510&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=27257&PageNum=1			pq				1997 --		
328	Journal of Antimicrobial Chemotherapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=53293		180	pq				1999 --		
678	Journal of Applied Gerontology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=13686			pq						
329	Journal of Assisted Reproduction and Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=55651		365	pq				1999 - 2004		
679	Journal of Athletic Training	http://proquest.umi.com/pqdlink?RQT=318&PMID=19516			pq				1997 --		
330	Journal of Audiovisual Media in Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38662			pq				2000 - 2000		
680	Journal of Behavioral Health Services & Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=12423			pq				1992 - 2004		
681	Journal of Biological Rhythms (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=13317			pq						
332	Journal of Bone and Joint Surgery; American volume	http://proquest.umi.com/pqdlink?RQT=318&PMID=28967			pq				1997 --		
333	Journal of Bone and Joint Surgery; British volume	http://proquest.umi.com/pqdlink?RQT=318&PMID=28785			pq				1996 --		
1775	Journal of Cancer Research & Clinical Oncology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242326&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65689&PageNum=1		365	pq				2002 --		
334	Journal of Cardiovascular Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35850			pqn				1998 - 2004		
335	Journal of Cardiovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=36628			pq				1998 --		
2019	Journal of Cellular and Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68500			pq				2005 --		
336	Journal of Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=14627			pq				1996 - 2000		
682	Journal of Child Sexual Abuse	http://proquest.umi.com/pqdlink?RQT=318&PMID=7856			pq				1995 - 1997		
1661	Journal of Child and Adolescent Psychopharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038018&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66582&PageNum=1		90	pq				2004 --		
337	Journal of Clinical Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55652		365	pq				1997 --		
338	Journal of Clinical Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=52718			pq				1998 --		
339	Journal of Clinical Monitoring and Computing	http://proquest.umi.com/pqdlink?RQT=318&PMID=55653		365	pq				1998 --		
683	Journal of Clinical Outcomes Management (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=44285			pq						
340	Journal of Clinical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28111			pq				1996 - 2003		
684	Journal of Cognitive Neuroscience (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12957			pq						
2022	Journal of Cognitive Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68383			pq				2005 --		
342	Journal of Communication	http://proquest.umi.com/pqdlink?RQT=318&PMID=20086		180	pq				1988 --		
343	Journal of Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=19174		365	pq				1991 --		
2024	Journal of Community Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=66597			pq				2004 --		
344	Journal of Computational Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=55654			pq				1999 - 2004		
2025	Journal of Contemporary Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55655		365	pq				2004 --		
345	Journal of Continuing Education in Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23906			pqn				1997 --		
346	Journal of Cutaneous Medicine and Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37436		365	pq				2002 --		
347	Journal of Dental Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=19555			pq				1994 --		
1645	Journal of Digital Imaging	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037409&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66959&PageNum=1		365	pq				2001 -		
685	Journal of Drug Evaluation	http://proquest.umi.com/pqdlink?RQT=318&PMID=56236			pq				2003 --		
686	Journal of Drug Issues	http://proquest.umi.com/pqdlink?RQT=318&PMID=22622			pq				1995 --		
687	Journal of Elder Abuse & Neglect	http://proquest.umi.com/pqdlink?RQT=318&PMID=7961			pq				1995 - 1998		
348	Journal of Electrocardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37009			pq				1997 --		
373	Journal of Neurocytology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55673		365	pq				1999 --		
1776	Journal of Electron Microscopy	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242387&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53294&PageNum=1		180	pq				2001 --		
2029	Journal of Emotional and Behavioral Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37003			pq				1998 --		
2030	Journal of Endovascular Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68224		180	pq				2004 --		
1716	Journal of Environmental Health	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347574&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=23855&PageNum=1			pq				1994 --		
349	Journal of Epidemiology and Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=28088			pq				1996 - 2003		
350	Journal of Experimental Botany	http://proquest.umi.com/pqdlink?RQT=318&PMID=53194		180	pq				1999 --		
689	Journal of Family Nursing (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=30423			pq						
1717	Journal of Gambling Studies	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347609&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53468&PageNum=1		365	pq				1998 --		
1646	Journal of Gastroenterology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037440&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66960&PageNum=1		365	pq				2003 --		
690	Journal of General Physiology, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28237			pq						
2033	Journal of General Plant Pathology: JGPP	http://proquest.umi.com/pqdlink?RQT=318&PMID=65680		365	pq				2002 --		
2034	Journal of Generic Medicines	http://proquest.umi.com/pqdlink?RQT=318&PMID=67591		365	pq				2003 --		
351	Journal of Geriatric Psychiatry and Neurology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=37439			pq						
352	Journal of Gerontological Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36484			pqn				1998 --		
691	Journal of Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=30036			pq				1990 - 1995		
353	Journal of Hand Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36981			pq				1998 --		
1718	Journal of Hand Therapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347647&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=46167&PageNum=1			pq				2001 --		
354	Journal of Head Trauma Rehabilitation, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36997			pq				1998 - 2004		
692	Journal of Health Care Finance	http://proquest.umi.com/pqdlink?RQT=318&PMID=17716			pq				1992 --		
693	Journal of Health Care for the Poor and Underserved (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12307			pq						
694	Journal of Health Economics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8761			pq						
357	Journal of Health Organization and Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=11876		365	pq				1992 --		
695	Journal of Health Politics, Policy and Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=19228			pq				1997 - 2000		
358	Journal of Health Services Research & Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=59207			pq				2003 --		
355	Journal of Health and Human Services Administration	http://proquest.umi.com/pqdweb?RQT=318&TS=1076492211&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=000048108&PageNum=1&DBId=2390			pq				2000 --		
356	Journal of Health and Social Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=27047			pq				1992 --		
359	Journal of Healthcare Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=23545			pq				1987 --		
2035	Journal of Heredity, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28916		180	pq				2005 --		
697	Journal of Holistic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=32453			pqn						
698	Journal of Immigrant Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53471		365	pq				1999 --		
360	Journal of Infectious Diseases, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29194		365	pq				1996 --		
1822	Journal of Integrated Care Pathways	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244491&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59208&PageNum=1			pq				2003 --		
699	Journal of Intellectual & Developmental Disability	http://proquest.umi.com/pqdlink?RQT=318&PMID=34484			pq				1997 - 2000		
1662	Journal of Interferon & Cytokine Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038057&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66677&PageNum=1			pq				2004 --		
363	Journal of Knee Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37945			pq				1998 --		
364	Journal of Laryngology and Otology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=33369			pq				1996 --		
700	Journal of Law, Medicine & Ethics, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=18317			pq						
2037	Journal of Learning Disabilities	http://proquest.umi.com/pqdlink?RQT=318&PMID=14092			pq				1997 --		
365	Journal of Mammary Gland Biology and Neoplasia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55672			pq				1997 - 2004		
1721	Journal of Marital and Family Therapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347774&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=19058&PageNum=1			pq				1994 --		
366	Journal of Maternal - Fetal & Neonatal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=56240			pq				2003 --		
367	Journal of Medical Biography	http://proquest.umi.com/pqdlink?RQT=318&PMID=59209			pq				2003 --		
368	Journal of Medical Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=12511			pq				1992 - 2003		
369	Journal of Medical Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38446			pq				1998 - 2003		
370	Journal of Medical Screening	http://proquest.umi.com/pqdlink?RQT=318&PMID=49930		180	pq				2003 --		
1647	Journal of Membrane Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037470&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66961&PageNum=1		365	pq				2002 --		
1648	Journal of Molecular Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037505&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66962&PageNum=1		365	pq				2002 --		
371	Journal of Motor Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=37013			pq				1998 --		
704	Journal of Multicultural Nursing & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=38815		30	pq				1998 --		
1649	Journal of Neural Transmission	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037543&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66963&PageNum=1		365	pq				2002 --		
372	Journal of Neuro - Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55674			pq				1999 - 2004		
1650	Journal of Neurology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037579&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66964&PageNum=1		365	pq				2002 --		
374	Journal of Neurology, Neurosurgery and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28090			pq				1996 - 2003		
375	Journal of Neuropathology and Experimental Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29222			pq				1997 --		
376	Journal of Neuropsychiatry and Clinical Neurosciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37249			pq				1998 --		
377	Journal of Neuroscience Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38810			pqn				1999 --		
378	Journal of Neurosurgical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=37990			pq				1998 --		
1722	Journal of Nuclear Medicine Technology	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347825&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=39290&PageNum=1			pq				1999 --		
379	Journal of Nuclear Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27354			pq				1996 --		
732	Medical Marketing and Media	http://proquest.umi.com/pqdlink?RQT=318&PMID=23956			pq				1988 --		
380	Journal of Nursing Care Quality	http://proquest.umi.com/pqdlink?RQT=318&PMID=35900			pqn				1998 - 2004		
381	Journal of Nursing Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=23497			pqn				1997 --		
2045	Journal of Nursing Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=68385			pq				2005 --		
2046	Journal of Nursing Measurement	http://proquest.umi.com/pqdlink?RQT=318&PMID=68387			pq				2005 --		
382	Journal of Nursing Scholarship	http://proquest.umi.com/pqdlink?RQT=318&PMID=37455			pqn				1998 --		
705	Journal of Nutrition Education and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=21825			pq				1997 - 2001		
383	Journal of Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23412			pq				1992 --		
706	Journal of Nutritional & Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=34487			pq				1997 - 2000		
707	Journal of Obstetrics and Gynaecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=34488			pq				1997 - 2000		
708	Journal of Occupational and Environmental Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=18120			pq						
1823	Journal of Oncology Pharmacy Practice	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244531&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66717&PageNum=1			pq				2004 --		
2049	Journal of Oral Implantology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68234		180	pq				2005 --		
385	Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53440		180	pq				1999 --		
386	Journal of Orthopaedic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=12068			pq				1997 --		
387	Journal of Orthopaedic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38286			pq				1997 --		
388	Journal of Otolaryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37019			pq				1998 - 2001		
389	Journal of Palliative Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36999			pq				1998 --		
1824	Journal of Pediatric Neurology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244574&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66427&PageNum=1			pq				2004 --		
390	Journal of Pediatric Ophthalmology and Strabismus	http://proquest.umi.com/pqdlink?RQT=318&PMID=37042			pq				1998 --		
1825	Journal of Pension Benefits	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244607&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=50659&PageNum=1			pq				2002 --		
391	Journal of Perinatal & Neonatal Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35925			pqn				1998 - 2004		
709	Journal of Physical Education, Recreation & Dance	http://proquest.umi.com/pqdlink?RQT=318&PMID=28612			pq				1988 --		
392	Journal of Plant Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48522			pq				2002 --		
1778	Journal of Practical Nursing	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242466&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67062&PageNum=1			pq				2004 --		
393	Journal of Primary Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=55675		365	pq				1999 --		
1723	Journal of Psychiatry & Neuroscience : JPN	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347869&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=39284&PageNum=1			pq				1999 --		
1724	Journal of Psychoactive Drugs	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347919&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38472&PageNum=1			pq				1998 --		
395	Journal of Psychosocial Nursing & Mental Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=36635			pqn				1998 --		
396	Journal of Psychosomatic Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56221			pq				2003 --		
397	Journal of Public Health Management and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=37449			pq				1998 - 2004		
399	Journal of Public Health Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55836			pq				2001 --		
2053	Journal of Public Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=59278			pq				2003 --		
2054	Journal of Rational - Emotive & Cognitive - Behavior Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55676		365	pq				2004 --		
400	Journal of Refractive Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=45495			pq				2002 --		
711	Journal of Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=13136			pq				1995 --		
401	Journal of Rehabilitation Research and Development	http://proquest.umi.com/pqdlink?RQT=318&PMID=20977			pq				1990 --		
712	Journal of Reproductive and Infant Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=34490			pq				1997 - 2000		
713	Journal of Safety Research (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8194			pq						
402	Journal of School Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26287			pq				1992 --		
2055	Journal of School Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68235		180	pq				2005 --		
2056	Journal of Special Education, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14093			pq				1997 --		
714	Journal of Speech and Hearing Disorders, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=17691			pq						
403	Journal of Speech, Language, and Hearing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=17692			pq				1997 --		
404	Journal of Sports Medicine and Physical Fitness	http://proquest.umi.com/pqdlink?RQT=318&PMID=11574			pq				1999 --		
2057	Journal of Strength and Conditioning Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68236		180	pq				2005 --		
715	Journal of Studies on Alcohol (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28928			pq						
716	Journal of Substance Abuse Treatment (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8166			pq						
405	Journal of Telemedicine and Telecare	http://proquest.umi.com/pqdlink?RQT=318&PMID=59210			pq				2003 --		
411	Journal of Thrombosis and Thrombolysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55677		365	pq				1999 --		
412	Journal of Trace Elements in Medicine and Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48513			pq				2001 --		
414	Journal of Tropical Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53324		180	pq				1999 --		
717	Journal of the American Academy of Child and Adolescent Psychiatry (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=12493			pq						
406	Journal of the American Animal Hospital Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=49611			pq				2002 - 2003		
718	Journal of the American Geriatrics Society (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27790			pq						
1725	Journal of the American Medical Informatics Association	http://proquest.umi.com/pqdweb?RQT=318&TS=1107347995&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=46163&PageNum=1			pq				2001 --		
1651	Journal of the Association for Research in Otolaryngology: JARO	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037615&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66965&PageNum=1		365	pq				2003 --		
719	Journal of the Association of Nurses in AIDS Care, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=35937			pq						
407	Journal of the History of Ideas	http://proquest.umi.com/pqdlink?RQT=318&PMID=23494			pq				2002 --		
408	Journal of the History of Medicine and Allied Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=53229		356	pq				2002 --		
1726	Journal of the Medical Library Association	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348039&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67341&PageNum=1			pq				2003 --		
409	Journal of the National Cancer Institute	http://proquest.umi.com/pqdlink?RQT=318&PMID=27377		180	pq				1997 --		
410	Journal of the National Medical Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=36998			pq				1998 --		
2060	Journal of the Royal Society for the Promotion of Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67916			pq				2005 --		
2061	Journals of Gerontology, The; Series A: Biological Sciences and Medical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=9697			pq				1995 --		
2062	Journals of Gerontology, The; Series B: Psychological Sciences and Social Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=9698			pq				1995 --		
418	Kennedy Institute of Ethics Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53555			pq				2002 --		
419	Kidney & Blood Pressure Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=10188			pq				1994 --		
2064	Klinik Psikofarmakoloji Bulteni	http://proquest.umi.com/pqdlink?RQT=318&PMID=67966			pq				2005 --		
421	Laboratory Animals	http://proquest.umi.com/pqdlink?RQT=318&PMID=59211			pq				2003 --		
422	Lancet, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28154			pq				1990 --		
1727	Language and Speech	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348077&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=38017&PageNum=1			pq				1998 --		
1728	Lasers in Medical Science	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348111&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65762&PageNum=1		365	pq				2002 --		
1729	Law and Human Behavior	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348143&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53485&PageNum=1		365	pq				1999 --		
2065	Legal and Criminological Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67666			pq				2004 --		
721	Let's Live (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=22544			pq						
2066	Life Science Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=56215			pq				2003 --		
2067	Lifetime Data Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=53486		365	pq				2004 --		
1780	Lipids	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242573&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67242&PageNum=1			pq				2004 --		
423	Literature and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53845			pq				2002 --		
1781	Lung	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242607&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65730&PageNum=1		365	pq				2002 --		
1668	Lupus	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038267&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66723&PageNum=1			pq				2004 --		
438	MGMA Connexion	http://proquest.umi.com/pqdlink?RQT=318&PMID=56856			pq				2003 --		
441	MMWR. Morbidity and Mortality Weekly Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=15976			pq				1998 --		
2070	Malaria Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=56214			pq				2003 --		
424	Managed Care Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=37441			pq				1998 --		
2071	Managed Care Weekly Digest	http://proquest.umi.com/pqdlink?RQT=318&PMID=51271			pq				2002 --		
722	Managed Healthcare Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=10661			pq				1997 --		
2072	Management Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=26260			pq				1991 --		
723	Management of Environmental Quality	http://proquest.umi.com/pqdlink?RQT=318&PMID=11883		365	pq				1992 --		
425	Marketing Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=15686			pq				1987 - 2002		
2073	Materials Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=66576			pq				2004 --		
426	Maternal and Child Health Journal (abstracts)	http://proquest.umi.com/pqdweb?RQT=318&TS=1076501669&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=000055678&PageNum=1&DBId=2390			pq						
427	Mayo Clinic Proceedings	http://proquest.umi.com/pqdlink?RQT=318&PMID=18188			pq				1997 --		
2075	Medeconomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=55736			pq				2003 --		
428	Medical Anthropology Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=44287			pq				2001 --		
725	Medical Care Research and Review (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=15957			pq						
429	Medical Decision Making (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=32219			pq						
430	Medical Device Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=42620			pq				2000 --		
726	Medical Devices & Surgical Technology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51263			pq				1998 --		
727	Medical Economics (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27473			pq						
432	Medical History	http://proquest.umi.com/pqdlink?RQT=318&PMID=16707			pq				1997 --		
2077	Medical Imaging Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67464			pq				2005 --		
2078	Medical Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=59497			pq				2004 --		
1730	Medical Laboratory Observer	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348187&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37122&PageNum=1			pq				1998 --		
728	Medical Laser Application	http://proquest.umi.com/pqdlink?RQT=318&PMID=48514			pq				2002 --		
729	Medical Law Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=53326		180	pq				1999 --		
731	Medical Letter on the CDC & FDA	http://proquest.umi.com/pqdlink?RQT=318&PMID=51275			pq				1995 --		
1783	Medical Microbiology and Immunology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242680&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65696&PageNum=1		365	pq				2002 --		
2080	Medical Molecular Morphology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65760		365	pq				2002 --		
2081	Medical Patent Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67466			pq				2005 --		
733	Medical Post	http://proquest.umi.com/pqdlink?RQT=318&PMID=53170			pq				1993 --		
734	Medical Teacher	http://proquest.umi.com/pqdlink?RQT=318&PMID=9875			pq				1997 - 2000		
735	Medical Update	http://proquest.umi.com/pqdlink?RQT=318&PMID=35985			pq				1998 --		
736	Medical World News (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=26414			pq						
433	Medicine and Health Rhode Island	http://proquest.umi.com/pqdlink?RQT=318&PMID=53208			pq				2003 --		
434	Medicine, Health Care, and Philosophy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55679		365	pq				1998 --		
1784	Medizinhistorisches Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242769&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=48515&PageNum=1			pq				2002 --		
435	Medsurg Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37440			pqn				1998 --		
737	Men's Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=13006			pq				1994 --		
436	Mental Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55680		365	pq				1999 --		
1731	Mental Health Today	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348213&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59280&PageNum=1			pq				2004 --		
2082	Mental Health Weekly Digest	http://proquest.umi.com/pqdlink?RQT=318&PMID=56208			pq				2003 --		
437	Metabolic Brain Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55681			pq				1997 - 2004		
1664	Microbial Drug Resistance	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038126&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66584&PageNum=1		90	pq				2004 --		
439	Microbiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=48516			pq				2002 --		
738	Milbank Quarterly, The (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=29216			pq						
440	Military Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38133			pq				1998 --		
740	Modern Healthcare	http://proquest.umi.com/pqdlink?RQT=318&PMID=20762			pq				1999 --		
1826	Modern Rheumatology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244646&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65734&PageNum=1		365	pq				2002 --		
442	Molecular Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53327		180	pq				1999 --		
1669	Multiple Sclerosis	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038298&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66698&PageNum=1			pq				2004 --		
443	Mycopathologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55682		365	pq				1999 --		
745	NFPA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=12513			pq				1996 --		
741	Nation's Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23425			pq				1997 --		
2086	Nature	http://proquest.umi.com/pqdlink?RQT=318&PMID=28221		365	pq				1990 --		
444	Navy Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1076511159&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=000037336&PageNum=1&DBId=2390			pq				1998 --		
742	Nephrology Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35800			pqn				1997 --		
445	Nephron	http://proquest.umi.com/pqdlink?RQT=318&PMID=27426			pq				1996 --		
1732	Neurocase	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348257&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53225&PageNum=1		180	pq				1999 --		
446	Neurochemical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55683			pq				1999 - 2004		
447	Neuroendocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27427			pq				1994 --		
448	Neuroepidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37873			pq				1998 --		
1827	Neurogenetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244694&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65703&PageNum=1		365	pq				2002 --		
449	Neurological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=38000			pq				1998 --		
1652	Neurological Sciences	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037676&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66966&PageNum=1		365	pq				2002 --		
2087	Neurophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55684		365	pq				2004 --		
450	Neuropsychobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37874			pq				1998 --		
2088	Neuropsychology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=69714		365	pq				1997 --		
1828	Neuroradiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244749&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65698&PageNum=1		365	pq				2002 --		
451	Neuroscience and Behavorial Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55685		365	pq				2000 --		
744	New Editions, Health World	http://proquest.umi.com/pqdlink?RQT=318&PMID=10829			pq				1996 - 1996		
452	New England Journal of Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28691		90	pq				1996 --		
453	New Jersey Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=56350			pqn				2003 --		
454	New York State Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37337			pq				1998 --		
455	Nucleic Acids Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53227		180	pq				1999 --		
456	Nurse Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=39399			pqn				1999 - 2004		
457	Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=20469			pqn				1995 - 2004		
458	Nursing Administration Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36020			pqn				1998 - 2004		
459	Nursing Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36025			pqn				1998 --		
460	Nursing Education Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=43404			pqn				2001 --		
1672	Nursing Ethics	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038427&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66568&PageNum=1			pq				2004 --		
461	Nursing Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=36030			pqn				1997 --		
2089	Nursing History Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=68389			pq				2005 --		
2090	Nursing Homes; Long Term Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=27339			pq				1991 --		
462	Nursing Journal of India	http://proquest.umi.com/pqdlink?RQT=318&PMID=49927			pqn				2002 --		
2091	Nursing Leadership Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=68390			pq				2005 --		
463	Nursing Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=23247			pqn				1993 - 2004		
748	Nutrition Action Health Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=11581			pq				1995 --		
749	Nutrition Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=13287			pq				1997 - 2000		
750	Nutrition Health Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=11481			pq				1998 --		
465	Nutrition Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=28287			pq				1992 --		
751	Nutrition Today (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=21332			pq						
2094	OBGYN & Reproduction Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56210			pq				2003 --		
755	OH & S Canada	http://proquest.umi.com/pqdlink?RQT=318&PMID=12002			pq				1992 --		
757	OQ	http://proquest.umi.com/pqdlink?RQT=318&PMID=36047			pq				1998 --		
1830	ORL : Journal for Oto - Rhino - Laryngology and Its Related Specialties	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244816&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66462&PageNum=1			pq				1998 --		
2095	Obesity & Diabetes Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56209			pq				2003 --		
752	Obesity, Fitness & Wellness Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51265			pq				1999 --		
753	Occupational Hazards	http://proquest.umi.com/pqdlink?RQT=318&PMID=28592			pq				1987 --		
754	Occupational Health & Safety	http://proquest.umi.com/pqdlink?RQT=318&PMID=28654			pq				1992 --		
467	Occupational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=49931		180	pq				2001 --		
468	Occupational Medicine (Philadelphia)	http://proquest.umi.com/pqdlink?RQT=318&PMID=53453			pq				2002 - 2002		
466	Occupational and Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=28086			pq				1994 - 2003		
1787	Odontology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242916&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65736&PageNum=1		365	pq				2001 --		
2096	Oligonucleotides	http://proquest.umi.com/pqdlink?RQT=318&PMID=66686		90	pq				2004 --		
756	Omega (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8415			pq						
1829	Oncology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244784&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66442&PageNum=1			pq				1998 --		
469	Onderstepoort Journal of Veterinary Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38653			pq				1998 --		
2097	Online Journal of Issues in Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67067			pq				2004 --		
1789	Ophthalmic Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1109242998&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66460&PageNum=1			pq				1998 --		
470	Ophthalmic Surgery, Lasers and Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=37008			pq				1998 --		
1790	Ophthalmologica	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243066&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66461&PageNum=1			pq				1998 --		
1791	Orthopaedic Nursing	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243107&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36037&PageNum=1			pq				1998 - 2002		
472	Orthopedics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36483			pq				1998 --		
1853	PA/AP Presion Arterial: Revista de Hipertension Para la Atencion Primaria	http://proquest.umi.com/pqdweb?RQT=318&TS=1112170154&clientId=67485&VType=PQD&VName=PQD&VInst=PROD&pmid=67262&PageNum=1			pq				2004 --		
476	Paediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36049			pqn				1997 --		
758	Pain & Central Nervous System Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51266			pq				1998 --		
2100	Pain Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=66563			pq				1998 - 2002		
1670	Palliative Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038325&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66694&PageNum=1			pq				2004 --		
1792	Pancreatology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243144&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66452&PageNum=1			pq				2001 --		
473	Pathobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10191			pq				1995 --		
760	Pathology, Research and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=48517			pq				2001 --		
761	Patient Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=26582			pq				2002 --		
2101	Patient Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=53179			pq				2002 --		
474	Patient Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37182			pq				1998 - 2003		
475	Pediatric Annals	http://proquest.umi.com/pqdlink?RQT=318&PMID=37016			pq				1998 --		
1793	Pediatric Neurosurgery	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243188&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66459&PageNum=1			pq				1998 --		
477	Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=23202			pq				1996 --		
763	Pediatrics for Parents	http://proquest.umi.com/pqdlink?RQT=318&PMID=36054			pq				1998 --		
478	Pedobiologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=48523			pq				2002 --		
764	People's Medical Society Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=11489			pq				1997 - 2003		
1671	Perfusion	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038361&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66561&PageNum=1			pq				2004 --		
2103	Personnel Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=59481			pq				2003 --		
479	Perspectives in Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=26770			pq				2002 --		
480	Perspectives in Psychiatric Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36055			pq				1997 --		
481	Perspectives on Sexual and Reproductive Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=23177			pq				1991 --		
2104	Pharma Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56211			pq				2003 --		
767	Pharmaceutical Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=13756			pq				1994 --		
482	Pharmaceutical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55686			pq				1997 - 2004		
768	Pharmacy Post	http://proquest.umi.com/pqdlink?RQT=318&PMID=53180			pq				2002 --		
483	Pharmacy World & Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55687		365	pq				1999 --		
2105	Phlebology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66632			pq				2004 --		
484	Photochemistry and Photobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38649			pq				1998 --		
485	Physical Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=28675			pq				1996 --		
2106	Physician Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=66333			pq				2004 --		
769	Physician and Sportsmedicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21539			pq				1996 --		
2107	Physiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68410			pq				2005 --		
486	Phytomedicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=48518			pq				2001 --		
487	Pituitary	http://proquest.umi.com/pqdlink?RQT=318&PMID=55688		365	pq				1999 --		
488	Plant & Cell Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53230		180	pq				2000 --		
1733	Plastic Surgical Nursing	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348289&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36061&PageNum=1			pq				1997 --		
489	Postgraduate Medical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38447			pq				1999 - 2003		
490	Postgraduate Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=27088		30	pq				2000 --		
491	Poultry Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=57135			pq				2003 --		
492	Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=34622			pq				1998 --		
1734	Prehospital Emergency Care	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348328&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=46165&PageNum=1			pq				2001 --		
771	Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=23645			pq				1995 --		
493	Prevention Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55689		365	pq				2000 --		
2109	Preventive Medicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67562			pq				2005 --		
1833	Primary Health Care Research & Development	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244928&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66725&PageNum=1			pq				2004 --		
1794	Primates	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243223&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65702&PageNum=1		365	pq				2003 --		
772	Professional Safety	http://proquest.umi.com/pqdlink?RQT=318&PMID=20380			pq				1987 --		
494	Progress in Histochemistry and Cytochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=48519			pq				2001 --		
495	Progress in Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=58342			pq				2003 --		
2110	Protein Engineering, Design & Selection; PEDS	http://proquest.umi.com/pqdlink?RQT=318&PMID=53329			pq				2005 --		
2112	Proteomics Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51272			pq				2002 --		
497	Protist	http://proquest.umi.com/pqdlink?RQT=318&PMID=48524			pq				2001 --		
773	Psychiatric Rehabilitation Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36067			pq				1998 --		
498	Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28651			pq				1994 --		
1835	Psychoanalytic Inquiry	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245007&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67286&PageNum=1		180	pq				2004 --		
1834	Psychoanalytic Dialogues	http://proquest.umi.com/pqdweb?RQT=318&TS=1109244965&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67284&PageNum=1		180	pq				2004 --		
1736	Psychoanalytic Review	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348396&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=37929&PageNum=1			pq				1998 --		
1795	Psychological Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243261&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65739&PageNum=1		365	pq				2002 --		
500	Psychopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37875			pq				1998 --		
1654	Psychopharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037760&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66968&PageNum=1		365	pq				2002 --		
501	Psychopharmacology Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=23652			pq				1995 - 1998		
502	Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37033			pq				1998 --		
503	Psychotherapy and Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37876			pq				1998 --		
504	Public Health Reports; Hyattsville	http://proquest.umi.com/pqdlink?RQT=318&PMID=28013			pq				1992 - 1999		
775	Qualitative Health Research (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=30413			pq						
505	Quality & Safety in Health Care	http://proquest.umi.com/pqdweb?RQT=318&TS=1076511160&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=000038466&PageNum=1&DBId=2390			pq				2001 - 2003		
506	Quality Letter for Healthcare Leaders	http://proquest.umi.com/pqdlink?RQT=318&PMID=50652			pq				2003 - 2004		
507	Quality Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37662			pq				1998 - 2004		
1836	Quality in Ageing	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245046&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59281&PageNum=1			pq				2003 --		
508	Quarterly Journal of Nuclear Medicine and Molecular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37345			pq				1998 --		
1854	Quimica Clinica	http://proquest.umi.com/pqdweb?RQT=318&TS=1112170226&clientId=67485&VType=PQD&VName=PQD&VInst=PROD&pmid=67264&PageNum=1			pq				2004 --		
778	RN	http://proquest.umi.com/pqdlink?RQT=318&PMID=27477			pq						
776	Reclaiming Children and Youth	http://proquest.umi.com/pqdlink?RQT=318&PMID=37561			pq				1998 - 2001		
1737	Regional Anesthesia and Pain Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1107348434&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=36489&PageNum=1			pq				1998 --		
2119	Rehabilitation Counseling Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=40603			pq				2000 --		
509	Rehabilitation Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38576			pqn				1998 --		
510	Research Quarterly for Exercise and Sport	http://proquest.umi.com/pqdlink?RQT=318&PMID=28631			pq				1992 --		
2120	Research and Theory for Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=68393			pq				2005 --		
2121	Research in Healthcare Financial Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=66338			pq				2004 --		
777	Research on Aging (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=16532			pq						
2549	Advances in Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67570\r\n\n			pqhmc				 - 		
1837	Respiration	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245078&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66463&PageNum=1			pq				1998 --		
2125	Respiratory Therapeutics Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56212			pq				2003 --		
511	Reviews in Endocrine & Metabolic Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=55690		365	pq				2000 --		
1798	Reviews in Medical Virology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243375&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=67594&PageNum=1		300	pq				1997 --		
512	Revista do Instituto de Medicina Tropical de Sao Paulo	http://proquest.umi.com/pqdlink?RQT=318&PMID=38663			pq				1998 --		
513	Rheumatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33532		180	pq				1994 --		
514	Royal Society of Medicine (Great Britain). Journal of the Royal Society of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45488			pq				2001 --		
515	Russ Coile's Health Trends	http://proquest.umi.com/pqdlink?RQT=318&PMID=50650			pq				2002 - 2003		
779	Safe Motherhood	http://proquest.umi.com/pqdlink?RQT=318&PMID=38547			pq				1998 --		
780	Safety & Health (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28683			pq						
781	Safety & Health Practitioner, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=11728			pq				1997 --		
516	Schizophrenia Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=18315			pq				1998 --		
517	Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=28298		365	pq				1988 --		
782	Science Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=51267			pq				1996 --		
783	Second Opinion (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=10839			pq						
784	Sexual and Relationship Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37625			pq				1998 - 2000		
785	Sexually Transmitted Diseases (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=19087			pq						
518	Sexually Transmitted Infections	http://proquest.umi.com/pqdlink?RQT=318&PMID=28072			pq				1996 - 2003		
786	Shape	http://proquest.umi.com/pqdlink?RQT=318&PMID=11553			pq				1996 --		
1799	Skin Pharmacology and Physiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243415&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66464&PageNum=1			pq				1998 --		
2127	Sleep and Hypnosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=67965			pq				2004 --		
1800	Social Choice and Welfare	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243455&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65742&PageNum=1		365	pq				2002 --		
787	Social Science & Medicine (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=8349			pq						
2129	Social Security Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=28000			pq				1992 --		
788	Social Theory & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=54738		365	pq				2003 --		
519	Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=27868			pq				1998 --		
2131	Southeast Asian Journal of Tropical Medicine and Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68709			pq				2005 --		
1655	Springer Seminars in Immunopathology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037794&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66969&PageNum=1		365	pq				2002 --		
2132	Stapp Car Crash Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68554			pq				2003 --		
2550	Advances in Skin & Wound Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=39398\r\n\n			pqhmc				1999 - 2004		
1673	Statistical Methods in Medical Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038456&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66693&PageNum=1			pq				2004 --		
789	Stem Cell Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51268			pq				2001 --		
2134	Strength and Conditioning Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68232		180	pq				2004 --		
790	Student BMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=45584			pq				2002 - 2003		
791	Studies in Family Planning (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=11555			pq						
2137	Subsurface Sensing Technologies and Applications	http://proquest.umi.com/pqdlink?RQT=318&PMID=55691		365	pq				2004 --		
792	Suicide & Life - Threatening Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19183			pq				1994 --		
1656	Surgical Endoscopy	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037827&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66970&PageNum=1		365	pq				2002 --		
521	Systematic and Applied Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48525			pq				2001 --		
793	TB & Outbreaks Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51269			pq				1995 --		
1801	Techniques in Coloproctology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243496&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=65738&PageNum=1		365	pq				2002 --		
794	Telehealth Magazine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38324			pq				1998 - 1999		
2140	Telemedicine Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=68397			pq				2005 --		
2141	Telemedicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67566			pq				2005 --		
522	Thorax	http://proquest.umi.com/pqdlink?RQT=318&PMID=28091			pq				1995 - 2003		
3990	Ambulatory Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68215\\n		180	pqml				2005 - 		
1665	Tissue Engineering	http://proquest.umi.com/pqdweb?RQT=318&TS=1106038167&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66678&PageNum=1			pq				2004 --		
523	Tobacco Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=58254			pq				2003 - 2003		
1839	Today's Parent, Pregnancy & Birth	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245146&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53163&PageNum=1			pq				2002 --		
524	Today's Surgical Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=37280			pqn				1998 - 1999		
525	Topics in Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36481			pq				1998 - 2004		
526	Topics in Health Information Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37282			pq				1998 - 2003		
1840	Total Health	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245193&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=11446&PageNum=1			pq				1995 --		
2144	Toxicology and Industrial Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=66727			pq				2004 --		
2548	Adolescent Medicine Clinics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49932\r\n\n			pqhmc				2001 - 2006		
1657	Transplant International	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037859&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66971&PageNum=1		365	pq				2002 --		
527	Tropical Animal Health and Production	http://proquest.umi.com/pqdlink?RQT=318&PMID=55692		365	pq				1999 --		
528	Trustee	http://proquest.umi.com/pqdlink?RQT=318&PMID=22495			pq				1998 --		
2149	Tuberculosis Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56213			pq				2003 --		
1841	Tufts University Health & Nutrition Letter	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245272&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=11557&PageNum=1			pq				1995 --		
1802	Tumor Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243534&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66449&PageNum=1			pq				1997 --		
2150	Turkish Journal of Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=67756			pq				2002 --		
529	Ultrasound Review of Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56241			pq				2003 --		
530	Undersea & Hyperbaric Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37285			pq				1998 --		
2152	Urologic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37457			pq				1998 --		
1842	Vaccine Weekly	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245306&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=51274&PageNum=1			pq				1995 --		
1803	Vascular Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1109243570&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66731&PageNum=1			pq				2004 --		
531	Vascular and Endovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38339			pq				1998 --		
1843	Vegetarian Times	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245339&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=18695&PageNum=1			pq				1997 --		
532	Veterinary Research Communications	http://proquest.umi.com/pqdlink?RQT=318&PMID=55693		365	pq				1999 --		
2154	Violence and Victims	http://proquest.umi.com/pqdlink?RQT=318&PMID=68394			pq				2005 --		
533	Virus Genes	http://proquest.umi.com/pqdlink?RQT=318&PMID=55694			pq				1999 - 2004		
1844	Virus Weekly	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245377&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=51281&PageNum=1			pq				1996 --		
534	Weekly Epidemiological Record	http://proquest.umi.com/pqdlink?RQT=318&PMID=38549			pq				1998 --		
535	Western Journal of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36053			pq				1998 - 2002		
2158	Wilderness & Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68238		180	pq				2005 --		
2160	Women in Sport & Physical Activity Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=58791			pq				1992 --		
1845	Women's Health Activist, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245421&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=11369&PageNum=1			pq				1997 --		
1846	Women's Health Weekly	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245469&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=51279&PageNum=1			pq				1999 --		
1847	Women's Oncology Review	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245507&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=56242&PageNum=1			pq				2003 --		
1848	Working With Older People	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245547&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=59287&PageNum=1			pq				2003 --		
2161	World Disease Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=68398			pq				2005 --		
1849	World Health	http://proquest.umi.com/pqdweb?RQT=318&TS=1109245615&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=18855&PageNum=1			pq				1988 - 1998		
537	World Health Organization. Bulletin of the World Health Organization	http://proquest.umi.com/pqdlink?RQT=318&PMID=15654			pq				1996 --		
1658	World Journal of Surgery	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037910&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66972&PageNum=1		365	pq				2001 --		
1659	World Journal of Urology	http://proquest.umi.com/pqdweb?RQT=318&TS=1106037947&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=66973&PageNum=1		365	pq				2002 --		
4999	Journal of Reumatology, The	http://www.jrheum.org/content/current			althaia						
4950	Journal of Bone and Joint Surgery, The (Br)	http://journals.jbjs.org.uk/			vicft		hvic08	hvic08			
4992	Gut	http://gut.bmj.com/			althaia						
7	American Journal of Physiology - Heart and Circulatory Physiology	http://intl-ajpheart.physiology.org/		365	fbjl				1998 -		
4980	Archives of Physical Medicine and Rehabilitation   	http://www.sciencedirect.com/science/journal/00039993			althaia						
4988	Laryngoscope, The	http://www3.interscience.wiley.com/journal/121460873/home			althaia						
5002	Journal of Clinical Oncology	http://jco.ascopubs.org/current.dtl			althaia						
2186	PC Magazine	http://www.pcmag.com			aspb						
2696	Australian Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				1998 -		
5015	Journal of Hand Surgery (American Vol.)	http://www.sciencedirect.com/science/journal/03635023			cyclops				2006 -		
2541	Addiction Letter, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=11520\r\n\n			pqhmc				 - 		
2506	Annals of Internal Medicine 	http://www.annals.org/			vicft						
1427	BMC Blood Disorders	http://www.biomedcentral.com/bmcblooddisord/			fbjl				2001 -		
2542	Addiction Professional	http://proquest.umi.com/pqdlink?RQT=318&PMID=74892\r\n\n			pqhmc				2006 - 		
2543	Addictive Behaviors	http://proquest.umi.com/pqdlink?RQT=318&PMID=8573\r\n\n			pqhmc				 - 		
2544	Administration and Policy in Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=55623\r\n\n		365	pqhmc				 - 		
2545	Administration and Policy in Mental Health and Mental Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=79701\r\n\n		365	pqhmc				 - 		
1516	Microbial Cell Factories	http://www.microbialcellfactories.com/home/			fbjl				2002 -		
4981	Journal of Urology, The	http://www.sciencedirect.com/science/journal/00225347			althaia						
138	Annals of Allergy, Asthma, and Immunology (abstracts)	http://proquest.umi.com/pqdlink?RQT=318&PMID=27067			pq						
2546	Administration in Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=7931\r\n\n			pqhmc				 - 		
2547	Adolescence	http://proquest.umi.com/pqdlink?RQT=318&PMID=26960\r\n\n			pqhmc				1994 - 		
2743	BMC Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68321\r\n\n			pqhmc				 - 		
5016	Journal of Hand Surgery (Eur/British Vol.)	http://jhs.sagepub.com/			cyclops						
2552	Aging	http://proquest.umi.com/pqdlink?RQT=318&PMID=27374\r\n\n			pqhmc				1996 - 1996		
2553	Aging & Elder Health Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67437\r\n\n			pqhmc				2005 - 		
2554	Aging Male	http://proquest.umi.com/pqdlink?RQT=318&PMID=56223\r\n\n			pqhmc				2003 - 2007		
2555	Alabama Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=56260\r\n\n			pqhmc				2003 - 2006		
2556	Alberta RN	http://proquest.umi.com/pqdlink?RQT=318&PMID=38575\r\n\n			pqhmc				1998 - 2006		
2557	Alcohol Research and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=18306\r\n\n			pqhmc				1994 - 		
2559	Alcoholism	http://proquest.umi.com/pqdlink?RQT=318&PMID=73191\r\n\n			pqhmc				2005 - 		
28	Clinical Microbiology Reviews	http://intl-cmr.asm.org/			fbjl				1988 -		
2560	Alcoholism & Drug Abuse Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=11521\r\n\n			pqhmc				 - 		
2561	Allergy	http://proquest.umi.com/pqdlink?RQT=318&PMID=67108\r\n\n			pqhmc				 - 		
2562	Allergy and Asthma Proceedings	http://proquest.umi.com/pqdlink?RQT=318&PMID=78895\r\n\n			pqhmc				 - 		
2563	Alternative Therapies in Health and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38441\r\n\n			pqhmc				1998 - 		
2566	American Annals of the Deaf	http://proquest.umi.com/pqdlink?RQT=318&PMID=27282\r\n\n			pqhmc				1997 - 		
9	American Journal of Physiology - Regulatory, Integrative and Comparative Physiology	http://intl-ajpregu.physiology.org/		365	fbjl				Octubre 1997 -		
2567	American Dental Association. The Journal of the American Dental Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=28760\r\n\n			pqhmc				 - 		
4993	Thorax	http://thorax.bmj.com/			althaia						
4982	Journal of Vascular Surgery	http://www.sciencedirect.com/science/journal/07415214			althaia						
1517	Molecular Cancer	http://www.molecular-cancer.com/home/			fbjl				2002 -		
2568	American Dietetic Association. Journal of the American Dietetic Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=18999\r\n\n			pqhmc				1995 - 2003		
91	Proceedings of the National Academy of Sciences 	http://www.pnas.org/			fbjl				1915 -		
17	BMC Cancer 	http://www.biomedcentral.com/bmccancer/			fbjl				2001 -		
1434	BMC Complementary and Alternative Medicine	http://www.biomedcentral.com/bmccomplementalternmed/			fbjl				2001 -		
1439	BMC Emergency Medicine	http://www.biomedcentral.com/bmcemergmed/			fbjl				2001 -		
1444	BMC Genetics	http://www.biomedcentral.com/bmcgenet/			fbjl				2000 -		
1448	BMC Immunology	http://www.biomedcentral.com/bmcimmunol/			fbjl				2000 -		
1459	BMC Molecular Biology	http://www.biomedcentral.com/bmcmolbiol/			fbjl				2000 -		
4989	Ultrasound in Obstetrics and Gynecology	http://www3.interscience.wiley.com/journal/99020267/home			althaia						
1464	BMC Nuclear Medicine	http://www.biomedcentral.com/bmcnuclmed/			fbjl				2001 -		
1473	BMC Pregnancy and Childbirth	http://www.biomedcentral.com/bmcpregnancychildbirth/			fbjl				2001 -		
1479	BMC Urology 	http://www.biomedcentral.com/bmcurol/			fbjl				2001 -		
1472	BMC Plant Biology	http://www.biomedcentral.com/bmcplantbiol/			fbjl				2001 -		
2317	Nature Medicine	http://www.nature.com/nm/index.html			presen				1995 --		
2434	JACC: Journal of the American College of Cardiology	http://content.onlinejacc.org/current.dtl			vic						
53	Internet Journal of Ophtalmology and Visual Science, The	https://ispub.com/IJOVS			fbjl				2000 -		
54	Internet Journal of Surgery, The	https://ispub.com/IJS			fbjl				2000 -		
2335	Pharmacogenetics and Genomics	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&CSC=Y&NEWS=N&PAGE=toc&SEARCH=01213011-201208000-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			presen		santpau	cataluna	2005 --		
12	Australian Electronic Journal of Nursing Education	 http://scu.edu.au/schools/nhcp/aejne/archive/index.html			fbjl				1999 - 2002		
24	Cancer Control: Journal of the Moffitt Cancer Center	https://moffitt.org/publications/cancer-control-journal/			fbjl				2005 -		
27	Clinical Medicine NetPrints	http://cendoc.h12o.es/enlaces/clinical-medicine-netprints			fbjl				1999 - 2004		
5017	Physical Medicine and Rehabilitation Clinics of North America	http://www.sciencedirect.com/science/journal/10479651			cyclops				2006 -		
1530	Arthroscopy	http://www.sciencedirect.com/science/journal/07498063			cyclops						
2569	American Family Physician	http://proquest.umi.com/pqdlink?RQT=318&PMID=24034\r\n\n			pqhmc				1998 - 		
5	American Journal of Physiology - Endocrinology and Metabolism	http://intl-ajpendo.physiology.org/		365	fbjl				Octubre 1997 -		
77	Medical Journal of Australia 	http://www.mja.com.au/		180	fbjl				1996 -		
26	Clinical and Diagnostic Laboratory Immunology	http://intl-cdli.asm.org/			fbjl				1994 -		
2165	Ambienta	http://www.mma.es/secciones/biblioteca_publicacion/publicaciones/revista_ambienta/index.htm			aspb						
5300	Health & Social Care in the Community	http://search.proquest.com/publication/32025			pq2011						\N
2527	ANS: Advances in Nursing Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=35665\\n			pqhmc				 - 		
1521	Proteome Science	http://www.proteomesci.com/home/			fbjl				2003 -		
2370	Bone Marrow Transplantation	http://proquest.umi.com/pqdweb?RQT=318&TS=1164100063&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68896&PageNum=1&DBId=4795		365	pq				2000 - -		
2371	British Dental Journal	http://proquest.umi.com/pqdweb?RQT=318&TS=1164100063&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68897&PageNum=1&DBId=4795		365	pq				2000 --		
2372	British Journal of Pharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164100063&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68898&PageNum=1&DBId=4795		365	pq				2000 --		
2373	Cancer Gene Therapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101305&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68899&PageNum=1&DBId=4795		365	pq				2000 --		
2374	Cell Death and Differentiation	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101305&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68900&PageNum=1&DBId=4795		365	pq				2000 --		
2375	EMBO Reports	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=53252&PageNum=1&DBId=4795		365	pq				2000 --		
2376	European Journal of Clinical Nutrition	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=13841&PageNum=1&DBId=4795		365	pq				2000 --		
2377	European Journal of Human Genetics : EJHG	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68901&PageNum=1&DBId=4795		365	pq				2000 --		
2378	Evidence - Based Dentistry	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68902&PageNum=1&DBId=4795		365	pq				2000 --		
2379	Eye	http://proquest.umi.com/pqdweb?RQT=318&TS=1164101728&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68903&PageNum=1&DBId=4795		365	pq				2002 --		
2380	Gene Therapy	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102101&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68904&PageNum=1&DBId=4795		365	pq				2000 --		
2381	Genes and Immunity	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102101&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68905&PageNum=1&DBId=4795		365	pq				2000 --		
2382	International Journal of Impotence Research	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102335&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68906&PageNum=1&DBId=4795		365	pq				2000 --		
2383	International Journal of Obesity and Related Disorders	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102335&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68907&PageNum=1&DBId=4795		365	pq				2000 --		
2384	Journal of Cerebral Blood Flow and Metabolism	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102592&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68908&PageNum=1&DBId=4795		365	pq				2000 --		
2385	Journal of Exposure Science and Environmental Epidemiology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102592&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68909&PageNum=1&DBId=4795		365	pq				2000 --		
1335	Gastroenterology	http://www.sciencedirect.com/science/journal/00165085 			presen				1995 -		
2330	Ophthalmology	http://www.sciencedirect.com/science/journal/01616420 			presen				1998 --		
2386	Journal of Human Hypertension	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102592&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68910&PageNum=1&DBId=4795		365	pq				2000 --		
2387	Journal of Perinatology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164102593&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68912&PageNum=1&DBId=4795		365	pq				2000 --		
2388	Laboratory Investigation	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104183&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68911&PageNum=1&DBId=4795		365	pq				2000 --		
2389	Leukemia	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104183&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68913&PageNum=1&DBId=4795		365	pq				2000 --		
2390	Modern Pathology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104661&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68916&PageNum=1&DBId=4795		365	pq				2000 --		
2391	Molecular Psychiatry	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104661&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68917&PageNum=1&DBId=4795		365	pq				2000 --		
2392	Nature Biotechnology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68919&PageNum=1&DBId=4795		365	pq				2000 --		
2393	Nature Cell Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68920&PageNum=1&DBId=4795		365	pq				2000 --		
2394	Nature Genetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68922&PageNum=1&DBId=4795		365	pq				2000 --		
2395	Nature Immunology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68923&PageNum=1&DBId=4795		365	pq				2000 --		
55	Internet Journal of Thoracic & Cardiovascular Surgery, The	https://ispub.com/IJTCVS			fbjl				1997 -		
2339	Plastic and Reconstructive Surgery	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&CSC=Y&NEWS=N&PAGE=toc&SEARCH=00006534-201207001-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			presen		santpau	cataluna	1996 --		
2396	Nature Materials	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68924&PageNum=1&DBId=4795		365	pq				2002 --		
2397	Nature Medicine	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68925&PageNum=1&DBId=4795		365	pq				2000 --		
5000	New England Journal of Medicine, The	http://content.nejm.org/			althaia						
2570	American Fitness	http://proquest.umi.com/pqdlink?RQT=318&PMID=11458\r\n\n			pqhmc				 - 		
69	Communicable Diseases Intelligence	http://www.health.gov.au/internet/main/publishing.nsf/Content/cda-pubs-cdi-cdiintro.htm			fbjl				1996 -		
4985	Breast Journal, The	http://www3.interscience.wiley.com/journal/118544343/home?CRETRY=1&SRETRY=0			althaia						
2572	American Indian and Alaska Native Mental Health Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=37877\r\n\n			pqhmc				1998 - 1999		
10	American Journal of Physiology - Renal Physiology 	http://intl-ajprenal.physiology.org/		365	fbjl				Octubre 1997 -		
2398	Nature Neuroscience	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68927&PageNum=1&DBId=4795		365	pq				2000 --		
2399	Nature Reviews. Cancer	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68928&PageNum=1&DBId=4795		365	pq				2001 --		
2400	Nature Reviews. Drug Discovery	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68929&PageNum=1&DBId=4795		365	pq				2003 --		
2401	Nature Reviews. Genetics	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68930&PageNum=1&DBId=4795		365	pq				2003 --		
2402	Nature Reviews. Immunology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68931&PageNum=1&DBId=4795		365	pq				2002 --		
2403	Nature Reviews. Molecular Cell Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68933&PageNum=1&DBId=4795		365	pq				2003 --		
2404	Nature Reviews. Neuroscience	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68934&PageNum=1&DBId=4795		365	pq				2003 --		
2405	Nature Structural & Molecular Biology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68935&PageNum=1&DBId=4795		365	pq				2000 --		
2406	Neuropsychopharmacology	http://proquest.umi.com/pqdweb?RQT=318&TS=1164104792&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68936&PageNum=1&DBId=4795		365	pq				2000 --		
2407	Oncogene	http://proquest.umi.com/pqdweb?RQT=318&TS=1164123426&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68937&PageNum=1&DBId=4795		365	pq				2000 --		
2408	Prostate Cancer and Prostatic Diseases	http://proquest.umi.com/pqdweb?RQT=318&TS=1164123473&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68939&PageNum=1&DBId=4795		365	pq				2000 --		
2409	Spinal Cord	http://proquest.umi.com/pqdweb?RQT=318&TS=1164123523&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68940&PageNum=1&DBId=4795		365	pq				2000 --		
2410	British Journal of Cancer, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1164123605&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68942&PageNum=1&DBId=4795		365	pq				2000 --		
257	EMBO Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53204		180	pq				2000 --		
2411	Pharmacogenomics Journal, The	http://proquest.umi.com/pqdweb?RQT=318&TS=1164123974&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68938&PageNum=1&DBId=4795		365	pq				2002 --		
2412	Vital	http://proquest.umi.com/pqdweb?RQT=318&TS=1164124023&clientId=47569&VType=PQD&VName=PQD&VInst=PROD&pmid=68941&PageNum=1&DBId=4795		365	pq				2003 --		
56	Irish Medical Journal 	http://www.imj.ie/			fbjl				1997 -		
2415	Occupational & Environmental Medicine	http://oem.bmj.com/			hbdn						
2528	ANZ Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=67113\r\n\n			pqhmc				 - 		
2418	American Journal of Hypertension	http://www.ajh-us.org/current			vic						
2419	American Journal of Ophthalmology	http://www.ajo.com/current			vic						
2420	Anesthesiology	http://www.anesthesiology.org/pt/re/anes/currenttoc.htm			vic						
2422	British Journal of Dermatology	http://www.blackwell-synergy.com/loi/bjd			vic						
2423	British Journal of Haematology	http://www.blackwell-synergy.com/loi/BJH			vic						
2424	Cancer Treatment Reviews	http://www.sciencedirect.com/science/journal/03057372			vic						
2425	Clinical & Laboratory Hematology	http://www.ingentaconnect.com/content/bsc/clh			vic						
2426	Drugs	http://pt.wkhealth.com/pt/re/drugs/currenttoc.htm			vic						
2428	European Journal of Vascular and Endovascular Surgery	http://www.sciencedirect.com/science/journal/10785884			vic						
2429	European Urology	http://www.europeanurology.com/current			vic						
2430	Fisioterapia	http://db.doyma.es/cgi-bin/wdbcgi.exe/doyma/mrevista.salta_a_ultimo?pident=146			vic						
2431	Histopathology	http://www.blackwell-synergy.com/loi/HIS			vic						
2432	Human Pathology	http://www.sciencedirect.com/science/journal/00468177			vic						
2433	Injury	http://www.sciencedirect.com/science/journal/00201383			vic						
4977	Pediatrics	http://pediatrics.aappublications.org/			althaia						
1532	Annals del Sagrat Cor	http://www.annalsdelsagratcor.org/menu.htm			fbjl				2002 -		
2435	Journal of Clinical Epidemiology	http://journals.elsevierhealth.com/periodicals/jce/current			vic						
2436	Journal of the American Academy of Dermatology	http://journals.elsevierhealth.com/periodicals/ymjd/current			vic						
2438	Journal of Vascular Surgery	http://www.vascweb.org/periodicals/ymva/current			vic						
2439	Lancet	http://www.thelancet.com/journals/lancet			vic						
2440	Lancet Oncology	http://www.thelancet.com/journals/lanonc			vic						
2441	Obstetrics & Gynaecology	http://www.greenjournal.org/current.shtml			vic						
2442	Otolaryngology - Head & Neck Surgery	http://journals.elsevierhealth.com/periodicals/ymhn/current			vic						
2444	Journal of Emergency Medicine	http://journals.elsevierhealth.com/periodicals/jem/current			vic						
2445	Urology	http://www.goldjournal.net/current			vic						
2446	Age and Aging	http://ageing.oxfordjournals.org/current.dtl			vicft				1972 - 		
2452	New England Journal of Medicine	http://content.nejm.org/current.shtml			vicft				1999 - 		
2456	World Journal of Surgery	http://www.springerlink.com/content/n961305w2080/?p=fe3b3e27405a4de19838520ed869fca8&pi=0			vicft				1997 - 		
2459	Archives of Ophthalmology	http://archopht.ama-assn.org/			vicft		GENERALDEVIC	hospital	1999-		
2460	Archives of Otolaryncology-Head and Neck Surgery	http://archotol.ama-assn.org/content/vol133/issue4/index.dtl			vicft		GENERALDEVIC	hospital	1999		
2529	ASHA Leader	http://proquest.umi.com/pqdlink?RQT=318&PMID=53559\r\n\n			pqhmc				2002 - 		
2448	Archives of General Psychiatry	http://archpsyc.ama-assn.org/current.dtl			vicft		GENERALDEVIC	hospital	1999		
2451	Neurology	http://gateway.ovid.com/ovidweb.cgi?T=JS&NEWS=N&PAGE=toc&SEARCH=00006114-000000000-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			vicft		hvic199	winter	1996 -		
2468	European Journal of Pain	http://www.sciencedirect.com/science/journal/10903801		1997-	vicft						
2469	Fertility and Sterility	http://www.sciencedirect.com/science/journal/00150282		1997-	vicft						
2470	Gastroenterology	http://www.sciencedirect.com/science/journal/00165085		1995-	vicft						
2194	Contraception	http://www.sciencedirect.com/science/journal/00107824			hbdn						
2475	Lancet, The 	http://www.sciencedirect.com/science/journal/01406736			vicft				2003-		
2476	Journal of Urology, The	http://www.sciencedirect.com/science/journal/00225347			vicft				1995-		
2472	Journal of the American Medical Association (JAMA)	http://jama.ama-assn.org/current.dtl			vicft		generaldevic	hospital 	1999-		
2449	Arthritis & Rheumatism	http://www3.interscience.wiley.com/cgi-bin/jhome/76509746			vicft				2006 - 		
2474	Annals of Clinical Biochemistry	http://acb.rsmjournals.com/			vicft		hvic08	hvic08	2000-		
813	Journal of Shoulder & Elbow Surgery	http://www.sciencedirect.com/science/journal/10582746			cyclops						
2531	Academic Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=46162\r\n\n			pqhmc				2001 - 2006		
1501	International Journal of Behavioral Nutrition and Physical Activity	http://www.ijbnpa.org/home/			fbjl				2004 -		
2573	American Journal of Audiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36486\r\n\n			pqhmc				1998 - 		
1329	Endocrine Reviews	http://edrv.endojournals.org/			presen				1997 -		
2575	American Journal of Clinical Hypnosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=53562\r\n\n			pqhmc				2003 - 		
2576	American Journal of Clinical Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27518\r\n\n			pqhmc				1994 - 1996		
4090	Australian Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36024			pqml				1998 -		
4294	Dimensions of Critical Care Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37202			pqml				1998 - 2002		
4464	JAMA: Journal of the American Medical Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=28266			pqml						
4525	Journal of Headache & Pain, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=65784			pqml						
4636	Journals of Gerontology, The: Series A	http://proquest.umi.com/pqdlink?RQT=318&PMID=9697			pqml				1995 -		
4672	Medical Laboratory Observer	http://proquest.umi.com/pqdlink?RQT=318&PMID=37122			pqml				1998 -		
4756	Nursing Management (Harrow-On-The-Hill)	http://proquest.umi.com/pqdlink?RQT=318&PMID=37458			pqml				1998 -		
2577	American Journal of Community Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=18028\r\n\n		365	pqhmc				1995 - 2004		
2578	American Journal of Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36637\r\n\n			pqhmc				1998 - 2007		
4773	Oncology (San Francisco)	http://proquest.umi.com/pqdlink?RQT=318&PMID=78666			pqml				2007 -		
2744	BMC Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68322\r\n\n			pqhmc				 - 		
4831	Protein Engineering, Design & Selection	http://proquest.umi.com/pqdlink?RQT=318&PMID=53329			pqml						
2530	Abdominal Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=65798\r\n\n		365	pqhmc				 - 		
1502	International Journal of Health Geographics	http://www.ij-healthgeographics.com/home/			fbjl				2002 -		
2532	Academic Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37254\r\n\n			pqhmc				1998 - 		
4983	Pain	http://www.sciencedirect.com/science/journal/03043959			althaia						
4990	Journal of Thrombosis and Haemostasis	http://www3.interscience.wiley.com/journal/117993487/home			althaia						
2533	Accent on Living	http://proquest.umi.com/pqdlink?RQT=318&PMID=22603\r\n\n			pqhmc				1994 - 2001		
2558	Alcohol and Alcoholism : International Journal of the Medical Council on Alcoholism	http://proquest.umi.com/pqdlink?RQT=318&PMID=53217\r\n\n		365	pqhmc				 - 		
2579	American Journal of Drug and Alcohol Abuse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=17557\r\n\n			pqhmc				 - 		
2580	American Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53195\r\n\n		365	pqhmc				 - 		
5304	Health Care Financing Review	http://search.proquest.com/publication/5416			pq2011						\N
84	News in Physiological Science	http://intl-nips.physiology.org/			fbjl				1998 -		
2581	American Journal of Geriatric Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37469\r\n\n			pqhmc				1998 - 		
4180	British Medical Journal, International Edition	http://proquest.umi.com/pqdlink?RQT=318&PMID=28218			pqml				1994 - 2003		
1362	Pediatrics	http://pediatrics.aappublications.org/			presen				1948 --		
2582	American Journal of Health Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=52772\r\n\n			pqhmc				2003 - 		
2499	Clinics Geriatrics Medicine	http://www.sciencedirect.com/science/journal/07490690			hbdn						
2500	Journal de Chirurgie	http://www.sciencedirect.com/science/journal/00217697			hbdn						
2583	American Journal of Health Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=11449\r\n\n			pqhmc				1997 - 		
4984	Gynecologic Oncology   	http://www.sciencedirect.com/science/journal/00908258			althaia						
2189	Scandinavian Journal of Work, Environment & Health	http://www.sjweh.fi/sjwehfile 			aspb						
1416	Annals of Clinical Microbiology and Antimicrobials	http://www.ann-clinmicrob.com/home/			fbjl				2002 -		
2502	British Journal of Surgery	http://www3.interscience.wiley.com/journal/99019821/home			althaia						
5001	Journal of Bone and Joint Surgery, The 	http://www.ejbjs.org/			althaia		althaia	althaia			
1428	BMC Cardiovascular Disorders	http://www.biomedcentral.com/bmccardiovascdisord/			fbjl				2001 -		
5011	Clinical Chemistry	http://www.clinchem.org/			althaia						
2462	American Journal of Respiratory & Critical Care Medicine	http://ajrccm.atsjournals.org/current.shtml			vicft				1997-		
4768	Odontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65736			pqml						
4188	Cambridge Quarterly of Healthcare Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66183		365	pqml				2004 -		
4417	In Vitro Cellular & Developmental Biology, Animal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37220			pqml				1998 -		
5305	Health Care Management Review	http://search.proquest.com/publication/38012			pq2011						\N
1417	Annals of General Psychiatry	http://www.annals-general-psychiatry.com/			fbjl				2002 -	Abans "Annals of General Hospital Psychiatry"	
1429	BMC Cell Biology	http://www.biomedcentral.com/bmccellbiol/			fbjl				2000 -		
1435	BMC Dermatology	http://www.biomedcentral.com/bmcdermatol/			fbjl				2001 -		
1440	BMC Endocrine Disorders	http://www.biomedcentral.com/bmcendocrdisord/			fbjl				2001 -		
1445	BMC Genomics	http://www.biomedcentral.com/bmcgenomics/			fbjl				2000 -		
1449	BMC Infectious Diseases	http://www.biomedcentral.com/bmcinfectdis/			fbjl				2001 -		
1460	BMC Musculoskeletal Disorders	http://www.biomedcentral.com/bmcmusculoskeletdisord/			fbjl				2000 -		
1465	BMC Nursing	http://www.biomedcentral.com/bmcnurs/			fbjl				2002 -		
1474	BMC Psychiatry	http://www.biomedcentral.com/bmcpsychiatry/			fbjl				2001 -		
1466	BMC Ophthalmology	http://www.biomedcentral.com/bmcophthalmol/			fbjl				2001 -		
2535	Acta Histochemica	http://proquest.umi.com/pqdlink?RQT=318&PMID=48508\r\n\n			pqhmc				2002 - 2005		
4482	Journal of Bone & Joint Surgery, American Volume	http://proquest.umi.com/pqdlink?RQT=318&PMID=28967			pqml				1997 - 2005		
4604	Journal of Public Health Management and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=37449			pqml						
4679	Medycyna Pracy	http://proquest.umi.com/pqdlink?RQT=318&PMID=71388			pqml				2006 - 		
2537	Acta Pediatrica Espanola	http://proquest.umi.com/pqdlink?RQT=318&PMID=67263\r\n\n			pqhmc				 - 		
5310	Health Education and Behavior	http://search.proquest.com/publication/35845			pq2011						\N
2571	American Health New York	http://proquest.umi.com/pqdlink?RQT=318&PMID=15424\\n			pqhmc				 - 		
2574	American Journal of Cardiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27507\r\n\n			pqhmc				 - 		
2338	Physics in Medicine and Biology	http://www.iop.org/EJ/journal/PMB			presen				1999 --		
2599	American Journal of Rhinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=78893\\n			pqhmc				 - 		
1529	Journal of Rehabilitation Medicine	http://www.medicaljournals.se/jrm/content/			cyclops						
4963	Evidencias en Pediatria	http://www.evidenciasenpediatria.es			fbjl				2005 -		
1503	International Seminars in Surgical Oncology	http://www.issoonline.com/content			fbjl				2004 -		
48	Internet Journal of Anesthesiology, The	https://ispub.com/IJA			fbjl				1997 -		
2620	Annals of Clinical Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=43083\r\n\n			pqhmc				2001 - 2006		
5349	Infant Observation	http://search.proquest.com/publication/176155			pq2011						\N
2191	Official Methods of Analysis of the AOAC International	http://eoma.aoac.org/			aspb		98973	Barcelona			
8	American Journal of Physiology - Lung Cellular and Mollecular Physiology 	http://intl-ajplung.physiology.org/		365	fbjl				1989 -		
5019	Annals of Internal Medicine	http://www.annals.org/			althaia				1993 - 		
4978	Clinical Orthopaedics and Related Research	http://www.springerlink.com/content/120901/?p=4c58da414a6b48e395871d19fadb2355&pi=0			althaia						
4967	JAMA: the Journal of the American Medical Association	http://jama.ama-assn.org/			althaia						
2694	Australian Journal of Physiotherapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=73220\\n			pqhmc				 - 		
4986	British Journal of Dermatology	http://www3.interscience.wiley.com/journal/117983344/home			althaia						
2698	BJOG	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
2819	Cambridge Quarterly of Healthcare Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=04/01/2004			pqhmc				 - 		
5430	Journal of Drug Education	http://search.proquest.com/publication/105520			pq2011						\N
2832	Canadian Medical Association. Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 1997		
2874	Child & Adolescent Social Work Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
2895	Clinical Laboratory Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=36487\r\n\n			pqhmc				1998 - 		
5470	Journal of Medical Genetics	http://search.proquest.com/publication/47209			pq2011						\N
5297	Government Periodicals / FIND	http://search.proquest.com/publication/28285			pq2011						\N
5298	HIV Therapy	http://search.proquest.com/publication/105522			pq2011						\N
2965	Diabetes in the News	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
2971	Dimensions of Critical Care Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=07/01/2002			pqhmc				 - 1998		
2985	EMS : Emergency Medical Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=78292\\n			pqhmc				2007 - 		
5533	Labmedicine	http://search.proquest.com/publication/105466			pq2011						\N
3065	Genetical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=79030\\n			pqhmc				2007 - 		
2808	British Medical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=01/01/1994			pqhmc				 - 		
1368	Radiology	http://radiology.rsnajnls.org			presen				1999 -		
3126	Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3132	Healthline	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3168	In Vitro Cellular & Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 1998		
3181	Infectious Disease in Children	http://proquest.umi.com/pqdlink?RQT=318&PMID=80699\\n			pqhmc				2008 - 		
3187	Inside MS	http://proquest.umi.com/pqdlink?RQT=318&PMID=11469\\n			pqhmc				1997 - 		
3191	International Family Planning Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=37240\\n			pqhmc				1998 - 		
5599	Nutrition Reviews	http://search.proquest.com/publication/42187			pq2011						\N
3212	International Journal of Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=01/01/2001			pqhmc				 - 1998		
3177	Infancy	http://proquest.umi.com/pqdlink?RQT=318&PMID=67710\r\n\n			pqhmc				 - 		
3239	JAMA	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
5620	PAHO Today: The Newsletter of the Pan American Health Organization	http://search.proquest.com/publication/105445			pq2011						\N
3245	Journal of Acquired Immune Deficiency Syndromes	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3246	Journal of Aerosol Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=77292\\n			pqhmc				 - 		
5024	Journal of Physical Therapy Science	http://www.jstage.jst.go.jp/browse/jpts			fbjl				1995 -		
3281	Journal of Clinical Outcomes Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
5299	Harvard Public Health Review	http://search.proquest.com/publication/105589			pq2011						\N
5301	Health & Social Work	http://search.proquest.com/publication/47817			pq2011						\N
3333	Journal of Headache and Pain, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
5026	Advance for Occupational Therapy Practitioners	http://occupational-therapy.advanceweb.com/ebook/archive.aspx			fbjl				1998 -		
5703	TDR News	http://search.proquest.com/publication/105663			pq2011						\N
5710	Transportation Department Documents and Publications	http://search.proquest.com/publication/28283			pq2011						\N
3415	Journal of Pediatric Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 2004		
3437	Journal of Public Health Management and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3477	Journal of the Association for Research in Otolaryngology	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3487	Journal of the Royal Society for the Promotion of Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67916\\n			pqhmc				2005 - 		
3488	Journals of Gerontology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=05/01/1995			pqhmc				 - 		
3489	Journals of Gerontology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=05/01/1995			pqhmc				 - 		
3533	Mayo Clinic Health Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3539	Medical Care Research and Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3549	Medical Laboratory Observer	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 1998		
3567	Medycyna Pracy	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 2006		
3538	Medical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=66365\r\n\n			pqhmc				 - 		
5091	The Annals of the University of Dunarea de Jos of Galati. Fascicle VI. Food Technology	http://search.proquest.com/publication/105841			pq2011						\N
3596	NASNewsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=68231\\n			pqhmc				2005 - 2006		
3656	Nursing Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12/01/2004			pqhmc				 - 1993		
3657	Nursing Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 1998		
3674	OTJR	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 1999		
3684	Odontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3686	Omega	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
5136	British Food Journal	http://search.proquest.com/publication/31491		365	pq2011						\N
3690	Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3691	Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 2007		
3699	Orthopaedics Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 2008		
3729	Perception and Psychophysics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67990\\n			pqhmc				2004 - 		
3736	Pharma	http://proquest.umi.com/pqdlink?RQT=318&PMID=Current			pqhmc				 - 2008		
3769	Proceedings of the Institution of Mechanical Engineers	http://proquest.umi.com/pqdlink?RQT=318&PMID=07/01/2007			pqhmc				 - 		
3774	Promotion & Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=36193\\n			pqhmc				1998 - 		
3776	Protein Engineering, Design & Selection	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3804	Public Health Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=			pqhmc				 - 		
3805	Public Health Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=07/01/1999			pqhmc				 - 1994		
5201	Critical Reviews in Toxicology	http://search.proquest.com/publication/29764			pq2011						\N
3814	Quimica Clinica	http://proquest.umi.com/pqdlink?RQT=318&PMID=67264\r\n\n			pqhmc				 - 		
3856	Social Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29279\\n			pqhmc				2000 - 2005		
5246	The Ethiopian Journal of Health Development	http://search.proquest.com/publication/105344			pq2011						\N
5269	Family and Community Health	http://search.proquest.com/publication/48112			pq2011						\N
3959	AANA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=66992\\n			pqml				2004 - 		
3960	AAOHN Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=39312\\n			pqml				1999 - 		
3961	ABNF Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38579\\n			pqml				1999 - 		
3962	ACP Journal Club	http://proquest.umi.com/pqdlink?RQT=318&PMID=52709\\n			pqml				2002 - 2006		
3963	AIDS Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=9953\\n			pqml				1997 - 2000		
3964	AIDS Education and Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=37943\\n			pqml				1998 - 		
3965	AIDS Reader, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=78663\\n			pqml				2007 - 		
3966	AIDS and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=55624\\n			pqml				 - 		
3967	ANS: Advances in Nursing Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=35665\\n			pqml				 - 		
3968	Abdominal Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=65798\\n			pqml				 - 		
3969	Academic Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=46162\\n			pqml				2001 - 2006		
3970	Academic Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37254\\n			pqml				1998 - 		
3971	Acta Diabetologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=65753\\n			pqml				2002 - 2003		
3972	Acta Histochemica	http://proquest.umi.com/pqdlink?RQT=318&PMID=48508\\n			pqml				2002 - 2005		
3973	Acta Neuropathologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=66934\\n			pqml				 - 		
3974	Acupuncture in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=78768\\n			pqml				2006 - 		
3975	Addiction	http://proquest.umi.com/pqdlink?RQT=318&PMID=17071\\n			pqml				1997 - 2000		
3976	Administration and Policy in Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=55623\\n			pqml				 - 		
3977	Administration and Policy in Mental Health and Mental Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=79701\\n			pqml				 - 		
3978	Adolescence	http://proquest.umi.com/pqdlink?RQT=318&PMID=26960\\n			pqml				1994 - 		
3979	Adolescent Medicine Clinics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49932\\n			pqml				2001 - 2006		
3980	Advances in Skin & Wound Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=39398\\n			pqml				1999 - 2004		
3981	Age and Ageing	http://proquest.umi.com/pqdlink?RQT=318&PMID=15291\\n			pqml				1997 - 2000		
3982	Aging Male	http://proquest.umi.com/pqdlink?RQT=318&PMID=56223\\n			pqml				2003 - 2007		
3983	Alabama Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=56260\\n			pqml				2003 - 2006		
3984	Alberta RN	http://proquest.umi.com/pqdlink?RQT=318&PMID=38575\\n			pqml				1998 - 2006		
3985	Alcohol Research and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=18306\\n			pqml				1994 - 		
3986	Alcohol and Alcoholism : International Journal of the Medical Council on Alcoholism	http://proquest.umi.com/pqdlink?RQT=318&PMID=53217\\n			pqml				 - 		
3987	Allergy and Asthma Proceedings	http://proquest.umi.com/pqdlink?RQT=318&PMID=78895\\n			pqml				 - 		
3988	Alternative Therapies in Health and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38441\\n			pqml				1998 - 		
3989	Ambio	http://proquest.umi.com/pqdlink?RQT=318&PMID=68214\\n		180	pqml				2005 - 		
3991	American Annals of the Deaf	http://proquest.umi.com/pqdlink?RQT=318&PMID=27282\\n			pqml				1997 - 		
3992	American Dietetic Association. Journal of the American Dietetic Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=18999\\n			pqml				1995 - 2003		
3993	American Family Physician	http://proquest.umi.com/pqdlink?RQT=318&PMID=24034\\n			pqml				1998 - 		
3994	American Journal of Audiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36486\\n			pqml				1998 - 		
3995	American Journal of Clinical Hypnosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=53562\\n			pqml				2003 - 		
3996	American Journal of Community Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=18028\\n			pqml				1995 - 2004		
3997	American Journal of Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36637\\n			pqml				1998 - 2007		
3998	American Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53195\\n			pqml				 - 		
3999	American Journal of Geriatric Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37469\\n			pqml				1998 - 		
4000	American Journal of Health Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=52772\\n			pqml				2003 - 		
4001	American Journal of Human Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67473\\n			pqml				 - 		
4002	American Journal of Law and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=18339\\n			pqml				1998 - 		
4003	American Journal of Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10268\\n			pqml				1997 - 2003		
4004	American Journal of Occupational Therapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=77693\\n			pqml				2006 - 		
4005	American Journal of Pathology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21318\\n			pqml				1997 - 1997		
4006	American Journal of Pharmaceutical Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=36531\\n			pqml				1998 - 		
4007	American Journal of Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28648\\n			pqml				1994 - 		
4008	American Journal of Psychoanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=27115\\n			pqml				1996 - 2004		
4009	American Journal of Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29197\\n			pqml				1995 - 2001		
4010	American Journal of Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=12495\\n			pqml				1994 - 		
4011	American Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=8\\n			pqml				1995 - 		
4012	American Journal of Respiratory Cell and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=12432\\n			pqml				1997 - 		
4013	American Journal of Respiratory and Critical Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54254\\n			pqml				2003 - 		
4014	American Journal of Rhinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=78893\\n			pqml				 - 		
4015	American Journal of Speech - Language Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36485\\n			pqml				1998 - 		
4016	American Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=38445\\n			pqml				1998 - 		
4017	American Surgeon, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35779\\n			pqml				1997 - 		
4018	Amyloid	http://proquest.umi.com/pqdlink?RQT=318&PMID=56225\\n			pqml				2003 - 2007		
4019	Anaesthesia and Intensive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37181\\n		365	pqml				1998 - 		
4020	Anatomischer Anzeiger	http://proquest.umi.com/pqdlink?RQT=318&PMID=48509\\n			pqml				2002 - 2004		
4021	Anesthesia Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=68216\\n			pqml				2004 - 2006		
4022	Angiogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55625\\n			pqml				 - 		
4023	Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36630\\n			pqml				1998 - 2005		
4024	Animal Health Research Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=78996\\n		365	pqml				2007 - 		
4025	Annals of Allergy, Asthma, and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27067\\n			pqml				 - 		
4026	Annals of Botany	http://proquest.umi.com/pqdlink?RQT=318&PMID=53203\\n			pqml				 - 		
4027	Annals of Clinical Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=43083\\n			pqml				2001 - 2006		
4028	Annals of Clinical Microbiology and Antimicrobials	http://proquest.umi.com/pqdlink?RQT=318&PMID=68260\\n			pqml				2005 - 		
4029	Annals of Clinical Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=55626\\n			pqml				 - 		
4030	Annals of Dyslexia	http://proquest.umi.com/pqdlink?RQT=318&PMID=17628\\n			pqml				1998 - 		
4031	Annals of General Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68263\\n			pqml				 - 		
4032	Annals of Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=51939\\n			pqml				2002 - 2006		
4033	Annals of Nutrition & Metabolism	http://proquest.umi.com/pqdlink?RQT=318&PMID=45286\\n			pqml				2001 - 2003		
4034	Annals of Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=72790\\n			pqml				 - 		
4035	Annals of Otology, Rhinology & Laryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26397\\n			pqml				1997 - 		
4036	Annals of Surgical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69699\\n			pqml				 - 		
4037	Annals of Tropical Paediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38656\\n			pqml				1997 - 2000		
4038	Annals of Vascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37001\\n			pqml				1998 - 2001		
4039	Annals of the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=28112\\n			pqml				1997 - 2003		
4040	Annual Review of Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37421\\n			pqml				1998 - 2005		
4041	Annual Review of Biophysics and Biomolecular Structure	http://proquest.umi.com/pqdlink?RQT=318&PMID=37669\\n			pqml				1998 - 2005		
4042	Annual Review of Cell and Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37363\\n			pqml				1997 - 2005		
4043	Annual Review of Entomology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37670\\n			pqml				1998 - 2005		
4044	Annual Review of Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=22339\\n			pqml				1999 - 2005		
4045	Annual Review of Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17128\\n			pqml				1997 - 2005		
4046	Annual Review of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37671\\n			pqml				1998 - 2005		
4047	Annual Review of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24718\\n			pqml				1997 - 2004		
4048	Annual Review of Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=18603\\n			pqml				1997 - 2005		
4049	Annual Review of Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68348\\n			pqml				2005 - 		
4050	Annual Review of Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=17150\\n			pqml				1997 - 2005		
4051	Annual Review of Pharmacology and Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24717\\n			pqml				1997 - 2005		
4052	Annual Review of Physical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=38647\\n			pqml				1998 - 2005		
4053	Annual Review of Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37672\\n			pqml				1998 - 2005		
4054	Annual Review of Phytopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37376\\n			pqml				1998 - 2005		
4055	Annual Review of Plant Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37379\\n			pqml				1998 - 2005		
4056	Annual Review of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24716\\n			pqml				1994 - 2005		
4057	Annual Review of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=17732\\n			pqml				1997 - 2005		
4058	Annual Review of Sex Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=37741\\n			pqml				1997 - 		
4059	Applied Psychophysiology and Biofeedback	http://proquest.umi.com/pqdlink?RQT=318&PMID=69700\\n			pqml				 - 		
4060	Archives of Dermatological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66936\\n			pqml				 - 		
4061	Archives of Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29255\\n			pqml				 - 		
4062	Archives of Disease in Childhood	http://proquest.umi.com/pqdlink?RQT=318&PMID=28110\\n			pqml				1997 - 2003		
4063	Archives of Disease in Childhood. Fetal and Neonatal Edition	http://proquest.umi.com/pqdlink?RQT=318&PMID=45484\\n			pqml				 - 		
4064	Archives of Environmental & Occupational Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=24517\\n			pqml				1997 - 		
4065	Archives of Facial Plastic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=43783\\n			pqml				 - 		
4066	Archives of Family Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=10076\\n			pqml				 - 		
4067	Archives of General Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28243\\n			pqml				 - 		
4068	Archives of Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=29256\\n			pqml				 - 		
4069	Archives of Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28242\\n			pqml				 - 		
4070	Archives of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29241\\n			pqml				 - 		
4071	Archives of Otolaryngology - Head & Neck Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=29242\\n			pqml				 - 		
4072	Archives of Pathology & Laboratory Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30163\\n			pqml				1997 - 		
4073	Archives of Pediatrics & Adolescent Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=28920\\n			pqml				 - 		
4074	Archives of Sexual Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19481\\n			pqml				1995 - 2004		
4075	Archives of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=29244\\n			pqml				 - 		
4076	Archives of Virology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66937\\n			pqml				 - 		
4077	Arthritis Research & Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68264\\n			pqml				 - 		
4078	Asia Pacific Journal of Clinical Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=73236\\n			pqml				 - 		
4079	Association of Operating Room Nurses. AORN Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35897\\n			pqml				1998 - 2006		
4080	Audiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33512\\n			pqml				1997 - 2001		
4081	Audiology & Neurotology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66443\\n			pqml				 - 		
4082	Australasian Physical & Engineering Sciences in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=73199\\n			pqml				 - 		
4083	Australian Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=73205\\n			pqml				 - 		
4084	Australian Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=73209\\n			pqml				 - 		
4085	Australian Family Physician	http://proquest.umi.com/pqdlink?RQT=318&PMID=73252\\n			pqml				 - 		
4086	Australian Health Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=67917\\n			pqml				2004 - 		
4087	Australian Journal of Advanced Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=59499\\n			pqml				2003 - 2007		
4088	Australian Journal of Advanced Nursing (Online)	http://proquest.umi.com/pqdlink?RQT=318&PMID=80795\\n			pqml				2007 - 		
4089	Australian Journal of Physiotherapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=73220\\n			pqml				 - 		
4091	BMC Anesthesiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68268\\n			pqml				2005 - 2005		
4092	BMC Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68270\\n			pqml				 - 		
4093	BMC Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68271\\n			pqml				2005 - 2005		
4094	BMC Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68272\\n			pqml				 - 		
4095	BMC Blood Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68273\\n			pqml				2005 - 2005		
4096	BMC Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68274\\n			pqml				 - 		
4097	BMC Cardiovascular Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68275\\n			pqml				 - 		
4098	BMC Chemical Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68277\\n			pqml				2005 - 2005		
4099	BMC Clinical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68278\\n			pqml				2005 - 2005		
4100	BMC Complementary and Alternative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68280\\n			pqml				 - 		
4101	BMC Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68281\\n			pqml				 - 		
4102	BMC Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68282\\n			pqml				 - 		
4103	BMC Ear, Nose and Throat Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68283\\n			pqml				2005 - 2005		
4104	BMC Ecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68284\\n			pqml				 - 		
4105	BMC Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68285\\n			pqml				2005 - 2005		
4106	BMC Endocrine Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68286\\n			pqml				2005 - 2005		
4107	BMC Family Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=68288\\n			pqml				 - 		
4108	BMC Gastroenterology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68289\\n			pqml				 - 		
4109	BMC Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68290\\n			pqml				 - 		
4110	BMC Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68291\\n			pqml				 - 		
4111	BMC Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68292\\n			pqml				2005 - 2005		
4112	BMC Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68293\\n			pqml				 - 		
4113	BMC Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68294\\n			pqml				 - 		
4114	BMC Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=68295\\n			pqml				 - 		
4115	BMC International Health and Human Rights	http://proquest.umi.com/pqdlink?RQT=318&PMID=68296\\n			pqml				2005 - 2005		
4116	BMC Medical Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=68297\\n			pqml				 - 		
4117	BMC Medical Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68299\\n			pqml				 - 		
4118	BMC Medical Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68300\\n			pqml				 - 		
4119	BMC Medical Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=68301\\n			pqml				2005 - 2005		
4120	BMC Medical Informatics and Decision Making	http://proquest.umi.com/pqdlink?RQT=318&PMID=68302\\n			pqml				 - 		
4121	BMC Medical Research Methodology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68303\\n			pqml				 - 		
4122	BMC Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68304\\n			pqml				 - 		
4123	BMC Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68305\\n			pqml				 - 		
4124	BMC Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68306\\n			pqml				 - 		
4125	BMC Musculoskeletal Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68307\\n			pqml				 - 		
4126	BMC Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68308\\n			pqml				 - 		
4127	BMC Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68309\\n			pqml				 - 		
4128	BMC Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68310\\n			pqml				 - 		
4129	BMC Nuclear Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68311\\n			pqml				2005 - 2005		
4130	BMC Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=68312\\n			pqml				2005 - 2005		
4131	BMC Oral Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68314\\n			pqml				2005 - 2005		
4132	BMC Palliative Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=68315\\n			pqml				2005 - 2005		
4133	BMC Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68316\\n			pqml				 - 		
4134	BMC Pregnancy and Childbirth	http://proquest.umi.com/pqdlink?RQT=318&PMID=68320\\n			pqml				2005 - 		
4135	BMC Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68321\\n			pqml				 - 		
4136	BMC Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68322\\n			pqml				 - 		
4137	BMC Pulmonary Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68323\\n			pqml				2005 - 		
4138	BMC Structural Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68324\\n			pqml				 - 		
4139	BMC Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=68325\\n			pqml				 - 		
4140	BMC Urology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68326\\n			pqml				 - 		
4141	Basic Research in Cardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66938\\n			pqml				 - 		
4142	Behavior Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=69701\\n			pqml				 - 		
4143	Behavioral Healthcare	http://proquest.umi.com/pqdlink?RQT=318&PMID=71998\\n			pqml				2006 - 		
4144	Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36031\\n			pqml				1997 - 		
4145	Behavioral and Brain Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=17437\\n			pqml				 - 		
4146	Biochemistry and Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36120\\n			pqml				1998 - 2007		
4147	Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53218\\n			pqml				 - 		
4148	Biological Bulletin, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21371\\n			pqml				1994 - 		
4149	Biomagnetic Research and Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68265\\n			pqml				 - 		
4150	Biomedical Engineering Online	http://proquest.umi.com/pqdlink?RQT=318&PMID=68267\\n			pqml				 - 		
4151	Biomedical Instrumentation & Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68217\\n		180	pqml				2005 - 		
4152	Biomedical Microdevices	http://proquest.umi.com/pqdlink?RQT=318&PMID=55628\\n			pqml				 - 		
4153	Biometrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37041\\n			pqml				1998 - 2002		
4154	Biophysical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36123\\n			pqml				1999 - 		
4155	Biostatistics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53239\\n			pqml				 - 		
4156	Bone Marrow Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68896\\n			pqml				 - 		
4157	Brain	http://proquest.umi.com/pqdlink?RQT=318&PMID=33531\\n			pqml				1996 - 2001		
4158	Brain Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55673\\n			pqml				1999 - 2004		
4159	Brain Structure and Function	http://proquest.umi.com/pqdlink?RQT=318&PMID=66935\\n			pqml				 - 		
4160	Brain Topography	http://proquest.umi.com/pqdlink?RQT=318&PMID=55630\\n			pqml				1999 - 2004		
4161	Brain, Behavior and Evolution	http://proquest.umi.com/pqdlink?RQT=318&PMID=37870\\n			pqml				1998 - 2003		
4162	Breast Cancer Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68328\\n			pqml				 - 		
4163	Breast Cancer Research and Treatment	http://proquest.umi.com/pqdlink?RQT=318&PMID=55631\\n			pqml				1999 - 2004		
4164	Breastfeeding Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=73246\\n			pqml				 - 		
4165	Briefings in Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49211\\n			pqml				2001 - 2006		
4166	Briefings in Functional Genomics & Proteomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=50146\\n			pqml				2002 - 2006		
4167	British Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68897\\n			pqml				 - 		
4168	British Journal of Anaesthesia	http://proquest.umi.com/pqdlink?RQT=318&PMID=28118\\n		365	pqml				1997 - 		
4169	British Journal of Biomedical Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=37186\\n			pqml				1998 - 		
4170	British Journal of Cancer, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68942\\n			pqml				 - 		
4171	British Journal of Clinical Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37365\\n			pqml				1998 - 2006		
4172	British Journal of Health Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38749\\n			pqml				1998 - 2006		
4173	British Journal of Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=79991\\n		365	pqml				2006 - 		
4174	British Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28109\\n			pqml				1997 - 2003		
4175	British Journal of Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68898\\n			pqml				 - 		
4176	British Journal of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=15882\\n			pqml				1995 - 2006		
4177	British Journal of Social Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37369\\n			pqml				1998 - 2006		
4178	British Journal of Sports Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45585\\n			pqml				2001 - 2003		
4179	British Medical Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=53193\\n			pqml				 - 		
4181	Bulletin of Experimental Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=55632\\n			pqml				 - 		
4182	Bulletin of the History of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54135\\n		365	pqml				2003 - 		
4183	Bulletin of the Menninger Clinic	http://proquest.umi.com/pqdlink?RQT=318&PMID=37966\\n			pqml				1998 - 		
4184	Bulletin on the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=37288\\n			pqml				1998 - 2004		
4185	CANNT Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=69016\\n			pqml				2004 - 		
4186	CJEM : Journal of the Canadian Association of Emergency Physicians	http://proquest.umi.com/pqdlink?RQT=318&PMID=43698\\n			pqml				2001 - 		
4187	Calcified Tissue International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66939\\n			pqml				 - 		
4189	Canadian Association of Radiologists Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=47209\\n			pqml				1998 - 		
4190	Canadian Journal of Dietetic Practice and Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=38819\\n			pqml				1998 - 		
4191	Canadian Journal of Experimental Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=20379\\n			pqml				1993 - 		
4192	Canadian Journal of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36143\\n			pqml				1998 - 2007		
4193	Canadian Journal of Occupational Therapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=40569\\n			pqml				2000 - 		
4194	Canadian Journal of Physiology and Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37382\\n			pqml				1998 - 2007		
4195	Canadian Journal of Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=55050\\n			pqml				2004 - 		
4196	Canadian Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=37869\\n			pqml				1998 - 		
4197	Canadian Journal of Rural Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=39285\\n			pqml				1998 - 2006		
4198	Canadian Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=33539\\n			pqml				1997 - 		
4968	Archives of Neurology	http://archneur.ama-assn.org/			althaia						
4200	Canadian Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55078\\n			pqml				1999 - 		
4201	Canadian Operating Room Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=65709\\n			pqml				2003 - 		
4202	Cancer Biotherapy & Radiopharmaceuticals	http://proquest.umi.com/pqdlink?RQT=318&PMID=66581\\n			pqml				 - 		
4203	Cancer Causes & Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=55633\\n			pqml				1999 - 2004		
4204	Cancer Cell International	http://proquest.umi.com/pqdlink?RQT=318&PMID=68329\\n			pqml				2005 - 2005		
4205	Cancer Chemotherapy and Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66940\\n			pqml				 - 		
4206	Cancer Gene Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68899\\n			pqml				 - 		
4207	Cancer Immunology, Immunotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66941\\n			pqml				 - 		
4208	Cancer and Metastasis Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55164\\n			pqml				1997 - 2004		
4209	Carcinogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37370\\n			pqml				1998 - 2001		
4210	Cardiac Electrophysiology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=55634\\n			pqml				 - 		
4211	Cardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66455\\n			pqml				 - 		
4212	Cardiology in the Young	http://proquest.umi.com/pqdlink?RQT=318&PMID=79994\\n			pqml				 - 		
4213	Cardiovascular Diabetology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68330\\n			pqml				2005 - 2005		
4214	Cardiovascular Drugs and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55635\\n			pqml				1999 - 2004		
4215	Cardiovascular Ultrasound	http://proquest.umi.com/pqdlink?RQT=318&PMID=68333\\n			pqml				2005 - 		
4216	Care Management Journals	http://proquest.umi.com/pqdlink?RQT=318&PMID=68351\\n			pqml				1999 - 		
4217	Caries Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=26453\\n			pqml				1997 - 2003		
4218	Cell & Chromosome	http://proquest.umi.com/pqdlink?RQT=318&PMID=68334\\n			pqml				2005 - 2005		
4219	Cell Communication and Signaling	http://proquest.umi.com/pqdlink?RQT=318&PMID=68335\\n			pqml				2005 - 2005		
4220	Cell Death and Differentiation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68900\\n			pqml				 - 		
4221	Cell Stress & Chaperones	http://proquest.umi.com/pqdlink?RQT=318&PMID=68219\\n		180	pqml				2005 - 		
4222	Cell and Tissue Banking	http://proquest.umi.com/pqdlink?RQT=318&PMID=55637\\n			pqml				 - 		
4223	Cell and Tissue Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66942\\n			pqml				 - 		
4224	Cells Tissues Organs	http://proquest.umi.com/pqdlink?RQT=318&PMID=66450\\n			pqml				 - 		
4225	Cerebral Cortex	http://proquest.umi.com/pqdlink?RQT=318&PMID=53219\\n			pqml				 - 		
4226	Cerebrovascular Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=66445\\n			pqml				 - 		
4227	Chemical Senses	http://proquest.umi.com/pqdlink?RQT=318&PMID=53220\\n			pqml				 - 		
4228	Chemotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66454\\n			pqml				 - 		
4229	Chest	http://proquest.umi.com/pqdlink?RQT=318&PMID=28929\\n			pqml				1997 - 2006		
4230	Child Health Alert	http://proquest.umi.com/pqdlink?RQT=318&PMID=11503\\n			pqml				1997 - 		
4231	Child Welfare	http://proquest.umi.com/pqdlink?RQT=318&PMID=27849\\n			pqml				1994 - 		
4232	Chronic Respiratory Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66711\\n			pqml				 - 		
4233	Circulation	http://proquest.umi.com/pqdlink?RQT=318&PMID=27249\\n			pqml				 - 		
4234	Circulation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27245\\n			pqml				 - 		
4235	Cleft Palate - Craniofacial Journal, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36488\\n		180	pqml				2005 - 		
4236	Climacteric	http://proquest.umi.com/pqdlink?RQT=318&PMID=56224\\n			pqml				2003 - 2007		
4237	Clinical & Experimental Metastasis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55639\\n			pqml				1999 - 2004		
4238	Clinical Autonomic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=65754\\n			pqml				 - 		
4239	Clinical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=53534\\n			pqml				2002 - 		
4240	Clinical EEG and Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=67419\\n			pqml				2004 - 		
4242	Clinical Journal of Oncology Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=71690\\n			pqml				2005 - 		
4243	Clinical Laboratory Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=36487\\n			pqml				1998 - 		
4244	Clinical Oral Investigations	http://proquest.umi.com/pqdlink?RQT=318&PMID=69703\\n			pqml				 - 		
4245	Clinical Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36052\\n			pqml				1998 - 2005		
4246	Clinical Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=66566\\n			pqml				 - 		
4247	Clinical Trials	http://proquest.umi.com/pqdlink?RQT=318&PMID=66712\\n			pqml				 - 		
4248	Clinical and Experimental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=65728\\n			pqml				 - 		
4249	Clinical and Experimental Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65678\\n			pqml				 - 		
4250	Clinical and Investigative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=33540\\n			pqml				1997 - 2006		
4251	Clinical and Investigative Medicine (Online)	http://proquest.umi.com/pqdlink?RQT=318&PMID=78301\\n			pqml				2007 - 		
4252	Clinical and Molecular Allergy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68336\\n			pqml				2005 - 2005		
4253	Cognitive, Affective and Behavioral Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=67992\\n			pqml				2004 - 		
4254	Community Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66453\\n			pqml				 - 		
4241	Clinical Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=67474\n\n			pqml				 - 		
4255	Community Mental Health Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=19197\\n			pqml				1996 - 2004		
4256	Community Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=40570\\n			pqml				2000 - 		
4257	Comparative Hepatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68337\\n			pqml				2005 - 2005		
4258	Contemporary Longterm Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36071\\n			pqml				1998 - 2005		
4259	Contemporary Nurse : a Journal for the Australian Nursing Profession	http://proquest.umi.com/pqdlink?RQT=318&PMID=77925\\n		270	pqml				2006 - 		
4260	Cost Effectiveness and Resource Allocation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68338\\n			pqml				2005 - 2005		
4261	Creative Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=82696\\n			pqml				2008 - 		
4262	Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=68339\\n			pqml				 - 		
4263	Critical Care Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=36633\\n			pqml				1998 - 2007		
4264	Critical Care Nursing Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36080\\n			pqml				 - 		
4265	Critical Reviews in Biochemistry and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56217\\n			pqml				2003 - 2007		
4266	Critical Reviews in Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56218\\n			pqml				2003 - 2007		
4267	Critical Reviews in Clinical Laboratory Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=56259\\n			pqml				2003 - 2007		
4268	Critical Reviews in Computed Tomography	http://proquest.umi.com/pqdlink?RQT=318&PMID=56248\\n			pqml				2003 - 2004		
4269	Critical Reviews in Food Science and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=43989\\n			pqml				2001 - 2007		
4270	Critical Reviews in Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56219\\n			pqml				2003 - 2007		
4271	Critical Reviews in Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38195\\n			pqml				1998 - 2008		
4272	Culture, Medicine and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=69704\\n			pqml				 - 		
4273	Current Controlled Trials in Cardiovascular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68340\\n			pqml				2005 - 2005		
4274	Current Medical Research and Opinion	http://proquest.umi.com/pqdlink?RQT=318&PMID=37296\\n			pqml				1998 - 		
4275	Current Medicinal Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=69173\\n			pqml				 - 		
4276	Current Pharmaceutical Design	http://proquest.umi.com/pqdlink?RQT=318&PMID=69174\\n			pqml				 - 		
4277	Cutis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37972\\n			pqml				1998 - 2003		
4278	Cytogenetic and Genome Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27434\\n			pqml				1997 - 2002		
4279	Dementia and Geriatric Cognitive Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37871\\n			pqml				1998 - 2003		
4280	Demography	http://proquest.umi.com/pqdlink?RQT=318&PMID=23899\\n			pqml				1995 - 		
4281	Dental Assistant	http://proquest.umi.com/pqdlink?RQT=318&PMID=41516\\n			pqml				2000 - 		
4282	Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66456\\n			pqml				 - 		
4283	Dermatology Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35680\\n			pqml				2001 - 		
4284	Development and Psychopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66185\\n			pqml				2004 - 2007		
4285	Developmental Medicine and Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26850\\n			pqml				2001 - 		
4286	Developmental Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=66444\\n			pqml				 - 		
4287	Diabetes	http://proquest.umi.com/pqdlink?RQT=318&PMID=23769\\n			pqml				1997 - 		
4288	Diabetes Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=17598\\n			pqml				1997 - 		
4289	Diabetes Forecast	http://proquest.umi.com/pqdlink?RQT=318&PMID=11457\\n			pqml				1997 - 		
4290	Diabetologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=66943\\n			pqml				 - 		
4291	Digestion	http://proquest.umi.com/pqdlink?RQT=318&PMID=26836\\n			pqml				1997 - 2003		
4292	Digestive Diseases and Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=55640\\n			pqml				1997 - 2004		
4293	Digestive Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66457\\n			pqml				 - 		
2565	Ambulatory Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=01/01/2005		180	pqhmc				 2005 -		
4295	Diseases of the Colon & Rectum	http://proquest.umi.com/pqdlink?RQT=318&PMID=66944\\n			pqml				 - 		
4296	Documenta Ophthalmologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=55641\\n			pqml				 - 		
4297	Dynamic Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68341\\n			pqml				2005 - 2005		
4298	Dysphagia	http://proquest.umi.com/pqdlink?RQT=318&PMID=66945\\n			pqml				 - 		
4299	EBRI Issue Brief	http://proquest.umi.com/pqdlink?RQT=318&PMID=38245\\n			pqml				1998 - 2006		
4300	EMBO Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53204\\n			pqml				 - 		
4301	EMBO Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=53252\\n			pqml				 - 		
4302	EMS : Emergency Medical Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=78292\\n			pqml				2007 - 		
4303	Ear, Nose & Throat Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37298\\n			pqml				1998 - 		
4304	Ecotoxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55642\\n			pqml				 - 		
4305	Emergency Medicine Journal : EMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=58253\\n			pqml				2003 - 2003		
4306	Emergency Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=38806\\n			pqml				1999 - 2006		
4307	Environmental Health Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=67001\\n			pqml				2004 - 		
4308	Environmental Toxicology and Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68221\\n		180	pqml				2005 - 		
4309	Epidemiology and Infection	http://proquest.umi.com/pqdlink?RQT=318&PMID=79022\\n			pqml				2007 - 		
4310	Ethical Human Psychology and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68378\\n			pqml				2005 - 		
4311	Ethics & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=44935\\n			pqml				2001 - 		
4312	Europace	http://proquest.umi.com/pqdlink?RQT=318&PMID=74896\\n			pqml				 - 		
4313	European Archives of Psychiatry and Clinical Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=66946\\n			pqml				 - 		
4314	European Child & Adolescent Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=66947\\n			pqml				 - 		
4315	European Heart Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=67742\\n			pqml				 - 		
4316	European Journal of Anaesthesiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=80004\\n		365	pqml				2003 - 		
4317	European Journal of Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48510\\n			pqml				2001 - 2005		
4318	European Journal of Clinical Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=13841\\n			pqml				 - 		
4319	European Journal of Clinical Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66948\\n			pqml				 - 		
4320	European Journal of Contraception & Reproductive Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=56235\\n			pqml				2002 - 2007		
4321	European Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55643\\n			pqml				 - 		
4322	European Journal of Human Genetics : EJHG	http://proquest.umi.com/pqdlink?RQT=318&PMID=68901\\n			pqml				 - 		
4323	European Journal of Nuclear Medicine and Molecular Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=66949\\n			pqml				 - 		
4324	European Journal of Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=66950\\n			pqml				 - 		
4325	European Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53253\\n			pqml				 - 		
4326	European Journal of Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=79088\\n			pqml				 - 		
4327	European Journal of Protistology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48520\\n			pqml				2001 - 2005		
4328	European Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53202\\n			pqml				 - 		
4329	European Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26835\\n			pqml				1997 - 2003		
4330	European Spine Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=69706\\n			pqml				 - 		
4331	Evidence - Based Dentistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68902\\n			pqml				 - 		
4332	Evidence - Based Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=52704\\n			pqml				2003 - 2003		
4333	Experimental & Applied Acarology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38255\\n			pqml				2000 - 2005		
4334	Experimental Brain Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66951\\n			pqml				 - 		
4335	Expert Reviews in Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=79028\\n		365	pqml				2007 - 		
4336	Eye	http://proquest.umi.com/pqdlink?RQT=318&PMID=68903\\n			pqml				 - 		
4337	FDA Consumer	http://proquest.umi.com/pqdlink?RQT=318&PMID=26588\\n			pqml				1992 - 2007		
4338	Familial Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=55644\\n			pqml				 - 		
4339	Family Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=53221\\n			pqml				 - 		
4340	Family Practice Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37668\\n			pqml				1998 - 		
4341	Family Process	http://proquest.umi.com/pqdlink?RQT=318&PMID=39292\\n			pqml				1999 - 		
4342	Fetal Diagnosis and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66448\\n			pqml				 - 		
4343	Filaria Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68343\\n			pqml				2005 - 2005		
4344	Florida Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37205\\n			pqml				1998 - 2006		
4345	Folia Biologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=68086\\n			pqml				2005 - 		
4346	Folia Histochemica et Cytobiologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=78745\\n			pqml				2004 - 		
4347	Folia Parasitologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=70289\\n		90	pqml				2004 - 		
4348	Folia Phoniatrica et Logopaedica	http://proquest.umi.com/pqdlink?RQT=318&PMID=37872\\n			pqml				1998 - 2003		
4349	Folia Primatologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=38201\\n			pqml				1998 - 2003		
4350	Frontiers of Health Services Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=15980\\n			pqml				1992 - 		
4351	Functional & Integrative Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=65686\\n			pqml				 - 		
4352	Functional Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=72391\\n			pqml				2006 - 		
4353	Future of Children, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38606\\n			pqml				1998 - 2004		
4354	Gastric Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=65732\\n			pqml				 - 		
4355	Gene Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68904\\n			pqml				 - 		
4356	Genes and Immunity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68905\\n			pqml				 - 		
4357	Genetic Counseling	http://proquest.umi.com/pqdlink?RQT=318&PMID=77796\\n		90	pqml				2007 - 		
4358	Genetic Vaccines and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68344\\n			pqml				2005 - 2005		
4359	Genetic, Social, and General Psychology Monographs	http://proquest.umi.com/pqdlink?RQT=318&PMID=37208\\n			pqml				1998 - 		
4361	Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=17472\\n			pqml				2004 - 		
4362	Genome	http://proquest.umi.com/pqdlink?RQT=318&PMID=37377\\n			pqml				1998 - 2007		
4363	Genome Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68345\\n			pqml				2005 - 2005		
4364	Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=17521\\n			pqml				 - 		
4365	Gerontological Nursing Association. Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=78766\\n			pqml				2007 - 		
4366	Gerontologist, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27214\\n			pqml				1994 - 		
4367	Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10181\\n			pqml				1997 - 2003		
4368	Glycobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53258\\n			pqml				 - 		
4369	Gut	http://proquest.umi.com/pqdlink?RQT=318&PMID=28089\\n			pqml				1997 - 2003		
4370	Gynecologic and Obstetric Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=66458\\n			pqml				 - 		
4371	Gynecological Endocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56220\\n			pqml				2003 - 		
4372	HEC Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=53333\\n			pqml				 - 		
4723	Nephron	http://proquest.umi.com/pqdlink?RQT=318&PMID=27426\\n			pqml				1997 - 2003		
4373	Hastings Center Report, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21451\\n			pqml				1994 - 		
4374	Health & Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=18747\\n			pqml				1994 - 		
4375	Health Affairs	http://proquest.umi.com/pqdlink?RQT=318&PMID=15986\\n			pqml				1994 - 		
4376	Health Care Financing Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=14925\\n			pqml				1991 - 		
4377	Health Care Management Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=53331\\n			pqml				 - 		
4378	Health Care Strategic Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12636\\n			pqml				1991 - 2006		
4379	Health Education Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53222\\n			pqml				 - 		
4380	Health Facilities Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=67110\\n			pqml				2004 - 		
4381	Health Law Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=54996\\n			pqml				1999 - 		
4382	Health Management Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17789\\n			pqml				1992 - 		
4383	Health Policy and Planning	http://proquest.umi.com/pqdlink?RQT=318&PMID=53260\\n			pqml				 - 		
4384	Health Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=37123\\n			pqml				1998 - 2006		
4385	Health Promotion International	http://proquest.umi.com/pqdlink?RQT=318&PMID=53223\\n			pqml				 - 		
4386	Health Promotion Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=73210\\n			pqml				 - 		
4387	Health Research Policy and System	http://proquest.umi.com/pqdlink?RQT=318&PMID=68347\\n			pqml				 - 		
4388	Health Services Management Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=45492\\n			pqml				2001 - 2006		
4389	Health and Quality of Life Outcomes	http://proquest.umi.com/pqdlink?RQT=318&PMID=68346\\n			pqml				 - 		
4390	Healthcare Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=14232\\n			pqml				1991 - 		
4391	Healthcare Financial Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=17804\\n			pqml				1992 - 		
4392	Heart	http://proquest.umi.com/pqdlink?RQT=318&PMID=28113\\n			pqml				1997 - 2003		
4393	Heart Failure Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55645\\n			pqml				 - 		
4394	Heart and Vessels	http://proquest.umi.com/pqdlink?RQT=318&PMID=65757\\n			pqml				 - 		
4395	Heredity	http://proquest.umi.com/pqdlink?RQT=318&PMID=38630\\n			pqml				 - 		
4396	Herz	http://proquest.umi.com/pqdlink?RQT=318&PMID=65805\\n			pqml				 - 		
4397	Histochemistry and Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66952\\n			pqml				 - 		
4398	Holistic Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=36014\\n			pqml				 - 		
4399	Hospital Law Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=37215\\n			pqml				1998 - 2005		
4400	Hospital Materials Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12422\\n			pqml				1991 - 2006		
4401	Hospital Topics	http://proquest.umi.com/pqdlink?RQT=318&PMID=29060\\n			pqml				1997 - 		
4402	Hospitals & Health Networks	http://proquest.umi.com/pqdlink?RQT=318&PMID=28608\\n			pqml				1991 - 		
4403	Human Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27986\\n			pqml				1994 - 		
4404	Human Factors	http://proquest.umi.com/pqdlink?RQT=318&PMID=19745\\n			pqml				1997 - 2007		
4405	Human Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66953\\n			pqml				 - 		
4406	Human Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67590\\n			pqml				2003 - 2006		
4407	Human Heredity	http://proquest.umi.com/pqdlink?RQT=318&PMID=66447\\n			pqml				 - 		
4408	Human Molecular Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53262\\n			pqml				 - 		
4409	Human Mutation	http://proquest.umi.com/pqdlink?RQT=318&PMID=67593\\n			pqml				 - 		
4410	Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53264\\n			pqml				 - 		
4411	Human Reproduction Update	http://proquest.umi.com/pqdlink?RQT=318&PMID=53263\\n			pqml				 - 		
4412	Human Reproduction and Genetic Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=78771\\n			pqml				2007 - 		
4413	Human Resources for Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68349\\n			pqml				2005 - 2005		
4414	Human and Experimental Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66716\\n			pqml				 - 		
4415	Hypertension	http://proquest.umi.com/pqdlink?RQT=318&PMID=18021\\n			pqml				 - 		
4416	Immunobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48716\\n			pqml				2001 - 2005		
4969	Archives of Surgery 	http://archsurg.ama-assn.org/			althaia						
4418	Indian Journal of Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=67946\\n			pqml				2004 - 		
4419	Indian Journal of Dermatology, Venereology and Leprology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67953\\n			pqml				2004 - 		
4420	Indian Journal of Medical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=36700\\n			pqml				1998 - 		
4421	Indian Journal of Medical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=67955\\n			pqml				2004 - 		
4422	Infection	http://proquest.umi.com/pqdlink?RQT=318&PMID=66954\\n			pqml				 - 		
4423	Infection Control and Hospital Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=16982\\n			pqml				 - 		
4424	Infectious Diseases in Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56216\\n			pqml				2003 - 		
4425	Inflammation	http://proquest.umi.com/pqdlink?RQT=318&PMID=55646\\n			pqml				1999 - 2004		
4426	Inflammation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66955\\n			pqml				 - 		
4427	Injury Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=49929\\n			pqml				2003 - 2003		
4428	Intensive Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66956\\n			pqml				 - 		
4429	International Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38262\\n			pqml				1998 - 		
4430	International Archives of Allergy and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66446\\n			pqml				 - 		
4431	International Family Planning Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=37240\\n			pqml				1998 - 		
4432	International Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33529\\n			pqml				1997 - 2001		
4433	International Journal for Equity in Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68350\\n			pqml				 - 		
4434	International Journal for Quality in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=65777\\n			pqml				 - 		
4435	International Journal of Behavioral Nutrition and Physical Activity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68352\\n			pqml				2005 - 2005		
4436	International Journal of Cardiovascular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55647\\n			pqml				 - 		
4437	International Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65783\\n			pqml				 - 		
4438	International Journal of Colorectal Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66957\\n			pqml				 - 		
4439	International Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37023\\n			pqml				1998 - 2000		
4440	International Journal of Group Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37928\\n			pqml				1998 - 		
4441	International Journal of Health Care Finance and Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53456\\n			pqml				 - 		
4442	International Journal of Health Geographics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68353\\n			pqml				2005 - 2005		
4443	International Journal of Impotence Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68906\\n			pqml				 - 		
4445	International Journal of Legal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66958\\n			pqml				 - 		
4446	International Journal of Leprosy and Other Mycobacterial Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=18181\\n			pqml				1996 - 2005		
4447	International Journal of Medical Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48512\\n			pqml				2002 - 2005		
4448	International Journal of Neuropsychopharmacology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80028\\n			pqml				 - 		
4449	International Journal of Nursing Terminologies and Classifications	http://proquest.umi.com/pqdlink?RQT=318&PMID=36028\\n			pqml				1998 - 		
4450	International Journal of Obesity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68907\\n			pqml				 - 		
4451	International Journal of Occupational Medicine and Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=77288\\n			pqml				2006 - 		
4452	International Journal of Occupational and Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49933\\n			pqml				2002 - 		
4453	International Journal of Psychiatry in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=59586\\n			pqml				 - 		
4454	International Journal of STD & AIDS	http://proquest.umi.com/pqdlink?RQT=318&PMID=38467\\n			pqml				1998 - 2006		
4455	International Journal of Surgical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38744\\n			pqml				1998 - 2005		
4456	International Journal of Technology Assessment in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=79035\\n		365	pqml				2003 - 		
4457	International Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55648\\n			pqml				 - 		
4458	International Psychogeriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=80037\\n			pqml				 - 		
4459	International Urology and Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55649\\n			pqml				 - 		
4460	Intervirology	http://proquest.umi.com/pqdlink?RQT=318&PMID=22467\\n			pqml				1995 - 2003		
4461	Investigational New Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=55650\\n			pqml				1997 - 2004		
4462	Israel Journal of Psychiatry and Related Sciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37243\\n			pqml				1998 - 		
4463	Issues in Law & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30263\\n			pqml				1999 - 		
5302	Health Affairs	http://search.proquest.com/publication/36027			pq2011						\N
4465	JPEN, Journal of Parenteral and Enteral Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=12704\\n			pqml				1997 - 		
4466	Japanese Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53291\\n			pqml				 - 		
4467	Japanese Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69708\\n			pqml				 - 		
4468	Journal for Specialists in Pediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36687\\n			pqml				1998 - 		
4469	Journal of Abnormal Child Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=19470\\n			pqml				1995 - 2004		
4470	Journal of Aerosol Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=77292\\n			pqml				 - 		
4471	Journal of Allied Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49722\\n			pqml				2002 - 		
4472	Journal of Ambulatory Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=36990\\n			pqml				 - 		
4473	Journal of American College Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=27257\\n			pqml				1997 - 		
4474	Journal of Animal Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=22982\\n			pqml				1997 - 2006		
4475	Journal of Antimicrobial Chemotherapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=53293\\n			pqml				 - 		
4476	Journal of Applied Behavior Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=14884\\n		365	pqml				2005 - 		
4477	Journal of Assisted Reproduction and Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=55651\\n			pqml				1999 - 2004		
4478	Journal of Autism and Developmental Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=19471\\n			pqml				 - 		
4479	Journal of Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=69709\\n			pqml				 - 		
4480	Journal of Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68354\\n			pqml				2005 - 2005		
4481	Journal of Biosocial Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=66190\\n			pqml				 - 		
4484	Journal of Cancer Research & Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65689\\n			pqml				 - 		
4485	Journal of Cardiovascular Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35850\\n			pqml				 - 		
4486	Journal of Cardiovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=36628\\n			pqml				1998 - 		
4487	Journal of Cellular and Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68500\\n			pqml				2005 - 2006		
2306	Lancet, The	http://www.sciencedirect.com/science/journal/01406736			presen				1995 -		
4488	Journal of Cerebral Blood Flow and Metabolism	http://proquest.umi.com/pqdlink?RQT=318&PMID=68908\\n			pqml				 - 		
4489	Journal of Child Language	http://proquest.umi.com/pqdlink?RQT=318&PMID=18291\\n			pqml				 - 		
4490	Journal of Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=14627\\n			pqml				1997 - 2000		
4491	Journal of Child and Adolescent Psychiatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35858\\n			pqml				1998 - 		
4492	Journal of Child and Adolescent Psychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66582\\n			pqml				 - 		
4493	Journal of Circadian Rhythms	http://proquest.umi.com/pqdlink?RQT=318&PMID=68356\\n			pqml				2005 - 2005		
4494	Journal of Clinical Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55652\\n			pqml				1997 - 2004		
4495	Journal of Clinical Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=52718\\n			pqml				2002 - 		
4496	Journal of Clinical Monitoring and Computing	http://proquest.umi.com/pqdlink?RQT=318&PMID=55653\\n			pqml				 - 		
4497	Journal of Clinical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28111\\n			pqml				1997 - 2003		
4498	Journal of Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=19174\\n			pqml				1995 - 2004		
4499	Journal of Computational Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=55654\\n			pqml				1999 - 2004		
5303	Health Care Analysis : HCA	http://search.proquest.com/publication/54089		365	pq2011						\N
4500	Journal of Continuing Education in Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23906\\n			pqml				1997 - 		
4501	Journal of Cultural Diversity	http://proquest.umi.com/pqdlink?RQT=318&PMID=38581\\n			pqml				1998 - 		
4502	Journal of Cutaneous Medicine and Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37436\\n			pqml				 - 		
4503	Journal of Dairy Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80044\\n			pqml				 - 		
4504	Journal of Deaf Studies and Deaf Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=53224\\n			pqml				 - 		
4505	Journal of Dental Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=19555\\n			pqml				1997 - 		
4506	Journal of Digital Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=66959\\n			pqml				 - 		
4507	Journal of Electrocardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37009\\n			pqml				1997 - 		
4508	Journal of Electron Microscopy	http://proquest.umi.com/pqdlink?RQT=318&PMID=53294\\n			pqml				 - 		
4509	Journal of Endovascular Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68224\\n		180	pqml				2004 - 		
4510	Journal of Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=23855\\n			pqml				1994 - 		
4511	Journal of Epidemiology and Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=28088\\n			pqml				1997 - 2003		
4512	Journal of Experimental Botany	http://proquest.umi.com/pqdlink?RQT=318&PMID=53194\\n			pqml				 - 		
4513	Journal of Exposure Science and Environmental Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68909\\n			pqml				 - 		
4514	Journal of Gambling Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=53468\\n			pqml				 - 		
4515	Journal of Gastroenterology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66960\\n			pqml				 - 		
4516	Journal of Gene Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67592\\n			pqml				 - 		
4517	Journal of General Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14345\\n			pqml				1994 - 		
4518	Journal of Genetic Counseling	http://proquest.umi.com/pqdlink?RQT=318&PMID=55669\\n			pqml				 - 		
4519	Journal of Genetic Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26603\\n			pqml				1994 - 		
4520	Journal of Geriatric Physical Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=40572\\n			pqml				2002 - 		
4521	Journal of Gerontological Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36484\\n			pqml				1998 - 		
4522	Journal of Hand Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36981\\n			pqml				 - 		
4523	Journal of Hand Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=46167\\n			pqml				2001 - 2006		
4524	Journal of Head Trauma Rehabilitation, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36997\\n			pqml				 - 		
4526	Journal of Health Care Finance	http://proquest.umi.com/pqdlink?RQT=318&PMID=17716\\n			pqml				1992 - 		
4527	Journal of Health Care for the Poor and Underserved	http://proquest.umi.com/pqdlink?RQT=318&PMID=12307\\n		365	pqml				1996 - 		
4528	Journal of Health Organization and Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=11876\\n		365	pqml				1992 - 		
4529	Journal of Health Services Research & Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=59207\\n			pqml				2003 - 2006		
4530	Journal of Health and Human Services Administration	http://proquest.umi.com/pqdlink?RQT=318&PMID=48108\\n			pqml				2000 - 2005		
4531	Journal of Health and Social Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=27047\\n		365	pqml				1994 - 		
4532	Journal of Healthcare Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=23545\\n			pqml				1992 - 		
4533	Journal of Helminthology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79047\\n		365	pqml				2007 - 		
4534	Journal of Heredity, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28916\\n			pqml				 - 		
4535	Journal of Human Hypertension	http://proquest.umi.com/pqdlink?RQT=318&PMID=68910\\n			pqml				 - 		
4536	Journal of Immigrant and Minority Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53471\\n			pqml				 - 		
4537	Journal of Immune Based Therapies and Vaccines	http://proquest.umi.com/pqdlink?RQT=318&PMID=68357\\n			pqml				2005 - 2005		
4538	Journal of Infectious Diseases, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29194\\n			pqml				 - 		
4539	Journal of Inherited Metabolic Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55670\\n			pqml				1998 - 2004		
4540	Journal of Interferon & Cytokine Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66677\\n			pqml				 - 		
4541	Journal of Interventional Cardiac Electrophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55671\\n			pqml				1999 - 2004		
4542	Journal of Investigative Dermatology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70302\\n			pqml				 - 		
4543	Journal of Investigative Dermatology.  Symposium Proceedings, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80231\\n			pqml				 - 		
4544	Journal of Knee Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37945\\n			pqml				1998 - 		
4545	Journal of Laryngology and Otology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=33369\\n			pqml				1997 - 2006		
4546	Journal of Law, Medicine & Ethics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=18317\\n			pqml				1997 - 2007		
4547	Journal of Learning Disabilities	http://proquest.umi.com/pqdlink?RQT=318&PMID=14092\\n			pqml				1997 - 		
4548	Journal of Mammary Gland Biology and Neoplasia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55672\\n			pqml				1997 - 2004		
4549	Journal of Marital and Family Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=19058\\n			pqml				1994 - 		
4550	Journal of Maternal - Fetal & Neonatal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=56240\\n			pqml				2003 - 2007		
4551	Journal of Medical Biography	http://proquest.umi.com/pqdlink?RQT=318&PMID=59209\\n			pqml				2003 - 2006		
4552	Journal of Medical Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=12511\\n			pqml				1995 - 2003		
4553	Journal of Medical Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38446\\n			pqml				1998 - 2003		
4554	Journal of Medical Practice Management : MPM, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=82295\\n			pqml				2008 - 		
4555	Journal of Medical Screening	http://proquest.umi.com/pqdlink?RQT=318&PMID=49930\\n			pqml				2003 - 2006		
4556	Journal of Medical Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79168\\n			pqml				2007 - 		
4557	Journal of Membrane Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66961\\n			pqml				 - 		
4558	Journal of Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66962\\n			pqml				 - 		
4559	Journal of Motor Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=37013\\n			pqml				1998 - 		
4560	Journal of Music Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=17600\\n			pqml				2002 - 		
4561	Journal of Nanobiotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68358\\n			pqml				2005 - 2005		
4562	Journal of Negative Results in Biomedicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68359\\n			pqml				 - 		
4563	Journal of Neural Transmission	http://proquest.umi.com/pqdlink?RQT=318&PMID=66963\\n			pqml				 - 		
4564	Journal of Neuro - Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55674\\n			pqml				1999 - 2004		
4565	Journal of Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66964\\n			pqml				 - 		
4566	Journal of Neurology, Neurosurgery and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28090\\n			pqml				1997 - 2003		
4567	Journal of Neuropathology and Experimental Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29222\\n			pqml				1997 - 		
4568	Journal of Neuropsychiatry and Clinical Neurosciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37249\\n			pqml				1998 - 		
4569	Journal of Neuroscience Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38810\\n			pqml				1999 - 		
4570	Journal of Neurosurgical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=37990\\n			pqml				1998 - 2006		
4571	Journal of Neurotrauma	http://proquest.umi.com/pqdlink?RQT=318&PMID=66583\\n			pqml				 - 		
4572	Journal of Nuclear Medicine Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=39290\\n			pqml				1999 - 		
4573	Journal of Nuclear Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27354\\n			pqml				1997 - 		
4574	Journal of Nursing Care Quality	http://proquest.umi.com/pqdlink?RQT=318&PMID=35900\\n			pqml				 - 		
4575	Journal of Nursing Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=23497\\n			pqml				1997 - 		
4576	Journal of Nursing Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=68385\\n			pqml				2005 - 		
4577	Journal of Nursing Measurement	http://proquest.umi.com/pqdlink?RQT=318&PMID=68387\\n			pqml				2005 - 		
4578	Journal of Nursing Scholarship	http://proquest.umi.com/pqdlink?RQT=318&PMID=37455\\n			pqml				1998 - 		
4579	Journal of Nutrition, Health & Aging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=71589\\n			pqml				2006 - 		
4580	Journal of Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23412\\n			pqml				1995 - 		
4581	Journal of Occupational Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=69710\\n			pqml				 - 		
4582	Journal of Oncology Pharmacy Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=66717\\n			pqml				 - 		
4583	Journal of Oral Implantology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68234\\n		180	pqml				2005 - 		
4584	Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53440\\n			pqml				 - 		
4585	Journal of Orthopaedic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=12068\\n			pqml				1997 - 2005		
4586	Journal of Orthopaedic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38286\\n			pqml				1997 - 		
4587	Journal of Otolaryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37019\\n			pqml				1998 - 2001		
4588	Journal of Palliative Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36999\\n			pqml				1998 - 		
4589	Journal of Pediatric Ophthalmology and Strabismus	http://proquest.umi.com/pqdlink?RQT=318&PMID=37042\\n			pqml				1998 - 		
4590	Journal of Perinatal & Neonatal Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35925\\n			pqml				 - 		
4591	Journal of Perinatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68912\\n			pqml				 - 		
4592	Journal of Personality Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37932\\n			pqml				1998 - 		
4593	Journal of Plant Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48522\\n			pqml				2002 - 2005		
4594	Journal of Postgraduate Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67945\\n			pqml				2004 - 		
4595	Journal of Practical Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67062\\n			pqml				2004 - 		
4596	Journal of Primary Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=55675\\n			pqml				 - 		
4597	Journal of Psychiatry & Neuroscience : JPN	http://proquest.umi.com/pqdlink?RQT=318&PMID=39284\\n			pqml				1999 - 		
4598	Journal of Psychoactive Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=38472\\n			pqml				1998 - 		
4599	Journal of Psycholinguistic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=69711\\n			pqml				 - 		
4600	Journal of Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14346\\n			pqml				1994 - 		
4601	Journal of Psychosocial Nursing & Mental Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=36635\\n			pqml				1998 - 		
4602	Journal of Psychosomatic Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56221\\n			pqml				2003 - 2007		
4603	Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53305\\n			pqml				 - 		
4605	Journal of Public Health Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55836\\n			pqml				2001 - 		
4606	Journal of Refractive Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=45495\\n			pqml				2002 - 		
4607	Journal of Rehabilitation Research and Development	http://proquest.umi.com/pqdlink?RQT=318&PMID=20977\\n			pqml				1994 - 		
4608	Journal of School Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26287\\n			pqml				1994 - 		
4609	Journal of School Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68235\\n		180	pqml				2005 - 		
4610	Journal of Science and Medicine in Sport	http://proquest.umi.com/pqdlink?RQT=318&PMID=73254\\n			pqml				 - 		
4611	Journal of Sex Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=22854\\n			pqml				1994 - 2006		
4612	Journal of Social Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14224\\n			pqml				1994 - 		
4613	Journal of Speech, Language, and Hearing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=17692\\n			pqml				1997 - 		
4614	Journal of Sports Medicine and Physical Fitness	http://proquest.umi.com/pqdlink?RQT=318&PMID=11574\\n			pqml				1999 - 		
4615	Journal of Strength and Conditioning Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68236\\n		180	pqml				2005 - 		
4616	Journal of Telemedicine and Telecare	http://proquest.umi.com/pqdlink?RQT=318&PMID=59210\\n			pqml				2003 - 2006		
4617	Journal of Thrombosis and Thrombolysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55677\\n			pqml				1999 - 2004		
4618	Journal of Trace Elements in Medicine and Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48513\\n			pqml				2001 - 2004		
4619	Journal of Translational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68360\\n			pqml				2005 - 		
4620	Journal of Trauma Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37460\\n			pqml				1998 - 		
4621	Journal of Traumatic Stress	http://proquest.umi.com/pqdlink?RQT=318&PMID=69713\\n			pqml				 - 		
4622	Journal of Tropical Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53324\\n			pqml				 - 		
4623	Journal of Vascular Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27452\\n			pqml				1996 - 2003		
4624	Journal of Visual Communication in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38662\\n			pqml				2000 - 2000		
4625	Journal of the American Academy of Nurse Practitioners	http://proquest.umi.com/pqdlink?RQT=318&PMID=39096\\n			pqml				1999 - 		
4626	Journal of the American Academy of Psychoanalysis and Dynamic Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37944\\n			pqml				1998 - 		
4627	Journal of the American Animal Hospital Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=49611\\n			pqml				2002 - 2003		
4628	Journal of the American Medical Informatics Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=46163\\n			pqml				2001 - 2006		
4630	Journal of the Experimental Analysis of Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=12503\\n		180	pqml				2005 - 		
4631	Journal of the History of Medicine and Allied Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=53229\\n			pqml				 - 		
4632	Journal of the International Neuropsychological Society : JINS	http://proquest.umi.com/pqdlink?RQT=318&PMID=80013\\n		365	pqml				2004 - 		
4633	Journal of the Medical Library Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=67341\\n			pqml				2003 - 		
4634	Journal of the National Cancer Institute	http://proquest.umi.com/pqdlink?RQT=318&PMID=27377\\n			pqml				1997 - 2003		
4635	Journal of the National Medical Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=36998\\n			pqml				1998 - 		
4638	Kansas Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=39095\\n			pqml				1999 - 2006		
4639	Kennedy Institute of Ethics Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53555\\n		365	pqml				2002 - 		
4640	Kentucky Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=54246\\n			pqml				2003 - 2006		
4641	Kidney & Blood Pressure Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=10188\\n			pqml				1996 - 2003		
4642	Kidney International	http://proquest.umi.com/pqdlink?RQT=318&PMID=70303\\n			pqml				 - 		
4643	Kinetoplastid Biology and Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=68361\\n			pqml				2005 - 2005		
4644	Laboratory Animals	http://proquest.umi.com/pqdlink?RQT=318&PMID=59211\\n			pqml				2003 - 2006		
4645	Laboratory Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68911\\n			pqml				 - 		
4646	Lancet, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28154\\n		60	pqml				1995 - 		
4647	Language and Speech	http://proquest.umi.com/pqdlink?RQT=318&PMID=38017\\n			pqml				1998 - 		
4648	Language, Speech & Hearing Services in Schools	http://proquest.umi.com/pqdlink?RQT=318&PMID=17693\\n			pqml				1997 - 		
4649	Lasers in Medical Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=65762\\n			pqml				 - 		
4650	Law and Human Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=53485\\n			pqml				 - 		
4651	Learning & Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=22958\\n			pqml				2004 - 		
4652	Leukemia	http://proquest.umi.com/pqdlink?RQT=318&PMID=68913\\n			pqml				 - 		
4653	Lifetime Data Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=53486\\n			pqml				 - 		
4654	Lipids	http://proquest.umi.com/pqdlink?RQT=318&PMID=67242\\n			pqml				2004 - 		
4655	Lipids in Health and Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=68362\\n			pqml				2005 - 2005		
4656	Literature and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53845\\n		365	pqml				2002 - 		
4657	Lung	http://proquest.umi.com/pqdlink?RQT=318&PMID=65730\\n			pqml				2002 - 2003		
4658	Lupus	http://proquest.umi.com/pqdlink?RQT=318&PMID=66723\\n			pqml				 - 		
4659	MGMA Connexion	http://proquest.umi.com/pqdlink?RQT=318&PMID=56856\\n			pqml				2003 - 2006		
4660	MMWR. Morbidity and Mortality Weekly Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=15976\\n			pqml				1998 - 		
4661	Malaria Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68363\\n			pqml				 - 		
4662	Managed Care Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=37441\\n			pqml				1998 - 2006		
4663	Marketing Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=15686\\n			pqml				1992 - 2002		
4664	Materials Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=66576\\n			pqml				2004 - 2006		
4665	Maternal and Child Health Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=55678\\n			pqml				 - 		
4666	Mathematical Medicine and Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53268\\n			pqml				 - 		
4667	Mayo Clinic Proceedings	http://proquest.umi.com/pqdlink?RQT=318&PMID=18188\\n			pqml				1997 - 		
4668	Medical Anthropology Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=44287\\n			pqml				2001 - 		
4669	Medical Device Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=42620\\n			pqml				 - 		
4670	Medical History	http://proquest.umi.com/pqdlink?RQT=318&PMID=16707\\n			pqml				1997 - 		
4671	Medical Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=59497\\n			pqml				2004 - 		
4673	Medical Microbiology and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65696\\n			pqml				 - 		
4674	Medical Molecular Morphology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65760\\n			pqml				 - 		
4675	Medicine and Health Rhode Island	http://proquest.umi.com/pqdlink?RQT=318&PMID=53208\\n			pqml				2003 - 2006		
4676	Medicine, Health Care, and Philosophy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55679\\n			pqml				 - 		
4677	Medizinhistorisches Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=48515\\n			pqml				 - 		
4678	Medsurg Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37440\\n			pqml				1998 - 		
4680	Memory & Cognition	http://proquest.umi.com/pqdlink?RQT=318&PMID=22960\\n			pqml				2004 - 		
4681	Mental Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55680\\n			pqml				 - 		
4682	Mental Health Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=59280\\n			pqml				2004 - 		
4683	Mental and Physical Disability Law Reporter	http://proquest.umi.com/pqdlink?RQT=318&PMID=79796\\n			pqml				2007 - 		
4684	Metabolic Brain Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55681\\n			pqml				1997 - 2004		
4685	Microbial Cell Factories	http://proquest.umi.com/pqdlink?RQT=318&PMID=68365\\n			pqml				2005 - 2005		
4686	Microbial Drug Resistance	http://proquest.umi.com/pqdlink?RQT=318&PMID=66584\\n			pqml				 - 		
4687	Microbiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=48516\\n			pqml				2002 - 2004		
4688	Microscopy and Microanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=80019\\n			pqml				 - 		
4689	Military Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38133\\n			pqml				1998 - 		
4690	Minority Nurse Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=38582\\n			pqml				1998 - 2004		
4691	Modern Healthcare	http://proquest.umi.com/pqdlink?RQT=318&PMID=20762\\n			pqml				1999 - 		
4692	Modern Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68916\\n			pqml				 - 		
4693	Molecular Biology and Evolution	http://proquest.umi.com/pqdlink?RQT=318&PMID=78901\\n		365	pqml				2007 - 		
4694	Molecular Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68366\\n			pqml				 - 		
4695	Molecular Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53327\\n			pqml				 - 		
4696	Molecular Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68917\\n			pqml				 - 		
4697	Molecular Systems Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68918\\n			pqml				 - 		
4698	Multiple Sclerosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=66698\\n			pqml				 - 		
4699	Mutagenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=68504\\n			pqml				 - 		
4700	Mycopathologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55682\\n			pqml				 - 		
4701	NASNewsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=68231\\n			pqml				2005 - 2006		
4702	Nature	http://proquest.umi.com/pqdlink?RQT=318&PMID=28221\\n			pqml				1995 - 2005		
4703	Nature Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68919\\n			pqml				 - 		
4704	Nature Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68920\\n			pqml				 - 		
4705	Nature Chemical Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68921\\n			pqml				 - 		
4706	Nature Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68922\\n			pqml				 - 		
4707	Nature Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68923\\n			pqml				 - 		
4708	Nature Materials	http://proquest.umi.com/pqdlink?RQT=318&PMID=68924\\n			pqml				 - 		
4709	Nature Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68925\\n			pqml				 - 		
4710	Nature Methods	http://proquest.umi.com/pqdlink?RQT=318&PMID=68926\\n			pqml				 - 		
4711	Nature Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68927\\n			pqml				 - 		
4712	Nature Reviews. Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68928\\n			pqml				 - 		
4713	Nature Reviews. Drug Discovery	http://proquest.umi.com/pqdlink?RQT=318&PMID=68929\\n			pqml				 - 		
4714	Nature Reviews. Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68930\\n			pqml				 - 		
4715	Nature Reviews. Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68931\\n			pqml				 - 		
4716	Nature Reviews. Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68932\\n			pqml				 - 		
4717	Nature Reviews. Molecular Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68933\\n			pqml				 - 		
4718	Nature Reviews. Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68934\\n			pqml				 - 		
4719	Nature Structural & Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68935\\n			pqml				 - 		
4720	Neonatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66451\\n			pqml				 - 		
4721	Nephrology Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35800\\n			pqml				1997 - 		
4722	Nephrology, Dialysis, Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68505\\n			pqml				 - 		
4724	Neurocase	http://proquest.umi.com/pqdlink?RQT=318&PMID=53225\\n			pqml				 - 		
4725	Neurochemical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55683\\n			pqml				1999 - 2004		
4726	Neuroendocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27427\\n			pqml				1997 - 2003		
4727	Neuroepidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37873\\n			pqml				1998 - 2003		
4728	Neurogenetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=65703\\n			pqml				 - 		
4729	Neurological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=38000\\n			pqml				 - 		
4730	Neurological Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=66966\\n			pqml				 - 		
4731	Neurology India	http://proquest.umi.com/pqdlink?RQT=318&PMID=67947\\n			pqml				2004 - 		
4732	Neuropsychobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37874\\n			pqml				1998 - 2003		
4733	Neuropsychology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=69714\\n			pqml				 - 		
4734	Neuropsychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68936\\n			pqml				 - 		
4735	Neuroradiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65698\\n			pqml				2002 - 2003		
4736	Neuroscience and Behavioral Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55685\\n			pqml				 - 		
4737	New England Journal of Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28691\\n		90	pqml				1996 - 		
4738	New Jersey Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=56350\\n			pqml				2003 - 2006		
4739	New York State Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37337\\n			pqml				1998 - 2006		
4740	Noise & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=80710\\n			pqml				1998 - 		
4741	Nuclear Receptor	http://proquest.umi.com/pqdlink?RQT=318&PMID=68368\\n			pqml				2005 - 2005		
4742	Nucleic Acids Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53227\\n			pqml				 - 		
4743	Nurse Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=39399\\n			pqml				1999 - 2004		
4744	Nurse Researcher	http://proquest.umi.com/pqdlink?RQT=318&PMID=39056\\n			pqml				1998 - 		
4745	Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=20469\\n			pqml				1995 - 2004		
4746	Nursing Administration Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36020\\n			pqml				 - 		
4747	Nursing BC	http://proquest.umi.com/pqdlink?RQT=318&PMID=38544\\n			pqml				1998 - 		
4748	Nursing Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36025\\n			pqml				1998 - 		
4749	Nursing Education Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=43404\\n			pqml				2001 - 		
4750	Nursing Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66568\\n			pqml				 - 		
4751	Nursing Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=36030\\n			pqml				1997 - 		
4752	Nursing History Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=68389\\n			pqml				2005 - 		
4753	Nursing Journal of India	http://proquest.umi.com/pqdlink?RQT=318&PMID=49927\\n			pqml				2002 - 2006		
4754	Nursing Leadership Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=68390\\n			pqml				2005 - 2005		
4757	Nursing Older People	http://proquest.umi.com/pqdlink?RQT=318&PMID=38807\\n			pqml				1999 - 		
4758	Nursing Standard	http://proquest.umi.com/pqdlink?RQT=318&PMID=36596\\n			pqml				1998 - 		
4759	Nutrition Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68369\\n			pqml				2005 - 2005		
4760	Nutrition Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=28287\\n			pqml				1994 - 2007		
4761	ONS Connect	http://proquest.umi.com/pqdlink?RQT=318&PMID=71689\\n			pqml				2005 - 		
4762	OR Manager	http://proquest.umi.com/pqdlink?RQT=318&PMID=40571\\n			pqml				2000 - 2006		
4763	ORL : Journal for Oto - Rhino - Laryngology and Its Related Specialties	http://proquest.umi.com/pqdlink?RQT=318&PMID=66462\\n			pqml				 - 		
4764	Occupational Health & Safety	http://proquest.umi.com/pqdlink?RQT=318&PMID=28654\\n			pqml				1992 - 2006		
4765	Occupational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=49931\\n			pqml				 - 		
4766	Occupational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53453\\n			pqml				 - 		
4767	Occupational and Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=28086\\n			pqml				1997 - 2003		
4769	Oligonucleotides	http://proquest.umi.com/pqdlink?RQT=318&PMID=66686\\n			pqml				 - 		
4770	Oncogene	http://proquest.umi.com/pqdlink?RQT=318&PMID=68937\\n			pqml				 - 		
4771	Oncology Nursing Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=71691\\n			pqml				2005 - 		
1436	BMC Developmental Biology	http://www.biomedcentral.com/bmcdevbiol/			fbjl				2001 -		
4774	Onderstepoort Journal of Veterinary Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38653\\n			pqml				1998 - 2005		
4775	Online Journal of Issues in Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67067\\n			pqml				 - 		
4776	Ophthalmic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66460\\n			pqml				 - 		
4777	Ophthalmic Surgery, Lasers and Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=37008\\n			pqml				1998 - 		
4778	Ophthalmologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=66461\\n			pqml				 - 		
4779	Orthopaedic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36037\\n			pqml				1998 - 		
4780	Orthopedics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36483\\n			pqml				1998 - 2007		
4781	Osteoporosis International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66967\\n			pqml				 - 		
4782	Paediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38809\\n			pqml				1999 - 		
4783	Pain Research & Management : The Journal of the Canadian Pain Society	http://proquest.umi.com/pqdlink?RQT=318&PMID=55046\\n			pqml				2006 - 		
4784	Palliative & Supportive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=79055\\n			pqml				2003 - 2007		
4785	Palliative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66694\\n			pqml				 - 		
4786	Pancreatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66452\\n			pqml				 - 		
4787	Parasitology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79054\\n			pqml				2003 - 		
4788	Pathobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10191\\n			pqml				1997 - 2002		
4789	Pathology, Research and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=48517\\n			pqml				2001 - 2005		
4790	Patient Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37182\\n			pqml				 - 		
4791	Pediatric Annals	http://proquest.umi.com/pqdlink?RQT=318&PMID=37016\\n			pqml				1998 - 		
4792	Pediatric Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79090\\n			pqml				 - 		
4793	Pediatric Neurosurgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66459\\n			pqml				 - 		
4794	Pediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36049\\n			pqml				1997 - 		
4795	Pediatric Radiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79093\\n			pqml				 - 		
4796	Pediatric Surgery International	http://proquest.umi.com/pqdlink?RQT=318&PMID=79095\\n			pqml				 - 		
4797	Pediatric and Developmental Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=70299\\n		180	pqml				2005 - 		
4798	Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=23202\\n			pqml				 - 		
4799	Pedobiologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=48523\\n			pqml				2002 - 2005		
4800	Perception and Psychophysics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67990\\n			pqml				2004 - 		
4801	Perfusion	http://proquest.umi.com/pqdlink?RQT=318&PMID=66561\\n			pqml				 - 		
4802	Perspectives in Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=26770\\n		365	pqml				2002 - 		
4803	Perspectives in Psychiatric Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36055\\n			pqml				1997 - 		
4804	Perspectives on Sexual and Reproductive Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=23177\\n			pqml				1994 - 		
4805	Pharmaceutical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55686\\n			pqml				1997 - 2004		
4806	Pharmacogenomics Journal, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68938\\n			pqml				 - 		
4807	Pharmacy World & Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55687\\n			pqml				 - 		
4808	Photochemistry and Photobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38649\\n			pqml				1998 - 		
4809	Physical Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=28675\\n			pqml				1996 - 		
4810	Physiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68410\\n			pqml				2005 - 		
4811	Phytomedicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=48518\\n			pqml				2001 - 2005		
4812	Pituitary	http://proquest.umi.com/pqdlink?RQT=318&PMID=55688\\n			pqml				 - 		
4813	Plant & Cell Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53230\\n			pqml				 - 		
4814	Plant Cell	http://proquest.umi.com/pqdlink?RQT=318&PMID=38578\\n			pqml				1998 - 		
4815	Plant Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38577\\n			pqml				1998 - 		
4816	Plastic Surgical Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36061\\n			pqml				1997 - 2003		
4817	Population Health Metrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68370\\n			pqml				2005 - 2005		
4818	Postgraduate Medical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38447\\n			pqml				1999 - 2003		
4819	Postgraduate Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=27088\\n			pqml				2000 - 2006		
4820	Poultry Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=57135\\n			pqml				2003 - 2008		
4821	Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=34622\\n			pqml				1998 - 		
4822	Prehospital Emergency Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=46165\\n			pqml				2001 - 		
4823	Prevention Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55689\\n			pqml				 - 		
4824	Primates	http://proquest.umi.com/pqdlink?RQT=318&PMID=65702\\n			pqml				 - 		
5306	Health Economics	http://search.proquest.com/publication/31187			pq2011						\N
5307	Health Education	http://search.proquest.com/publication/26045		365	pq2011						\N
4826	Proceedings of the Nutrition Society, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80043\\n		365	pqml				2006 - 		
4827	Progress in Histochemistry and Cytochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=48519\\n			pqml				2001 - 2004		
4828	Progress in Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=58342\\n			pqml				2003 - 		
4829	Promotion & Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=36193\\n			pqml				1998 - 		
4830	Prostate Cancer and Prostatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=68939\\n			pqml				 - 		
5308	The Health Education Journal	http://search.proquest.com/publication/105541			pq2011						\N
4832	Proteome Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=68371\\n			pqml				2005 - 2005		
4833	Protist	http://proquest.umi.com/pqdlink?RQT=318&PMID=48524\\n			pqml				2001 - 2004		
4834	Psychiatric Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=69715\\n			pqml				 - 		
4835	Psychiatric Rehabilitation Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36067\\n			pqml				1998 - 2006		
4836	Psychiatric Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=68775\\n			pqml				2005 - 		
4837	Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28651\\n			pqml				1994 - 		
4838	Psychoanalytic Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=37929\\n			pqml				1998 - 		
4839	Psychological Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66193\\n			pqml				2007 - 		
4840	Psychological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=65739\\n			pqml				 - 		
4841	Psychology and Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37367\\n			pqml				1998 - 2006		
4842	Psychonomic Bulletin & Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=67993\\n			pqml				2004 - 		
4843	Psychopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37875\\n			pqml				1998 - 2003		
4844	Psychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66968\\n			pqml				 - 		
4845	Psychopharmacology Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=23652\\n			pqml				1995 - 1998		
4846	Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37033\\n			pqml				1998 - 		
4847	Psychotherapy and Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37876\\n			pqml				1998 - 2003		
4848	Public Health Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=80032\\n		365	pqml				2006 - 		
4850	QJM	http://proquest.umi.com/pqdlink?RQT=318&PMID=53334\\n			pqml				 - 		
4851	Quality Letter for Healthcare Leaders	http://proquest.umi.com/pqdlink?RQT=318&PMID=50652\\n			pqml				2003 - 2004		
4852	Quality Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37662\\n			pqml				 - 		
4853	Quarterly Journal of Nuclear Medicine and Molecular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37345\\n			pqml				1998 - 		
4854	Quarterly Reviews of Biophysics	http://proquest.umi.com/pqdlink?RQT=318&PMID=79042\\n			pqml				 - 		
4855	Regional Anesthesia and Pain Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36489\\n			pqml				1998 - 		
4856	Rehabilitation Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38576\\n			pqml				1998 - 		
4857	Reproductive Biology and Endocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68372\\n			pqml				 - 		
4858	Research Quarterly for Exercise and Sport	http://proquest.umi.com/pqdlink?RQT=318&PMID=28631\\n			pqml				1994 - 		
4859	Research and Theory for Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=68393\\n			pqml				1987 - 		
4860	Respiration	http://proquest.umi.com/pqdlink?RQT=318&PMID=66463\\n			pqml				 - 		
4861	Respiratory Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68373\\n			pqml				 - 		
4862	Reviews in Endocrine & Metabolic Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=55690\\n			pqml				 - 		
4863	Reviews in Medical Virology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67594\\n			pqml				 - 		
4865	Rheumatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33532\\n			pqml				1996 - 2001		
4866	Royal Society of Medicine (Great Britain). Journal of the Royal Society of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45488\\n			pqml				2001 - 2006		
4867	Scandinavian Journal of Work, Environment & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=79589\\n			pqml				2007 - 		
4868	Schizophrenia Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=18315\\n			pqml				1998 - 2005		
4869	Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=28298\\n			pqml				1992 - 2005		
4870	Seminars in Immunopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66969\\n			pqml				 - 		
4871	Sexually Transmitted Infections	http://proquest.umi.com/pqdlink?RQT=318&PMID=28072\\n			pqml				1997 - 2003		
4872	Skin Pharmacology and Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66464\\n			pqml				 - 		
5338	Human Reproduction	http://search.proquest.com/publication/36115			pq2011						\N
4873	Social Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29279\\n			pqml				2000 - 2005		
4874	Social History of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=79194\\n			pqml				 - 		
4875	Social Psychiatry and Psychiatric Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69718\\n			pqml				 - 		
4876	Social Security Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=28000\\n			pqml				1992 - 		
4877	Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=27868\\n			pqml				1995 - 		
4878	South Carolina Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=41650\\n			pqml				2003 - 		
4879	Southeast Asian Journal of Tropical Medicine and Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68709\\n			pqml				2005 - 2006		
4880	Spinal Cord	http://proquest.umi.com/pqdlink?RQT=318&PMID=68940\\n			pqml				 - 		
4881	Statistical Methods in Medical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66693\\n			pqml				 - 		
4882	Stroke	http://proquest.umi.com/pqdlink?RQT=318&PMID=23419\\n			pqml				 - 		
4883	Suicide & Life - Threatening Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19183\\n			pqml				1994 - 		
4884	Surgical Endoscopy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66970\\n			pqml				 - 		
4885	Systematic Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36209\\n			pqml				1998 - 2007		
4886	Systematic and Applied Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48525\\n			pqml				2001 - 2005		
4887	Techniques in Coloproctology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65738\\n			pqml				 - 		
4888	Thorax	http://proquest.umi.com/pqdlink?RQT=318&PMID=28091\\n			pqml				1997 - 2003		
4889	Thrombosis Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68374\\n			pqml				2005 - 2005		
4890	Tissue Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=66678\\n			pqml				 - 		
4891	Tobacco Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=58254\\n			pqml				2003 - 2003		
4892	Topics in Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36481\\n			pqml				 - 		
4893	Topics in Health Information Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37282\\n			pqml				 - 		
4894	Toxicology and Industrial Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=66727\\n			pqml				 - 		
4895	Transplant International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66971\\n			pqml				 - 		
4896	Tropical Animal Health and Production	http://proquest.umi.com/pqdlink?RQT=318&PMID=55692\\n			pqml				 - 		
4897	Trustee	http://proquest.umi.com/pqdlink?RQT=318&PMID=22495\\n			pqml				1991 - 		
4898	Tumor Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66449\\n			pqml				 - 		
4899	Turkish Journal of Pediatrics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70488\\n			pqml				2006 - 		
4900	Undersea & Hyperbaric Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37285\\n			pqml				1998 - 		
4901	Urologic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37457\\n			pqml				1998 - 		
4902	Vascular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66731\\n			pqml				 - 		
4903	Vascular and Endovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38339\\n			pqml				1998 - 2005		
4904	Veterinary Research Communications	http://proquest.umi.com/pqdlink?RQT=318&PMID=55693\\n			pqml				 - 		
4905	Violence and Victims	http://proquest.umi.com/pqdlink?RQT=318&PMID=68394\\n			pqml				1986 - 		
4906	Viral Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=77294\\n			pqml				 - 		
4907	Virus Genes	http://proquest.umi.com/pqdlink?RQT=318&PMID=55694\\n			pqml				1999 - 2003		
4908	Visual Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=78999\\n		365	pqml				2003 - 		
4909	Weekly Epidemiological Record	http://proquest.umi.com/pqdlink?RQT=318&PMID=38549\\n			pqml				1998 - 2006		
4910	Western Journal of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36053\\n			pqml				1998 - 2002		
4911	Wilderness & Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68238\\n			pqml				2005 - 2006		
4912	World Health Organization. Bulletin of the World Health Organization	http://proquest.umi.com/pqdlink?RQT=318&PMID=15654\\n			pqml				1997 - 		
4913	World Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66972\\n			pqml				 - 		
4914	World Journal of Surgical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68375\\n			pqml				2005 - 2005		
4915	World Journal of Urology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66973\\n			pqml				 - 		
4916	Year in Allergy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70389\\n			pqml				2006 - 2006		
4917	Year in Anesthesia and Critical Care, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70388\\n			pqml				2005 - 2005		
4918	Year in Diabetes, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70390\\n			pqml				2004 - 2004		
4919	Year in Dyslipidaemia, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70391\\n			pqml				2004 - 2004		
4920	Year in Gastroenterology and Hepatology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70405\\n			pqml				2005 - 2005		
4921	Year in Gynaecology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70392\\n			pqml				2003 - 2003		
4922	Year in Heart Failure, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70393\\n			pqml				2005 - 2005		
4923	Year in Hypertension, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70394\\n			pqml				2005 - 2005		
4924	Year in Interventional Cardiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70396\\n			pqml				2005 - 2005		
4925	Year in Neurology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70397\\n			pqml				2004 - 2004		
4926	Year in Osteoporosis, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70398\\n			pqml				2006 - 2006		
4927	Year in Post - Menopausal Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70399\\n			pqml				2004 - 2004		
4928	Year in Radiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70406\\n			pqml				2005 - 2005		
4929	Year in Renal Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70400\\n			pqml				2005 - 2005		
4930	Year in Respiratory Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70401\\n			pqml				2005 - 2005		
4931	Year in Therapeutics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70403\\n			pqml				2005 - 2005		
4932	Zygote	http://proquest.umi.com/pqdlink?RQT=318&PMID=78991\\n			pqml				2007 - 		
4970	Archives of Pediatrics & Adolescent Medicine 	http://archpedi.ama-assn.org/			althaia						
2584	American Journal of Human Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67473\r\n\n			pqhmc				 - 		
2585	American Journal of Law and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=18339\r\n\n			pqhmc				1998 - 		
2586	American Journal of Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27519\r\n\n			pqhmc				 - 		
4199	Canadian Medical Association Journal (CMAJ)	http://proquest.umi.com/pqdlink?RQT=318&PMID=33824			pqml				1997 - 		
4444	International Journal of Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=37435			pqml				1998 - 2001		
4483	Journal of Bone & Joint Surgery, British Volume	http://proquest.umi.com/pqdlink?RQT=318&PMID=28785			pqml				1997 - 		
4629	Journal of the Association for Research in Otolaryngology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66965			pqml						
4637	Journals of Gerontology, The: Series B	http://proquest.umi.com/pqdlink?RQT=318&PMID=9698			pqml				1995 -		
2587	American Journal of Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10268\r\n\n		365	pqhmc				1997 - 2003		
2588	American Journal of Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28566\r\n\n			pqhmc				 - 		
2589	American Journal of Occupational Therapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=77693\r\n\n			pqhmc				2006 - 		
2590	American Journal of Pathology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21318\r\n\n			pqhmc				1997 - 1997		
4755	Nursing Management (Chicago)	http://proquest.umi.com/pqdlink?RQT=318&PMID=23247			pqml				1993 - 2004		
4772	Oncology (Basel)	http://proquest.umi.com/pqdlink?RQT=318&PMID=66442			pqml						
4825	Proceedings of the Institution of Mechanical Engineers: Part H, Journal of Engineering in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=79155			pqml				2007 -		
4849	Public Health Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=28013			pqml				1994 - 1999		
11	Antimicrobial Agents and Chemotherapy	http://intl-aac.asm.org/			fbjl				1972 -		
4	American Journal of Physiology - Cell Physiology	http://intl-ajpcell.physiology.org/		365	fbjl				Octubre 1997 -		
4979	Journal of Microbiology, The	http://www.springerlink.com/content/120956/?p=81d7dfff8f5d492692e592636d33b2fb&pi=0			althaia						
4987	Journal of Clinical Psychology	http://www3.interscience.wiley.com/journal/31171/home			althaia						
2602	American Medical News	http://proquest.umi.com/pqdlink?RQT=318&PMID=28267\r\n\n			pqhmc				 - 		
2551	Age and Ageing	http://proquest.umi.com/pqdlink?RQT=318&PMID=15291\r\n\n		365	pqhmc				1997 - 2000		
2564	Ambio	http://proquest.umi.com/pqdlink?RQT=318&PMID=68214\r\n\n		180	pqhmc				 2005 -		
2591	American Journal of Pharmaceutical Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=36531\r\n\n			pqhmc				1998 - 		
2592	American Journal of Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28648\r\n\n			pqhmc				1994 - 		
4998	American Journal of Psychiatry	http://ajp.psychiatryonline.org/current.dtl			althaia						
2593	American Journal of Psychoanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=27115\r\n\n		365	pqhmc				1996 - 2004		
2594	American Journal of Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29197\r\n\n			pqhmc				1995 - 2001		
2595	American Journal of Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=12495\r\n\n			pqhmc				1994 - 		
6	American Journal of Physiology - Gastrointestinal and Liver Physiology	http://intl-ajpgi.physiology.org/		365	fbjl				Octubre 1997 -		
1432	BMC Clinical Pathology	http://www.biomedcentral.com/bmcclinpathol/			fbjl				2001 -		
1437	BMC Ear, Nose and Throat Disorders	http://www.biomedcentral.com/bmcearnosethroatdisord/			fbjl				2001 -		
1441	BMC Evolutionary Biology	http://www.biomedcentral.com/bmcevolbiol/			fbjl				2001 -		
1446	BMC Geriatrics	http://www.biomedcentral.com/bmcgeriatr/			fbjl				2001 -		
1461	BMC Nephrology	http://www.biomedcentral.com/bmcnephrol/			fbjl				2000 -		
1467	BMC Oral Health	http://www.biomedcentral.com/bmcoralhealth/			fbjl				2001 -		
1476	BMC Pulmonary Medicine	http://www.biomedcentral.com/bmcpulmmed/			fbjl				2001 -		
1470	BMC Pharmacology	http://www.biomedcentral.com/bmcpharmacol/			fbjl				2001 -		
2596	American Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=8\r\n\n			pqhmc				1995 - 		
2316	Nature	http://www.nature.com/nature/journal/v442/n7104/index.html			presen				1997 -		
2347	Science	http://www.sciencemag.org			presen				1997 -		
2356	Thorax 	http://thorax.bmjjournals.com/			presen				1946 --		
1519	Nutrition Journal	http://www.nutritionj.com/home/			fbjl				2002 -		
2473	Radiology	http://radiology.rsnajnls.org/			vicft		hospitalvic	vic			
5004	Calidad Asistencial	http://www.elsevierinstituciones.com/doymaselect/ctl_servlet?_f=20001			diba		acceso@diba.com	diba			
5006	Gaceta Sanitaria	http://www.elsevierinstituciones.com/doymaselect/ctl_servlet?_f=20001			diba		acceso@diba.com	diba			
5010	Radiology	http://radiology.rsnajnls.org/			althaia						
2597	American Journal of Respiratory Cell and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=12432\r\n\n			pqhmc				1997 - 		
5281	Foods Matter	http://search.proquest.com/publication/39578			pq2011						\N
2501	ACP Journal Club	http://www.acpjc.org			presen				2000 -		
1311	Annals of Emergency Medicine	http://www.sciencedirect.com/science/journal/01960644 			presen				1995 -		
4959	Journal of the Medical Library Association 	http://www.pubmedcentral.nih.gov/tocrender.fcgi?issn=1536-5050			fbjl				1898 -		
2598	American Journal of Respiratory and Critical Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54254\r\n\n			pqhmc				2003 - 		
2689	Australian Health Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=67917\r\n\n			pqhmc				2004 - 		
1518	Nuclear Receptor	http://www.nuclear-receptor.com/content/			fbjl				2003 - 2007		
2223	Anesthesiology	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00000542-000000000-00000			presen		santpau	cataluna	1995 -		
2742	BMC Pregnancy and Childbirth	http://proquest.umi.com/pqdlink?RQT=318&PMID=68320\r\n\n			pqhmc				2005 - 		
2511	AANA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=66992\r\n\n			pqhmc				2004 - 		
2512	AAOHN Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=39312\r\n\n			pqhmc				1999 - 		
2513	ABNF Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38579\r\n\n			pqhmc				1999 - 		
2514	ACP Journal Club	http://proquest.umi.com/pqdlink?RQT=318&PMID=52709\r\n\n			pqhmc				2002 - 2006		
2515	AHA News	http://proquest.umi.com/pqdlink?RQT=318&PMID=67111\r\n\n			pqhmc				2004 - 2006		
2516	AIDS & Public Policy Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=10273\r\n\n			pqhmc				 - 		
2517	AIDS Alert	http://proquest.umi.com/pqdlink?RQT=318&PMID=11517\r\n\n			pqhmc				 - 		
2518	AIDS Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=9953\r\n\n			pqhmc				1997 - 2000		
2519	AIDS Education and Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=37943\r\n\n			pqhmc				1998 - 		
2520	AIDS Patient Care & STDs	http://proquest.umi.com/pqdlink?RQT=318&PMID=11518\r\n\n			pqhmc				 - 		
2521	AIDS Reader, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=78663\r\n\n			pqhmc				2007 - 		
2522	AIDS Therapies and Vaccines	http://proquest.umi.com/pqdlink?RQT=318&PMID=52337\r\n\n			pqhmc				2003 - 		
2523	AIDS Vaccine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56198\r\n\n			pqhmc				2003 - 		
2524	AIDS Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51278\r\n\n			pqhmc				1995 - 		
2525	AIDS and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=55624\r\n\n		365	pqhmc				 - 		
2526	AIHA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=20167\r\n\n			pqhmc				1993 - 2003		
2534	Acta Diabetologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=65753\r\n\n		365	pqhmc				2002 - 2003		
1404	Blood	http://www.bloodjournal.org/			presen				1946 -		
1326	Clinical Pharmacology and Therapeutics	http://www.nature.com/clpt/index.html			presen				1980 -		
2307	Lancet Infectious Diseases, The	http://www.sciencedirect.com/science/journal/14733099			presen				2001 -		
2536	Acta Neuropathologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=66934\r\n\n		365	pqhmc				 - 		
2538	Acta Psychiatrica Scandinavica	http://proquest.umi.com/pqdlink?RQT=318&PMID=67103\r\n\n			pqhmc				 - 		
2600	American Journal of Speech - Language Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36485\r\n\n			pqhmc				1998 - 		
2601	American Journal of Sports Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14418\r\n\n			pqhmc				 - 		
2603	American Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=38445\r\n\n			pqhmc				1998 - 		
2604	American Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=18305\r\n\n			pqhmc				1995 - 2004		
2605	American Surgeon, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35779\r\n\n			pqhmc				1997 - 		
2606	Amyloid	http://proquest.umi.com/pqdlink?RQT=318&PMID=56225\r\n\n			pqhmc				2003 - 2007		
2607	Anaesthesia	http://proquest.umi.com/pqdlink?RQT=318&PMID=67109\r\n\n			pqhmc				 - 		
2608	Anaesthesia and Intensive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37181\r\n\n		365	pqhmc				1998 -		
2609	Anatomical Science International	http://proquest.umi.com/pqdlink?RQT=318&PMID=67201\r\n\n			pqhmc				 - 		
2610	Anatomischer Anzeiger	http://proquest.umi.com/pqdlink?RQT=318&PMID=48509\r\n\n			pqhmc				2002 - 2004		
2611	Anesthesia Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=68216\r\n\n		180	pqhmc				2004 - 2006		
2612	Angiogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55625\r\n\n		365	pqhmc				 - 		
2613	Angiogenesis Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51257\r\n\n			pqhmc				1998 - 		
2614	Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36630\r\n\n			pqhmc				1998 - 2005		
2615	Animal Health Research Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=78996\r\n\n		365	pqhmc				2007 - 		
2616	Animal: an International Journal of Animal Bioscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=78995\r\n\n		365	pqhmc				 - 		
2617	Annals of Allergy, Asthma, and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27067\r\n\n			pqhmc				 - 		
2618	Annals of Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66274\r\n\n			pqhmc				 - 		
2619	Annals of Botany	http://proquest.umi.com/pqdlink?RQT=318&PMID=53203\r\n\n		365	pqhmc				 - 		
2621	Annals of Clinical Microbiology and Antimicrobials	http://proquest.umi.com/pqdlink?RQT=318&PMID=68260\r\n\n			pqhmc				2005 - 		
2622	Annals of Clinical Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=55626\r\n\n			pqhmc				 - 		
2623	Annals of Dyslexia	http://proquest.umi.com/pqdlink?RQT=318&PMID=17628\r\n\n			pqhmc				1998 - 		
2624	Annals of General Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68263\r\n\n			pqhmc				 - 		
2625	Annals of Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=51939\r\n\n			pqhmc				2002 - 2006		
2626	Annals of Nutrition & Metabolism	http://proquest.umi.com/pqdlink?RQT=318&PMID=45286\r\n\n		365	pqhmc				2001 - 2003		
2627	Annals of Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=72790\r\n\n			pqhmc				 - 		
2628	Annals of Otology, Rhinology & Laryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26397\r\n\n			pqhmc				1997 - 		
2629	Annals of Surgical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69699\r\n\n		365	pqhmc						
2630	Annals of Tropical Paediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38656\r\n\n			pqhmc				1997 - 2000		
2631	Annals of Vascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37001\r\n\n		365	pqhmc				1998 - 2001		
1354	Journal of Nuclear Medicine	http://jnm.snmjournals.org/			presen				1964 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
2632	Annals of the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=28112\r\n\n			pqhmc				1997 - 2003		
2633	Annual Review of Biochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37421\r\n\n			pqhmc				1998 - 2005		
2634	Annual Review of Biophysics and Biomolecular Structure	http://proquest.umi.com/pqdlink?RQT=318&PMID=37669\r\n\n			pqhmc				1998 - 2005		
2635	Annual Review of Cell and Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37363\r\n\n			pqhmc				1997 - 2005		
2636	Annual Review of Entomology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37670\r\n\n			pqhmc				1998 - 2005		
2637	Annual Review of Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=22339\r\n\n			pqhmc				1999 - 2005		
2638	Annual Review of Gerontology & Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68261\r\n\n			pqhmc				2004 - 		
2639	Annual Review of Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17128\r\n\n			pqhmc				1997 - 2005		
2640	Annual Review of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37671\r\n\n			pqhmc				1998 - 2005		
2641	Annual Review of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24718\r\n\n			pqhmc				1997 - 2004		
2642	Annual Review of Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=18603\r\n\n			pqhmc				1997 - 2005		
2643	Annual Review of Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68348\r\n\n			pqhmc				2005 - 		
2644	Annual Review of Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=17150\r\n\n			pqhmc				1997 - 2005		
2645	Annual Review of Pharmacology and Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24717\r\n\n			pqhmc				1997 - 2005		
2646	Annual Review of Physical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=38647\r\n\n			pqhmc				1998 - 2005		
2647	Annual Review of Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37672\r\n\n			pqhmc				1998 - 2005		
2648	Annual Review of Phytopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37376\r\n\n			pqhmc				1998 - 2005		
2649	Annual Review of Plant Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37379\r\n\n			pqhmc				1998 - 2005		
2650	Annual Review of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=24716\r\n\n			pqhmc				1994 - 2005		
2651	Annual Review of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=17732\r\n\n			pqhmc				1997 - 2005		
2652	Annual Review of Sex Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=37741\r\n\n			pqhmc				1997 - 		
2653	Annual of Psychoanalysis, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67281\r\n\n			pqhmc				2003 - 2004		
2654	Anti - Infectives Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56199\r\n\n			pqhmc				2003 - 		
2655	Applied Clinical Trials	http://proquest.umi.com/pqdlink?RQT=318&PMID=75488\r\n\n			pqhmc				2006 - 		
2656	Applied Psycholinguistics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66182\r\n\n		365	pqhmc				2004 - 		
2657	Applied Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66822\r\n\n			pqhmc				 - 		
2658	Applied Psychophysiology and Biofeedback	http://proquest.umi.com/pqdlink?RQT=318&PMID=69700\r\n\n		365	pqhmc				 - 		
2659	Applied Radiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66993\r\n\n			pqhmc				2004 - 		
2660	Archives of Dermatological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66936\r\n\n		365	pqhmc				 - 		
2661	Archives of Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29255\r\n\n			pqhmc				 - 		
2662	Archives of Disease in Childhood	http://proquest.umi.com/pqdlink?RQT=318&PMID=28110\r\n\n			pqhmc				1997 - 2003		
2663	Archives of Disease in Childhood. Fetal and Neonatal Edition	http://proquest.umi.com/pqdlink?RQT=318&PMID=45484\r\n\n			pqhmc				 - 		
2664	Archives of Environmental & Occupational Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=24517\r\n\n			pqhmc				1997 - 		
2665	Archives of Facial Plastic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=43783\r\n\n			pqhmc				 - 		
2666	Archives of Family Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=10076\r\n\n			pqhmc				 - 		
2667	Archives of General Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28243\r\n\n			pqhmc				 - 		
2668	Archives of Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=29256\r\n\n			pqhmc				 - 		
2669	Archives of Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28242\r\n\n			pqhmc				 - 		
2670	Archives of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29241\r\n\n			pqhmc				 - 		
2671	Archives of Otolaryngology - Head & Neck Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=29242\r\n\n			pqhmc				 - 		
2672	Archives of Pathology & Laboratory Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30163\r\n\n			pqhmc				1997 - 		
2673	Archives of Pediatrics & Adolescent Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=28920\r\n\n			pqhmc				 - 		
2674	Archives of Sexual Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19481\r\n\n		365	pqhmc				1995 - 2004		
2675	Archives of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=29244\r\n\n			pqhmc				 - 		
2676	Archives of Virology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66937\r\n\n		365	pqhmc				 - 		
2677	Ardell Wellness Report, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=71693\r\n\n			pqhmc				2005 - 2005		
2678	Arteriosclerosis, Thrombosis and Vascular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17151\r\n\n			pqhmc				 - 		
2679	Arthritis Research & Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68264\r\n\n			pqhmc				 - 		
2680	Arthritis Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=11493\r\n\n			pqhmc				 - 		
2681	Asia Pacific Journal of Clinical Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=73236\r\n\n			pqhmc				 - 		
2682	Association of Operating Room Nurses. AORN Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35897\r\n\n			pqhmc				1998 - 2006		
2683	Audiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33512\r\n\n			pqhmc				1997 - 2001		
2684	Audiology & Neurotology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66443\r\n\n		365	pqhmc				 - 		
2685	Australasian Physical & Engineering Sciences in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=73199\r\n\n			pqhmc				 - 		
2686	Australian Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=73205\r\n\n			pqhmc				 - 		
2687	Australian Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=73209\r\n\n			pqhmc				 - 		
2688	Australian Family Physician	http://proquest.umi.com/pqdlink?RQT=318&PMID=73252\r\n\n			pqhmc				 - 		
2690	Australian Journal of Advanced Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=59499\r\n\n			pqhmc				2003 - 2007		
2691	Australian Journal of Advanced Nursing (Online)	http://proquest.umi.com/pqdlink?RQT=318&PMID=80795\r\n\n			pqhmc				2007 - 		
2692	Australian Journal of Forensic Science, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=73203\r\n\n			pqhmc				 - 		
2693	Australian Journal of Oto - Laryngology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38208\r\n\n			pqhmc				1998 - 2005		
2695	Australian Military Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=73217\r\n\n			pqhmc				 - 		
2697	Australian and New Zealand Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=16273\r\n\n			pqhmc				1997 - 2001		
2699	BMC Anesthesiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68268\r\n\n			pqhmc				2005 - 2005		
2700	BMC Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68270\r\n\n			pqhmc				 - 		
2701	BMC Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68271\r\n\n			pqhmc				2005 - 2005		
2702	BMC Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68272\r\n\n			pqhmc				 - 		
2703	BMC Blood Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68273\r\n\n			pqhmc				2005 - 2005		
2704	BMC Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68274\r\n\n			pqhmc				 - 		
2705	BMC Cardiovascular Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68275\r\n\n			pqhmc				 - 		
2706	BMC Chemical Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68277\r\n\n			pqhmc				2005 - 2005		
2707	BMC Clinical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68278\r\n\n			pqhmc				2005 - 2005		
2708	BMC Complementary and Alternative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68280\r\n\n			pqhmc				 - 		
2709	BMC Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68281\r\n\n			pqhmc				 - 		
2710	BMC Developmental Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68282\r\n\n			pqhmc				 - 		
2711	BMC Ear, Nose and Throat Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68283\r\n\n			pqhmc				2005 - 2005		
2712	BMC Ecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68284\r\n\n			pqhmc				 - 		
2713	BMC Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68285\r\n\n			pqhmc				2005 - 2005		
2714	BMC Endocrine Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68286\r\n\n			pqhmc				2005 - 2005		
2715	BMC Family Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=68288\r\n\n			pqhmc				 - 		
2716	BMC Gastroenterology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68289\r\n\n			pqhmc				 - 		
2717	BMC Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68290\r\n\n			pqhmc				 - 		
2718	BMC Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68291\r\n\n			pqhmc				 - 		
2719	BMC Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68292\r\n\n			pqhmc				2005 - 2005		
2720	BMC Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68293\r\n\n			pqhmc				 - 		
2721	BMC Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68294\r\n\n			pqhmc				 - 		
2722	BMC Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=68295\r\n\n			pqhmc				 - 		
2723	BMC International Health and Human Rights	http://proquest.umi.com/pqdlink?RQT=318&PMID=68296\r\n\n			pqhmc				2005 - 2005		
2724	BMC Medical Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=68297\r\n\n			pqhmc				 - 		
2725	BMC Medical Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68299\r\n\n			pqhmc				 - 		
2726	BMC Medical Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68300\r\n\n			pqhmc				 - 		
2727	BMC Medical Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=68301\r\n\n			pqhmc				2005 - 2005		
2728	BMC Medical Informatics and Decision Making	http://proquest.umi.com/pqdlink?RQT=318&PMID=68302\r\n\n			pqhmc				 - 		
2729	BMC Medical Research Methodology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68303\r\n\n			pqhmc				 - 		
2730	BMC Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68304\r\n\n			pqhmc				 - 		
2731	BMC Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68305\r\n\n			pqhmc				 - 		
2732	BMC Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68306\r\n\n			pqhmc				 - 		
2733	BMC Musculoskeletal Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=68307\r\n\n			pqhmc				 - 		
2734	BMC Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68308\r\n\n			pqhmc				 - 		
2735	BMC Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68309\r\n\n			pqhmc				 - 		
2736	BMC Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68310\r\n\n			pqhmc				 - 		
2737	BMC Nuclear Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68311\r\n\n			pqhmc				2005 - 2005		
2738	BMC Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=68312\r\n\n			pqhmc				2005 - 2005		
2739	BMC Oral Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68314\r\n\n			pqhmc				2005 - 2005		
2740	BMC Palliative Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=68315\r\n\n			pqhmc				2005 - 2005		
2745	BMC Pulmonary Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68323\r\n\n			pqhmc				2005 - 		
2746	BMC Structural Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68324\r\n\n			pqhmc				 - 		
2747	BMC Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=68325\r\n\n			pqhmc				 - 		
2748	BMC Urology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68326\r\n\n			pqhmc				 - 		
2749	Basic Research in Cardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66938\r\n\n			pqhmc				 - 		
2750	Behavior Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=69701\r\n\n			pqhmc				 - 		
2751	Behavioral Health Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=13860\r\n\n			pqhmc				1994 - 2005		
2752	Behavioral Healthcare	http://proquest.umi.com/pqdlink?RQT=318&PMID=71998\r\n\n			pqhmc				2006 - 		
2753	Behavioral Interventions	http://proquest.umi.com/pqdlink?RQT=318&PMID=66214\r\n\n			pqhmc				 - 		
2754	Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36031\r\n\n			pqhmc				1997 - 		
2755	Behavioral and Brain Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=17437\r\n\n			pqhmc				 - 		
2756	Better Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=12368\r\n\n			pqhmc				1994 - 		
2757	BioSocieties	http://proquest.umi.com/pqdlink?RQT=318&PMID=80023\r\n\n		365	pqhmc				 - 2007		
2758	Biochemistry and Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36120\r\n\n			pqhmc				1998 - 2007		
2759	Bioethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67118\r\n\n			pqhmc				 - 		
2760	Biofeedback	http://proquest.umi.com/pqdlink?RQT=318&PMID=70297\r\n\n			pqhmc				2005 - 2006		
2761	Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53218\r\n\n			pqhmc				 - 		
2762	Biological Bulletin, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21371\r\n\n			pqhmc				1994 - 		
2763	Biological Therapies in Dentistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=44284\r\n\n			pqhmc				2001 - 2001		
2764	Biomagnetic Research and Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68265\r\n\n			pqhmc				 - 		
2765	Biomedical Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=55627\r\n\n			pqhmc				 - 		
2766	Biomedical Engineering Online	http://proquest.umi.com/pqdlink?RQT=318&PMID=68267\r\n\n			pqhmc				 - 		
2767	Biomedical Instrumentation & Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68217\r\n\n		180	pqhmc				 - 2005		
2768	Biomedical Microdevices	http://proquest.umi.com/pqdlink?RQT=318&PMID=55628\r\n\n			pqhmc				 - 		
2769	Biomedical Safety & Standards	http://proquest.umi.com/pqdlink?RQT=318&PMID=13019\r\n\n			pqhmc				 - 		
2770	Biometrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37041\r\n\n			pqhmc				1998 - 2002		
2771	Biophysical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36123\r\n\n			pqhmc				1999 - 		
2772	Biostatistics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53239\r\n\n			pqhmc				 - 		
2773	Biotech Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56200\r\n\n			pqhmc				2003 - 		
2774	Biotech Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51258\r\n\n			pqhmc				1998 - 		
2775	Bioterrorism Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51270\r\n\n			pqhmc				2001 - 		
2776	Blood Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36039\r\n\n			pqhmc				1995 - 		
2777	Body Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=36040\r\n\n			pqhmc				1998 - 1999		
2778	Bone Marrow Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68896\r\n\n			pqhmc				 - 		
2779	Brain	http://proquest.umi.com/pqdlink?RQT=318&PMID=33531\r\n\n			pqhmc				1996 - 2001		
2780	Brain Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55673\r\n\n			pqhmc				1999 - 2004		
2781	Brain Structure and Function	http://proquest.umi.com/pqdlink?RQT=318&PMID=66935\r\n\n			pqhmc				 - 		
2782	Brain Topography	http://proquest.umi.com/pqdlink?RQT=318&PMID=55630\r\n\n			pqhmc				1999 - 2004		
2783	Brain, Behavior and Evolution	http://proquest.umi.com/pqdlink?RQT=318&PMID=37870\r\n\n			pqhmc				1998 - 2003		
2784	Breast Cancer Online	http://proquest.umi.com/pqdlink?RQT=318&PMID=79008\r\n\n		365	pqhmc				 - 2004		
2785	Breast Cancer Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68328\r\n\n			pqhmc				 - 		
2786	Breast Cancer Research and Treatment	http://proquest.umi.com/pqdlink?RQT=318&PMID=55631\r\n\n			pqhmc				1999 - 2004		
2787	Breastfeeding Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=73246\r\n\n			pqhmc				 - 		
2788	Brief Treatment and Crisis Intervention	http://proquest.umi.com/pqdlink?RQT=318&PMID=59679\r\n\n			pqhmc				 - 		
2789	Briefings in Bioinformatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=49211\r\n\n			pqhmc				2001 - 2006		
2790	Briefings in Functional Genomics & Proteomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=50146\r\n\n			pqhmc				2002 - 2006		
2791	British Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68897\r\n\n			pqhmc				 - 		
2792	British Journal of Anaesthesia	http://proquest.umi.com/pqdlink?RQT=318&PMID=28118\r\n\n		365	pqhmc				 - 		
2793	British Journal of Biomedical Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=37186\r\n\n			pqhmc				1998 - 		
2794	British Journal of Cancer, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68942\r\n\n			pqhmc				 - 		
2795	British Journal of Clinical Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37365\r\n\n			pqhmc				1998 - 2006		
2796	British Journal of Forensic Practice, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=59282\r\n\n			pqhmc				2003 - 		
2797	British Journal of Guidance & Counselling	http://proquest.umi.com/pqdlink?RQT=318&PMID=34449\r\n\n			pqhmc				1997 - 2000		
2798	British Journal of Health Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38749\r\n\n			pqhmc				1998 - 2006		
2799	British Journal of Healthcare Computing & Information Management, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=67962\r\n\n			pqhmc				2005 - 2006		
2800	British Journal of Neurosurgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=34451\r\n\n			pqhmc				1997 - 2000		
2801	British Journal of Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=79991\r\n\n		365	pqhmc				 - 2006		
2802	British Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28109\r\n\n			pqhmc				1997 - 2003		
2803	British Journal of Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68898\r\n\n			pqhmc				 - 		
2804	British Journal of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=15882\r\n\n			pqhmc				1995 - 2006		
2805	British Journal of Social Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37369\r\n\n			pqhmc				1998 - 2006		
2806	British Journal of Sports Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45585\r\n\n			pqhmc				2001 - 2003		
2807	British Medical Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=53193\r\n\n			pqhmc				 - 		
2809	Buffalo Public Interest Law Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=10276\r\n\n			pqhmc				 - 		
2810	Bulletin of Experimental Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=55632\r\n\n			pqhmc				 - 		
2811	Bulletin of the History of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=54135\r\n\n		365	pqhmc				 - 		
2812	Bulletin of the Menninger Clinic	http://proquest.umi.com/pqdlink?RQT=318&PMID=37966\r\n\n			pqhmc				1998 - 		
2813	Bulletin on the Rheumatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=37288\r\n\n			pqhmc				1998 - 2004		
2814	Business and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=15338\r\n\n			pqhmc				 - 		
2815	CANNT Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=69016\r\n\n			pqhmc				2004 - 		
2816	CJEM : Journal of the Canadian Association of Emergency Physicians	http://proquest.umi.com/pqdlink?RQT=318&PMID=43698\r\n\n			pqhmc				2001 - 		
2817	Ca : a Cancer Journal for Clinicians	http://proquest.umi.com/pqdlink?RQT=318&PMID=22723\r\n\n			pqhmc				 - 		
2880	Circulation	http://proquest.umi.com/pqdlink?RQT=318&PMID=27249\r\n\n			pqhmc				 - 		
2818	Calcified Tissue International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66939\r\n\n			pqhmc				 - 		
2820	Canadian Association of Radiologists Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=47209\r\n\n			pqhmc				1998 - 		
2821	Canadian Journal of Dietetic Practice and Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=38819\r\n\n			pqhmc				1998 - 		
2822	Canadian Journal of Experimental Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=20379\r\n\n			pqhmc				1993 - 		
2823	Canadian Journal of Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36143\r\n\n			pqhmc				1998 - 2007		
2824	Canadian Journal of Occupational Therapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=40569\r\n\n			pqhmc				2000 - 		
2825	Canadian Journal of Physiology and Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37382\r\n\n			pqhmc				1998 - 2007		
2826	Canadian Journal of Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=55050\r\n\n			pqhmc				2004 - 		
2827	Canadian Journal of Psychoanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55051\r\n\n			pqhmc				1994 - 		
2828	Canadian Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=37869\r\n\n			pqhmc				1998 - 		
2829	Canadian Journal of Respiratory Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55055\r\n\n			pqhmc				2006 - 		
2830	Canadian Journal of Rural Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=39285\r\n\n			pqhmc				1998 - 2006		
2831	Canadian Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=33539\r\n\n			pqhmc				1997 - 		
2833	Canadian Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55078\r\n\n			pqhmc				1999 - 		
2834	Canadian Operating Room Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=65709\r\n\n			pqhmc				2003 - 		
2835	Cancer Biotherapy & Radiopharmaceuticals	http://proquest.umi.com/pqdlink?RQT=318&PMID=66581\r\n\n			pqhmc				 - 		
2836	Cancer Causes & Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=55633\r\n\n			pqhmc				1999 - 2004		
2837	Cancer Cell International	http://proquest.umi.com/pqdlink?RQT=318&PMID=68329\r\n\n			pqhmc				2005 - 2005		
2838	Cancer Chemotherapy and Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66940\r\n\n			pqhmc				 - 		
2839	Cancer Gene Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68899\r\n\n			pqhmc				 - 		
2840	Cancer Gene Therapy Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56202\r\n\n			pqhmc				2003 - 		
2841	Cancer Immunology, Immunotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66941\r\n\n			pqhmc				 - 		
2842	Cancer News	http://proquest.umi.com/pqdlink?RQT=318&PMID=11453\r\n\n			pqhmc				 - 		
2843	Cancer Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=66296\r\n\n			pqhmc				 - 		
2844	Cancer Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=77192\r\n\n			pqhmc				2006 - 		
2845	Cancer Vaccine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56203\r\n\n			pqhmc				2003 - 		
2846	Cancer and Metastasis Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55164\r\n\n			pqhmc				1997 - 2004		
2847	Cancerweekly Plus	http://proquest.umi.com/pqdlink?RQT=318&PMID=36044\r\n\n			pqhmc				1995 - 		
2848	Carcinogenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37370\r\n\n			pqhmc				1998 - 2001		
2849	Cardiac Electrophysiology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=55634\r\n\n			pqhmc				 - 		
2850	Cardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66455\r\n\n			pqhmc				 - 		
2851	Cardiology Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=80701\r\n\n			pqhmc				2008 - 		
2852	Cardiology in the Young	http://proquest.umi.com/pqdlink?RQT=318&PMID=79994\r\n\n			pqhmc				 - 		
2853	Cardiovascular Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67441\r\n\n			pqhmc				2005 - 		
2854	Cardiovascular Diabetology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68330\r\n\n			pqhmc				2005 - 2005		
2855	Cardiovascular Drugs and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55635\r\n\n			pqhmc				1999 - 2004		
2856	Cardiovascular Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=55636\r\n\n			pqhmc				 - 		
2857	Cardiovascular Ultrasound	http://proquest.umi.com/pqdlink?RQT=318&PMID=68333\r\n\n			pqhmc				2005 - 		
2858	Cardiovascular Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56201\r\n\n			pqhmc				2003 - 		
2859	Care Management Journals	http://proquest.umi.com/pqdlink?RQT=318&PMID=68351\r\n\n			pqhmc				1999 - 		
2860	Caries Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=26453\r\n\n			pqhmc				1997 - 2003		
2861	Cell & Chromosome	http://proquest.umi.com/pqdlink?RQT=318&PMID=68334\r\n\n			pqhmc				2005 - 2005		
2862	Cell Communication and Signaling	http://proquest.umi.com/pqdlink?RQT=318&PMID=68335\r\n\n			pqhmc				2005 - 2005		
2863	Cell Death and Differentiation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68900\r\n\n			pqhmc				 - 		
2864	Cell Stress & Chaperones	http://proquest.umi.com/pqdlink?RQT=318&PMID=68219\r\n\n		180	pqhmc				 - 		
2865	Cell and Tissue Banking	http://proquest.umi.com/pqdlink?RQT=318&PMID=55637\r\n\n			pqhmc				 - 		
2866	Cell and Tissue Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66942\r\n\n			pqhmc				 - 		
2867	Cells Tissues Organs	http://proquest.umi.com/pqdlink?RQT=318&PMID=66450\r\n\n			pqhmc				 - 		
2868	Centers for Disease Control and Prevention (CDC) Documents / FIND	http://proquest.umi.com/pqdlink?RQT=318&PMID=68528\r\n\n			pqhmc				2005 - 		
2869	Cerebral Cortex	http://proquest.umi.com/pqdlink?RQT=318&PMID=53219\r\n\n			pqhmc				 - 		
2870	Cerebrovascular Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=66445\r\n\n			pqhmc				 - 		
2871	Chemical Senses	http://proquest.umi.com/pqdlink?RQT=318&PMID=53220\r\n\n			pqhmc				 - 		
2872	Chemotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66454\r\n\n			pqhmc				 - 		
2873	Chest	http://proquest.umi.com/pqdlink?RQT=318&PMID=28929\r\n\n			pqhmc				1997 - 2006		
2875	Child Abuse & Neglect	http://proquest.umi.com/pqdlink?RQT=318&PMID=8343\r\n\n			pqhmc				 - 		
2876	Child Health Alert	http://proquest.umi.com/pqdlink?RQT=318&PMID=11503\r\n\n			pqhmc				1997 - 		
2877	Child Welfare	http://proquest.umi.com/pqdlink?RQT=318&PMID=27849\r\n\n			pqhmc				1994 - 		
2878	Chiropractic Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=73228\r\n\n			pqhmc				 - 		
2879	Chronic Respiratory Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66711\r\n\n			pqhmc				 - 		
2881	Circulation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27245\r\n\n			pqhmc				 - 		
2882	Cleft Palate - Craniofacial Journal, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36488\r\n\n		180	pqhmc				 - 2005		
2883	Climacteric	http://proquest.umi.com/pqdlink?RQT=318&PMID=56224\r\n\n			pqhmc				2003 - 2007		
2884	Clinical & Experimental Metastasis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55639\r\n\n			pqhmc				1999 - 2004		
2885	Clinical Autonomic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=65754\r\n\n			pqhmc				 - 		
2886	Clinical Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=53534\r\n\n			pqhmc				2002 - 		
2887	Clinical Diabetes	http://proquest.umi.com/pqdlink?RQT=318&PMID=36050\r\n\n			pqhmc				1998 - 		
2888	Clinical EEG and Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=67419\r\n\n			pqhmc				2004 - 		
2889	Clinical Excellence for Nurse Practitioners	http://proquest.umi.com/pqdlink?RQT=318&PMID=68376\r\n\n			pqhmc				2005 - 2005		
2890	Clinical Governance	http://proquest.umi.com/pqdlink?RQT=318&PMID=46105\r\n\n			pqhmc				1997 - 		
2891	Clinical Governance Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=59205\r\n\n			pqhmc				2003 - 2006		
2892	Clinical Infectious Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=67474\r\n\n			pqhmc				 - 		
2893	Clinical Journal of Oncology Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=71690\r\n\n			pqhmc				2005 - 		
2894	Clinical Kinesiology (Online)	http://proquest.umi.com/pqdlink?RQT=318&PMID=67297\r\n\n			pqhmc				2003 - 		
2896	Clinical Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=78915\r\n\n			pqhmc				2006 - 		
2897	Clinical Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=32456\r\n\n			pqhmc				 - 		
2898	Clinical Oncology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56204\r\n\n			pqhmc				2003 - 		
2899	Clinical Oral Investigations	http://proquest.umi.com/pqdlink?RQT=318&PMID=69703\r\n\n			pqhmc				 - 		
2901	Clinical Psychology: Science and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=53196\r\n\n			pqhmc				 - 		
2902	Clinical Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=66566\r\n\n			pqhmc				 - 		
2903	Clinical Trials	http://proquest.umi.com/pqdlink?RQT=318&PMID=66712\r\n\n			pqhmc				 - 		
2904	Clinical Trials Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56205\r\n\n			pqhmc				2003 - 		
2905	Clinical and Experimental Allergy	http://proquest.umi.com/pqdlink?RQT=318&PMID=36733\r\n\n			pqhmc				 - 		
2906	Clinical and Experimental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=65728\r\n\n			pqhmc				 - 		
2907	Clinical and Experimental Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65678\r\n\n			pqhmc				 - 		
2908	Clinical and Investigative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=33540\r\n\n			pqhmc				1997 - 2006		
2909	Clinical and Investigative Medicine (Online)	http://proquest.umi.com/pqdlink?RQT=318&PMID=78301\r\n\n			pqhmc				2007 - 		
2910	Clinical and Molecular Allergy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68336\r\n\n			pqhmc				2005 - 2005		
2911	Cognitive, Affective and Behavioral Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=67992\r\n\n			pqhmc				2004 - 		
2912	Community Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66453\r\n\n			pqhmc				 - 		
2913	Community Mental Health Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=19197\r\n\n			pqhmc				1996 - 2004		
2914	Community Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=40570\r\n\n			pqhmc				2000 - 		
2915	Comparative Hepatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68337\r\n\n			pqhmc				2005 - 2005		
2916	Consumer Reports on Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=11506\r\n\n			pqhmc				2005 - 		
2917	Contemporary Drug Problems	http://proquest.umi.com/pqdlink?RQT=318&PMID=23292\r\n\n			pqhmc				1996 - 		
2918	Contemporary Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68377\r\n\n			pqhmc				2005 - 2005		
2919	Contemporary Longterm Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36071\r\n\n			pqhmc				1998 - 2005		
2920	Contemporary Nurse : a Journal for the Australian Nursing Profession	http://proquest.umi.com/pqdlink?RQT=318&PMID=77925\r\n\n		270	pqhmc				 - 		
2921	Contemporary Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37021\r\n\n			pqhmc				2006 - 		
2922	Cost Effectiveness and Resource Allocation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68338\r\n\n			pqhmc				2005 - 2005		
2923	Counselling Psychology Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=34457\r\n\n			pqhmc				1997 - 2000		
2924	Creative Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=82696\r\n\n			pqhmc				2008 - 		
2925	Critical Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=68339\r\n\n			pqhmc				 - 		
2926	Critical Care Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=36633\r\n\n			pqhmc				1998 - 2007		
2927	Critical Care Nursing Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36080\r\n\n			pqhmc				 - 		
2928	Critical Reviews in Biochemistry and Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56217\r\n\n			pqhmc				2003 - 2007		
2929	Critical Reviews in Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56218\r\n\n			pqhmc				2003 - 2007		
2930	Critical Reviews in Clinical Laboratory Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=56259\r\n\n			pqhmc				2003 - 2007		
2931	Critical Reviews in Computed Tomography	http://proquest.umi.com/pqdlink?RQT=318&PMID=56248\r\n\n			pqhmc				2003 - 2004		
2932	Critical Reviews in Food Science and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=43989\r\n\n			pqhmc				2001 - 2007		
2933	Critical Reviews in Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56219\r\n\n			pqhmc				2003 - 2007		
2934	Critical Reviews in Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38195\r\n\n			pqhmc				1998 - 2008		
2935	Culture, Medicine and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=69704\r\n\n			pqhmc				 - 		
2936	Current Controlled Trials in Cardiovascular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68340\r\n\n			pqhmc				2005 - 2005		
2937	Current Health 1	http://proquest.umi.com/pqdlink?RQT=318&PMID=32974\r\n\n			pqhmc				1996 - 		
2938	Current Health 2	http://proquest.umi.com/pqdlink?RQT=318&PMID=18757\r\n\n			pqhmc				1992 - 		
2939	Current Medical Research and Opinion	http://proquest.umi.com/pqdlink?RQT=318&PMID=37296\r\n\n			pqhmc				1998 - 		
2940	Current Medicinal Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=69173\r\n\n			pqhmc				 - 		
2941	Current Opinion in Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=66297\r\n\n			pqhmc				 - 		
2942	Current Pharmaceutical Design	http://proquest.umi.com/pqdlink?RQT=318&PMID=69174\r\n\n			pqhmc				 - 		
2943	Cutis	http://proquest.umi.com/pqdlink?RQT=318&PMID=37972\r\n\n			pqhmc				1998 - 2003		
2944	Cytogenetic and Genome Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27434\r\n\n			pqhmc				1997 - 2002		
2945	Death Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=19217\r\n\n			pqhmc				1996 - 2000		
2946	Dementia and Geriatric Cognitive Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37871\r\n\n			pqhmc				1998 - 2003		
2947	Demography	http://proquest.umi.com/pqdlink?RQT=318&PMID=23899\r\n\n			pqhmc				1995 - 		
2948	Dental Assistant	http://proquest.umi.com/pqdlink?RQT=318&PMID=41516\r\n\n			pqhmc				2000 - 		
2949	Dental Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=27174\r\n\n			pqhmc				1992 - 		
2950	Dental Lab Products	http://proquest.umi.com/pqdlink?RQT=318&PMID=42006\r\n\n			pqhmc				2000 - 		
2951	Dental Practice Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=75588\r\n\n			pqhmc				2006 - 2007		
2952	Dental Products Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=42005\r\n\n			pqhmc				2000 - 		
2953	Dental Products Report Europe	http://proquest.umi.com/pqdlink?RQT=318&PMID=42697\r\n\n			pqhmc				2000 - 		
2954	Department of Health & Human Services (HHS) Documents / FIND	http://proquest.umi.com/pqdlink?RQT=318&PMID=68533\r\n\n			pqhmc				2005 - 		
2955	Dermatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66456\r\n\n			pqhmc				 - 		
2956	Dermatology Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35680\r\n\n			pqhmc				2001 - 		
2957	Dermatology Times	http://proquest.umi.com/pqdlink?RQT=318&PMID=35694\r\n\n			pqhmc				1998 - 		
2958	Development and Psychopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66185\r\n\n			pqhmc				2004 - 2007		
2959	Developmental Medicine and Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26850\r\n\n			pqhmc				2001 - 		
2960	Developmental Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=66444\r\n\n			pqhmc				 - 		
2961	Diabetes	http://proquest.umi.com/pqdlink?RQT=318&PMID=23769\r\n\n			pqhmc				1997 - 		
2962	Diabetes Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=17598\r\n\n			pqhmc				1997 - 		
2963	Diabetes Forecast	http://proquest.umi.com/pqdlink?RQT=318&PMID=11457\r\n\n			pqhmc				1997 - 		
2964	Diabetes Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51259\r\n\n			pqhmc				2001 - 		
2966	Diabetologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=66943\r\n\n			pqhmc				 - 		
2967	Diagnostic Imaging Europe	http://proquest.umi.com/pqdlink?RQT=318&PMID=38236\r\n\n			pqhmc				 - 		
2968	Digestion	http://proquest.umi.com/pqdlink?RQT=318&PMID=26836\r\n\n			pqhmc				1997 - 2003		
2969	Digestive Diseases and Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=55640\r\n\n			pqhmc				1997 - 2004		
2970	Digestive Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66457\r\n\n			pqhmc				 - 		
2972	Disease Prevention Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67443\r\n\n			pqhmc				2006 - 		
2973	Disease Risk Factor Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67444\r\n\n			pqhmc				2006 - 		
2974	Diseases of the Colon & Rectum	http://proquest.umi.com/pqdlink?RQT=318&PMID=66944\r\n\n			pqhmc				 - 		
2975	Documenta Ophthalmologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=55641\r\n\n			pqhmc				 - 		
2976	Drug Information Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38240\r\n\n			pqhmc				1998 - 		
2977	Drug Topics	http://proquest.umi.com/pqdlink?RQT=318&PMID=22506\r\n\n			pqhmc				1991 - 		
2978	Drug Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51260\r\n\n			pqhmc				2000 - 		
2979	Drugs and Alcohol Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=59283\r\n\n			pqhmc				2003 - 		
2980	Dynamic Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68341\r\n\n			pqhmc				2005 - 2005		
2981	Dysphagia	http://proquest.umi.com/pqdlink?RQT=318&PMID=66945\r\n\n			pqhmc				 - 		
2982	EBRI Issue Brief	http://proquest.umi.com/pqdlink?RQT=318&PMID=38245\r\n\n			pqhmc				1998 - 2006		
2983	EMBO Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53204\r\n\n			pqhmc				 - 		
2984	EMBO Reports	http://proquest.umi.com/pqdlink?RQT=318&PMID=53252\r\n\n			pqhmc				 - 		
2986	Ear, Nose & Throat Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37298\r\n\n			pqhmc				1998 - 		
2987	Eastern Journal of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67943\r\n\n			pqhmc				2004 - 2004		
2988	Ecotoxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55642\r\n\n			pqhmc				 - 		
2989	El Farmaceutico Hospitales	http://proquest.umi.com/pqdlink?RQT=318&PMID=67265\r\n\n			pqhmc				 - 		
2990	Elder Law Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=68396\r\n\n			pqhmc				2005 - 		
2991	Emergency Medicine Journal : EMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=58253\r\n\n			pqhmc				2003 - 2003		
2992	Emergency Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=38806\r\n\n			pqhmc				1999 - 2006		
2993	Endocrine Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=80696\r\n\n			pqhmc				2008 - 		
2994	Environmental Health Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=67001\r\n\n			pqhmc				2004 - 		
2995	Environmental Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=11464\r\n\n			pqhmc				 - 		
2996	Environmental Toxicology and Chemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68221\r\n\n		180	pqhmc				 - 2005		
2997	Epidemiology and Infection	http://proquest.umi.com/pqdlink?RQT=318&PMID=79022\r\n\n			pqhmc				2007 - 		
2998	Ethical Human Psychology and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68378\r\n\n			pqhmc				2005 - 		
2999	Ethics & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=44935\r\n\n			pqhmc				2001 - 		
3000	Ethnicity and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=37602\r\n\n			pqhmc				1998 - 2000		
3001	Europace	http://proquest.umi.com/pqdlink?RQT=318&PMID=74896\r\n\n			pqhmc				 - 		
3002	European Archives of Psychiatry and Clinical Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=66946\r\n\n			pqhmc				 - 		
3003	European Child & Adolescent Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=66947\r\n\n			pqhmc				 - 		
3004	European Heart Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=67742\r\n\n			pqhmc				 - 		
3005	European Journal of Anaesthesiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=80004\r\n\n		365	pqhmc				 - 2003		
3006	European Journal of Cancer Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=39050\r\n\n			pqhmc				 - 		
3007	European Journal of Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48510\r\n\n			pqhmc				2001 - 2005		
3008	European Journal of Clinical Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=13841\r\n\n			pqhmc				 - 		
3009	European Journal of Clinical Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66948\r\n\n			pqhmc				 - 		
3010	European Journal of Contraception & Reproductive Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=56235\r\n\n			pqhmc				2002 - 2007		
3011	European Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55643\r\n\n			pqhmc				 - 		
3012	European Journal of Human Genetics : EJHG	http://proquest.umi.com/pqdlink?RQT=318&PMID=68901\r\n\n			pqhmc				 - 		
3013	European Journal of Nuclear Medicine and Molecular Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=66949\r\n\n			pqhmc				 - 		
3014	European Journal of Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=66950\r\n\n			pqhmc				 - 		
3015	European Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53253\r\n\n			pqhmc				 - 		
3016	European Journal of Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=79088\r\n\n			pqhmc				 - 		
3017	European Journal of Protistology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48520\r\n\n			pqhmc				2001 - 2005		
3018	European Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53202\r\n\n			pqhmc				 - 		
3019	European Journal of Trauma and Emergency Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=65755\r\n\n			pqhmc				 - 		
3020	European Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=26835\r\n\n			pqhmc				1997 - 2003		
3021	European Spine Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=69706\r\n\n			pqhmc				 - 		
3022	Evaluation & the Health Professions	http://proquest.umi.com/pqdlink?RQT=318&PMID=16525\r\n\n			pqhmc				 - 		
3023	Evidence - Based Dentistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68902\r\n\n			pqhmc				 - 		
3024	Evidence - Based Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=52703\r\n\n			pqhmc				2002 - 2003		
3025	Evidence - Based Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=52704\r\n\n			pqhmc				2003 - 2003		
3026	Experimental & Applied Acarology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38255\r\n\n			pqhmc				2000 - 2005		
3027	Experimental Brain Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66951\r\n\n			pqhmc				 - 		
3028	Expert Reviews in Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=79028\r\n\n		365	pqhmc				 - 2007		
3029	Eye	http://proquest.umi.com/pqdlink?RQT=318&PMID=68903\r\n\n			pqhmc				 - 		
3030	FABAD Journal of Pharmaceutical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=78591\r\n\n			pqhmc				2005 - 2005		
3031	FDA Consumer	http://proquest.umi.com/pqdlink?RQT=318&PMID=26588\r\n\n			pqhmc				1992 - 2007		
3032	Familial Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=55644\r\n\n			pqhmc				 - 		
3033	Families, Systems & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=39413\r\n\n			pqhmc				 - 		
3034	Family Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=53221\r\n\n			pqhmc				 - 		
3035	Family Practice Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37668\r\n\n			pqhmc				1998 - 		
3036	Family Process	http://proquest.umi.com/pqdlink?RQT=318&PMID=39292\r\n\n			pqhmc				1999 - 		
3037	Family and Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=35986\r\n\n			pqhmc				 - 		
3038	Fetal Diagnosis and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66448\r\n\n			pqhmc				 - 		
3039	Fetal and Maternal Medicine Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=79029\r\n\n			pqhmc				2007 - 		
3040	Filaria Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68343\r\n\n			pqhmc				2005 - 2005		
3041	Fitness & Wellness Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67446\r\n\n			pqhmc				2005 - 		
3042	Florida Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37205\r\n\n			pqhmc				1998 - 2006		
3043	Folia Biologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=68086\r\n\n			pqhmc				2005 - 		
3044	Folia Clinica en Obstetricia y Ginecologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=67253\r\n\n			pqhmc				 - 		
3045	Folia Histochemica et Cytobiologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=78745\r\n\n			pqhmc				2004 - 		
3046	Folia Medica Indonesiana	http://proquest.umi.com/pqdlink?RQT=318&PMID=69500\r\n\n			pqhmc				2005 - 2005		
3047	Folia Parasitologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=70289\r\n\n		90	pqhmc				 - 2004		
3048	Folia Phoniatrica et Logopaedica	http://proquest.umi.com/pqdlink?RQT=318&PMID=37872\r\n\n			pqhmc				1998 - 2003		
3049	Folia Primatologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=38201\r\n\n			pqhmc				1998 - 2003		
3050	Food & Drug Law Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=67544\r\n\n			pqhmc				2005 - 		
3051	Food and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=22645\r\n\n			pqhmc				 - 		
3052	Formulary	http://proquest.umi.com/pqdlink?RQT=318&PMID=36005\r\n\n			pqhmc				1998 - 		
3053	Frontiers of Health Services Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=15980\r\n\n			pqhmc				1992 - 		
3054	Functional & Integrative Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=65686\r\n\n			pqhmc				 - 		
3055	Functional Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=72391\r\n\n			pqhmc				2006 - 		
3056	Future of Children, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38606\r\n\n			pqhmc				1998 - 2004		
3057	Gastric Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=65732\r\n\n			pqhmc				 - 		
3058	Gastroenterology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56206\r\n\n			pqhmc				2003 - 		
3059	Gene Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68904\r\n\n			pqhmc				 - 		
3060	Gene Therapy Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51276\r\n\n			pqhmc				1995 - 		
3061	Genes and Immunity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68905\r\n\n			pqhmc				 - 		
3062	Genetic Counseling	http://proquest.umi.com/pqdlink?RQT=318&PMID=77796\r\n\n		90	pqhmc				 - 		
3063	Genetic Vaccines and Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68344\r\n\n			pqhmc				2005 - 2005		
3064	Genetic, Social, and General Psychology Monographs	http://proquest.umi.com/pqdlink?RQT=318&PMID=37208\r\n\n			pqhmc				1998 - 		
3066	Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=17472\r\n\n			pqhmc				2004 - 		
3067	Genetics & Environmental Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67447\r\n\n			pqhmc				2005 - 		
3068	Genetics & Environmental Health Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67448\r\n\n			pqhmc				2005 - 		
3069	Genome	http://proquest.umi.com/pqdlink?RQT=318&PMID=37377\r\n\n			pqhmc				1998 - 2007		
3070	Genome Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68345\r\n\n			pqhmc				2005 - 2005		
3071	Genomics & Genetics Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51261\r\n\n			pqhmc				1998 - 		
3072	Geriaction	http://proquest.umi.com/pqdlink?RQT=318&PMID=73235\r\n\n			pqhmc				 - 		
3073	Geriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=17521\r\n\n			pqhmc				 - 		
3074	Geriatrics and Gerontology International	http://proquest.umi.com/pqdlink?RQT=318&PMID=67270\r\n\n			pqhmc				 - 		
3075	Gerontological Nursing Association. Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=78766\r\n\n			pqhmc				2007 - 		
3076	Gerontologist, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27214\r\n\n			pqhmc				1994 - 		
3077	Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10181\r\n\n			pqhmc				1997 - 2003		
3078	Global Cosmetic Industry	http://proquest.umi.com/pqdlink?RQT=318&PMID=26967\r\n\n			pqhmc				1994 - 2006		
3079	Glycobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53258\r\n\n			pqhmc				 - 		
3080	Gut	http://proquest.umi.com/pqdlink?RQT=318&PMID=28089\r\n\n			pqhmc				1997 - 2003		
3081	Gynecologic and Obstetric Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=66458\r\n\n			pqhmc				 - 		
3082	Gynecological Endocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56220\r\n\n			pqhmc				2003 - 		
3083	HARA : the Hospital Accounts Receivable Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=81305\r\n\n			pqhmc				2007 - 		
3084	HEC Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=53333\r\n\n			pqhmc				 - 		
3085	HEM/ONC Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=80697\r\n\n			pqhmc				2008 - 		
3086	Harvard Health Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=12165\r\n\n			pqhmc				 - 		
3087	Hastings Center Report, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21451\r\n\n			pqhmc				1994 - 		
3088	He@lth Information on the Internet	http://proquest.umi.com/pqdlink?RQT=318&PMID=66074\r\n\n			pqhmc				2003 - 2006		
3089	Health & Medicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51262\r\n\n			pqhmc				1998 - 		
3090	Health & Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=18747\r\n\n			pqhmc				1994 - 		
3091	Health Affairs	http://proquest.umi.com/pqdlink?RQT=318&PMID=15986\r\n\n			pqhmc				1994 - 		
3092	Health At Every Size	http://proquest.umi.com/pqdlink?RQT=318&PMID=11429\r\n\n			pqhmc				1994 - 1995		
3093	Health Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67449\r\n\n			pqhmc				2005 - 		
3094	Health Care Financing Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=14925\r\n\n			pqhmc				1991 - 		
3095	Health Care Management Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=17776\r\n\n			pqhmc				 - 		
3096	Health Care Management Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=53331\r\n\n			pqhmc				 - 		
3097	Health Care Manager, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=16603\r\n\n			pqhmc				 - 		
3098	Health Care Strategic Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12636\r\n\n			pqhmc				1991 - 2006		
3099	Health Communication	http://proquest.umi.com/pqdlink?RQT=318&PMID=66282\r\n\n			pqhmc				 - 		
3100	Health Data Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=34954\r\n\n			pqhmc				1999 - 		
3101	Health Education Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53222\r\n\n			pqhmc				 - 		
3102	Health Education and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=22101\r\n\n			pqhmc				 - 		
3103	Health Facilities Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=67110\r\n\n			pqhmc				2004 - 		
3104	Health Forum Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=27548\r\n\n			pqhmc				1991 - 2003		
3105	Health Industry Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=20363\r\n\n			pqhmc				1992 - 2001		
3106	Health Insurance Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67451\r\n\n			pqhmc				2005 - 		
3107	Health Law Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=54996\r\n\n			pqhmc				1999 - 		
3108	Health Law Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=55450\r\n\n			pqhmc				2004 - 2005		
3109	Health Lawyer, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=79805\r\n\n			pqhmc				2007 - 		
3110	Health Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=10838\r\n\n			pqhmc				 - 		
3111	Health Management Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=17789\r\n\n			pqhmc				1992 - 		
3112	Health Marketing Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=7976\r\n\n			pqhmc				1995 - 1998		
3113	Health News	http://proquest.umi.com/pqdlink?RQT=318&PMID=11467\r\n\n			pqhmc				1995 - 2001		
3114	Health Physics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66359\r\n\n			pqhmc				 - 		
3115	Health Policy and Planning	http://proquest.umi.com/pqdlink?RQT=318&PMID=53260\r\n\n			pqhmc				 - 		
3116	Health Progress	http://proquest.umi.com/pqdlink?RQT=318&PMID=37123\r\n\n			pqhmc				1998 - 2006		
3117	Health Promotion International	http://proquest.umi.com/pqdlink?RQT=318&PMID=53223\r\n\n			pqhmc				 - 		
3118	Health Promotion Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=73210\r\n\n			pqhmc				 - 		
3119	Health Research Policy and System	http://proquest.umi.com/pqdlink?RQT=318&PMID=68347\r\n\n			pqhmc				 - 		
3120	Health Risk Factor Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67452\r\n\n			pqhmc				2005 - 		
3121	Health Services Management Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=45492\r\n\n			pqhmc				2001 - 2006		
3122	Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=26127\r\n\n			pqhmc				 - 		
3123	Health Systems Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=18215\r\n\n			pqhmc				1992 - 1997		
3124	Health and Hygiene	http://proquest.umi.com/pqdlink?RQT=318&PMID=37983\r\n\n			pqhmc				1998 - 		
3125	Health and Quality of Life Outcomes	http://proquest.umi.com/pqdlink?RQT=318&PMID=68346\r\n\n			pqhmc				 - 		
3128	HealthFacts	http://proquest.umi.com/pqdlink?RQT=318&PMID=11602\r\n\n			pqhmc				1997 - 		
3129	Healthcare Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=14232\r\n\n			pqhmc				1991 - 		
3130	Healthcare Financial Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=17804\r\n\n			pqhmc				1992 - 		
3131	Healthcare Mergers, Acquisition & Ventures Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67453\r\n\n			pqhmc				2005 - 		
3133	Heart	http://proquest.umi.com/pqdlink?RQT=318&PMID=28113\r\n\n			pqhmc				1997 - 2003		
3134	Heart Disease Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51264\r\n\n			pqhmc				2000 - 		
3135	Heart Failure Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=55645\r\n\n			pqhmc				 - 		
3136	Heart and Vessels	http://proquest.umi.com/pqdlink?RQT=318&PMID=65757\r\n\n			pqhmc				 - 		
3137	Hematology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56207\r\n\n			pqhmc				2003 - 		
3138	Hepatitis Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51277\r\n\n			pqhmc				1995 - 		
3139	Heredity	http://proquest.umi.com/pqdlink?RQT=318&PMID=38630\r\n\n			pqhmc				 - 		
3140	Herz	http://proquest.umi.com/pqdlink?RQT=318&PMID=65805\r\n\n			pqhmc				 - 		
3141	Hispanic Health Care International	http://proquest.umi.com/pqdlink?RQT=318&PMID=68382\r\n\n			pqhmc				2005 - 2006		
3142	Histochemistry and Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66952\r\n\n			pqhmc				 - 		
3143	Holistic Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=36014\r\n\n			pqhmc				 - 		
3144	Hormones and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=67582\r\n\n			pqhmc				 - 		
3145	Hospital & Nursing Home Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67454\r\n\n			pqhmc				2005 - 		
3146	Hospital Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67455\r\n\n			pqhmc				2005 - 		
3147	Hospital Law Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=37215\r\n\n			pqhmc				1998 - 2005		
3148	Hospital Materials Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=12422\r\n\n			pqhmc				1991 - 2006		
3149	Hospital Materiel Management Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=17711\r\n\n			pqhmc				1992 - 2001		
3150	Hospital Topics	http://proquest.umi.com/pqdlink?RQT=318&PMID=29060\r\n\n			pqhmc				1997 - 		
3151	Hospitals & Health Networks	http://proquest.umi.com/pqdlink?RQT=318&PMID=28608\r\n\n			pqhmc				1991 - 		
3152	Human Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27986\r\n\n			pqhmc				1994 - 		
3153	Human Factors	http://proquest.umi.com/pqdlink?RQT=318&PMID=19745\r\n\n			pqhmc				1997 - 2007		
3154	Human Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66953\r\n\n			pqhmc				 - 		
3155	Human Genomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67590\r\n\n			pqhmc				2003 - 2006		
3156	Human Heredity	http://proquest.umi.com/pqdlink?RQT=318&PMID=66447\r\n\n			pqhmc				 - 		
3157	Human Molecular Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53262\r\n\n			pqhmc				 - 		
3158	Human Mutation	http://proquest.umi.com/pqdlink?RQT=318&PMID=67593\r\n\n			pqhmc				 - 		
3159	Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53264\r\n\n			pqhmc				 - 		
3160	Human Reproduction Update	http://proquest.umi.com/pqdlink?RQT=318&PMID=53263\r\n\n			pqhmc				 - 		
3161	Human Reproduction and Genetic Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=78771\r\n\n			pqhmc				2007 - 		
3162	Human Resources for Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68349\r\n\n			pqhmc				2005 - 2005		
3163	Human and Experimental Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66716\r\n\n			pqhmc				 - 		
3164	Hypertension	http://proquest.umi.com/pqdlink?RQT=318&PMID=18021\r\n\n			pqhmc				 - 		
3165	IT Health Care Strategist	http://proquest.umi.com/pqdlink?RQT=318&PMID=39258\r\n\n			pqhmc				1999 - 2002		
3166	Immunobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48716\r\n\n			pqhmc				2001 - 2005		
3167	Immunotherapy Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51280\r\n\n			pqhmc				1996 - 		
3169	Indian Journal of Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=67946\r\n\n			pqhmc				2004 - 		
3170	Indian Journal of Critical Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67952\r\n\n			pqhmc				2004 - 		
3171	Indian Journal of Dermatology, Venereology and Leprology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67953\r\n\n			pqhmc				2004 - 		
3172	Indian Journal of Medical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=36700\r\n\n			pqhmc				1998 - 		
3173	Indian Journal of Medical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=67955\r\n\n			pqhmc				2004 - 		
3174	Indian Journal of Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67956\r\n\n			pqhmc				2004 - 		
3175	Indian Journal of Plastic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=67949\r\n\n			pqhmc				2004 - 		
3176	Indian Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=67950\r\n\n			pqhmc				2004 - 		
3178	Infection	http://proquest.umi.com/pqdlink?RQT=318&PMID=66954\r\n\n			pqhmc				 - 		
3179	Infection Control and Hospital Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=16982\r\n\n			pqhmc				 - 		
3180	Infectious Disease News	http://proquest.umi.com/pqdlink?RQT=318&PMID=80698\r\n\n			pqhmc				 - 		
3182	Infectious Diseases in Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56216\r\n\n			pqhmc				2003 - 		
3183	Inflammation	http://proquest.umi.com/pqdlink?RQT=318&PMID=55646\r\n\n			pqhmc				1999 - 2004		
3184	Inflammation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66955\r\n\n			pqhmc				 - 		
3185	Injury Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=49929\r\n\n			pqhmc				2003 - 2003		
3186	Inquiry	http://proquest.umi.com/pqdlink?RQT=318&PMID=17448\r\n\n			pqhmc				 - 		
3188	Intensive Care Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66956\r\n\n			pqhmc				 - 		
3189	International Angiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38262\r\n\n			pqhmc				1998 - 		
3190	International Archives of Allergy and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66446\r\n\n			pqhmc				 - 		
3192	International Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33529\r\n\n			pqhmc				1997 - 2001		
3193	International Journal for Equity in Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68350\r\n\n			pqhmc				 - 		
3194	International Journal for Quality in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=65777\r\n\n			pqhmc				 - 		
3195	International Journal of Aging & Human Development, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=12509\r\n\n			pqhmc				 - 		
3196	International Journal of Angiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=65758\r\n\n			pqhmc				2002 - 2003		
3197	International Journal of Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66285\r\n\n			pqhmc				 - 		
3198	International Journal of Behavioral Nutrition and Physical Activity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68352\r\n\n			pqhmc				2005 - 2005		
3199	International Journal of Cardiovascular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=55647\r\n\n			pqhmc				 - 		
3200	International Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65783\r\n\n			pqhmc				 - 		
3201	International Journal of Clinical Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=67273\r\n\n			pqhmc				 - 		
3202	International Journal of Colorectal Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66957\r\n\n			pqhmc				 - 		
3203	International Journal of Eating Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=17401\r\n\n			pqhmc				 - 		
3204	International Journal of Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37023\r\n\n			pqhmc				1998 - 2000		
3205	International Journal of Food Sciences and Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=30322\r\n\n			pqhmc				1996 - 2000		
3206	International Journal of Geriatric Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=66260\r\n\n			pqhmc				 - 		
3207	International Journal of Group Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37928\r\n\n			pqhmc				1998 - 		
3208	International Journal of Health Care Finance and Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53456\r\n\n			pqhmc				 - 		
3209	International Journal of Health Care Quality Assurance	http://proquest.umi.com/pqdlink?RQT=318&PMID=11861\r\n\n		365	pqhmc				 - 1992		
3210	International Journal of Health Geographics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68353\r\n\n			pqhmc				2005 - 2005		
3211	International Journal of Impotence Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68906\r\n\n			pqhmc				 - 		
3213	International Journal of Legal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66958\r\n\n			pqhmc				 - 		
3214	International Journal of Leprosy and Other Mycobacterial Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=18181\r\n\n			pqhmc				1996 - 2005		
3215	International Journal of Medical Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48512\r\n\n			pqhmc				2002 - 2005		
3390	Journal of Neurotrauma	http://proquest.umi.com/pqdlink?RQT=318&PMID=66583\r\n\n			pqhmc				 - 		
3216	International Journal of Neuropsychopharmacology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80028\r\n\n			pqhmc				 - 		
3217	International Journal of Nursing Terminologies and Classifications	http://proquest.umi.com/pqdlink?RQT=318&PMID=36028\r\n\n			pqhmc				1998 - 		
3218	International Journal of Obesity	http://proquest.umi.com/pqdlink?RQT=318&PMID=68907\r\n\n			pqhmc				 - 		
3219	International Journal of Occupational Medicine and Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=77288\r\n\n			pqhmc				2006 - 		
3220	International Journal of Occupational and Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49933\r\n\n			pqhmc				2002 - 		
3221	International Journal of Psychiatry in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=59586\r\n\n			pqhmc				 - 		
3222	International Journal of Psychoanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=75690\r\n\n			pqhmc				2006 - 		
3223	International Journal of Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=34470\r\n\n			pqhmc				1997 - 2000		
3224	International Journal of Rehabilitation Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66360\r\n\n			pqhmc				 - 		
3225	International Journal of STD & AIDS	http://proquest.umi.com/pqdlink?RQT=318&PMID=38467\r\n\n			pqhmc				1998 - 2006		
3226	International Journal of Social Psychiatry, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=12523\r\n\n			pqhmc				 - 		
3227	International Journal of Surgical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38744\r\n\n			pqhmc				1998 - 2005		
3228	International Journal of Technology Assessment in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=79035\r\n\n		365	pqhmc				 - 2003		
3229	International Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55648\r\n\n			pqhmc				 - 		
3230	International Phonetic Association. Journal of the International Phonetic Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=80040\r\n\n			pqhmc				 - 		
3231	International Psychogeriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=80037\r\n\n			pqhmc				 - 		
3232	International Quarterly of Community Health Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=59585\r\n\n			pqhmc				 - 		
3233	International Review of Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=34475\r\n\n			pqhmc				1997 - 2000		
3234	International Urology and Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55649\r\n\n			pqhmc				 - 		
3235	Intervirology	http://proquest.umi.com/pqdlink?RQT=318&PMID=22467\r\n\n			pqhmc				1995 - 2003		
3236	Investigational New Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=55650\r\n\n			pqhmc				1997 - 2004		
3237	Israel Journal of Psychiatry and Related Sciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37243\r\n\n			pqhmc				1998 - 		
3238	Issues in Law & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=30263\r\n\n			pqhmc				1999 - 		
3240	JPEN, Journal of Parenteral and Enteral Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=12704\r\n\n			pqhmc				1997 - 		
3241	Japanese Journal of Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53291\r\n\n			pqhmc				 - 		
3242	Japanese Journal of Ophthalmology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69708\r\n\n			pqhmc				 - 		
3243	Journal for Specialists in Pediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36687\r\n\n			pqhmc				1998 - 		
3244	Journal of Abnormal Child Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=19470\r\n\n			pqhmc				1995 - 2004		
3247	Journal of Aging & Social Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=7960\r\n\n			pqhmc				 - 		
3248	Journal of Aging Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=11056\r\n\n			pqhmc				 - 		
3249	Journal of Aging and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=13685\r\n\n			pqhmc				 - 		
3250	Journal of Allied Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=49722\r\n\n			pqhmc				2002 - 		
3251	Journal of Ambulatory Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=36990\r\n\n			pqhmc				 - 		
3252	Journal of American College Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=27257\r\n\n			pqhmc				1997 - 		
3253	Journal of Animal Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=22982\r\n\n			pqhmc				1997 - 2006		
3254	Journal of Antimicrobial Chemotherapy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=53293\r\n\n			pqhmc				 - 		
3255	Journal of Applied Behavior Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=14884\r\n\n		365	pqhmc				 - 		
3256	Journal of Applied Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=13686\r\n\n			pqhmc				 - 		
3257	Journal of Assisted Reproduction and Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=55651\r\n\n			pqhmc				1999 - 2004		
3258	Journal of Athletic Training	http://proquest.umi.com/pqdlink?RQT=318&PMID=19516\r\n\n			pqhmc				1997 - 		
3259	Journal of Autism and Developmental Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=19471\r\n\n			pqhmc				 - 		
3260	Journal of Behavioral Health Services & Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=12423\r\n\n			pqhmc				 - 		
3261	Journal of Behavioral Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=69709\r\n\n			pqhmc				 - 		
3262	Journal of Biological Rhythms	http://proquest.umi.com/pqdlink?RQT=318&PMID=13317\r\n\n			pqhmc				 - 		
3263	Journal of Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68354\r\n\n			pqhmc				2005 - 2005		
3264	Journal of Biosocial Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=66190\r\n\n			pqhmc				 - 		
3267	Journal of Cancer Research & Clinical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65689\r\n\n			pqhmc				 - 		
3268	Journal of Cardiovascular Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35850\r\n\n			pqhmc				 - 		
3269	Journal of Cardiovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=36628\r\n\n			pqhmc				1998 - 		
3270	Journal of Cellular and Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68500\r\n\n			pqhmc				2005 - 2006		
3271	Journal of Cerebral Blood Flow and Metabolism	http://proquest.umi.com/pqdlink?RQT=318&PMID=68908\r\n\n			pqhmc				 - 		
3272	Journal of Child Language	http://proquest.umi.com/pqdlink?RQT=318&PMID=18291\r\n\n			pqhmc				 - 		
3273	Journal of Child Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=14627\r\n\n			pqhmc				1997 - 2000		
3274	Journal of Child Sexual Abuse	http://proquest.umi.com/pqdlink?RQT=318&PMID=7856\r\n\n			pqhmc				1995 - 1997		
3275	Journal of Child and Adolescent Psychiatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35858\r\n\n			pqhmc				1998 - 		
3276	Journal of Child and Adolescent Psychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66582\r\n\n			pqhmc				 - 		
3277	Journal of Circadian Rhythms	http://proquest.umi.com/pqdlink?RQT=318&PMID=68356\r\n\n			pqhmc				2005 - 2005		
3278	Journal of Clinical Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55652\r\n\n			pqhmc				1997 - 2004		
3279	Journal of Clinical Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=52718\r\n\n			pqhmc				2002 - 		
3280	Journal of Clinical Monitoring and Computing	http://proquest.umi.com/pqdlink?RQT=318&PMID=55653\r\n\n			pqhmc				 - 		
3282	Journal of Clinical Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=28111\r\n\n			pqhmc				1997 - 2003		
3283	Journal of Clinical Pharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=45490\r\n\n			pqhmc				 - 		
3284	Journal of Cognitive Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=12957\r\n\n			pqhmc				 - 		
3285	Journal of Cognitive Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68383\r\n\n			pqhmc				1987 - 		
3286	Journal of Communication	http://proquest.umi.com/pqdlink?RQT=318&PMID=20086\r\n\n			pqhmc				 - 		
3287	Journal of Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=19174\r\n\n			pqhmc				1995 - 2004		
3288	Journal of Community Health Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67714\r\n\n			pqhmc				 - 		
3289	Journal of Community Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=66597\r\n\n			pqhmc				2004 - 		
3290	Journal of Computational Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=55654\r\n\n			pqhmc				1999 - 2004		
3291	Journal of Contemporary Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55655\r\n\n			pqhmc				 - 		
3292	Journal of Continuing Education in Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23906\r\n\n			pqhmc				1997 - 		
3293	Journal of Cultural Diversity	http://proquest.umi.com/pqdlink?RQT=318&PMID=38581\r\n\n			pqhmc				1998 - 		
3294	Journal of Cutaneous Medicine and Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=37436\r\n\n			pqhmc				 - 		
3295	Journal of Dairy Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80044\r\n\n			pqhmc				 - 		
3296	Journal of Deaf Studies and Deaf Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=53224\r\n\n			pqhmc				 - 		
3297	Journal of Dental Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=19555\r\n\n			pqhmc				1997 - 		
3298	Journal of Developmental and Behavioral Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66361\r\n\n			pqhmc				 - 		
3299	Journal of Digital Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=66959\r\n\n			pqhmc				 - 		
3300	Journal of Drug Evaluation	http://proquest.umi.com/pqdlink?RQT=318&PMID=56236\r\n\n			pqhmc				2003 - 2004		
3301	Journal of Drug Issues	http://proquest.umi.com/pqdlink?RQT=318&PMID=22622\r\n\n			pqhmc				1996 - 		
3302	Journal of ECT, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=66362\r\n\n			pqhmc				 - 		
3303	Journal of Early Intervention	http://proquest.umi.com/pqdlink?RQT=318&PMID=72392\r\n\n			pqhmc				2000 - 		
3304	Journal of Educational & Psychological Consultation	http://proquest.umi.com/pqdlink?RQT=318&PMID=66287\r\n\n			pqhmc				 - 		
3305	Journal of Elder Abuse & Neglect	http://proquest.umi.com/pqdlink?RQT=318&PMID=7961\r\n\n			pqhmc				1995 - 1998		
3306	Journal of Electrocardiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37009\r\n\n			pqhmc				1997 - 		
3307	Journal of Electron Microscopy	http://proquest.umi.com/pqdlink?RQT=318&PMID=53294\r\n\n			pqhmc				 - 		
3308	Journal of Emotional and Behavioral Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37003\r\n\n			pqhmc				1998 - 		
3309	Journal of Endovascular Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=68224\r\n\n		180	pqhmc				 - 		
3310	Journal of Environmental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=23855\r\n\n			pqhmc				1994 - 		
3311	Journal of Epidemiology and Community Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=28088\r\n\n			pqhmc				1997 - 2003		
3312	Journal of Evolutionary Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67144\r\n\n			pqhmc				 - 		
3313	Journal of Experimental Botany	http://proquest.umi.com/pqdlink?RQT=318&PMID=53194\r\n\n			pqhmc				 - 		
3314	Journal of Exposure Science and Environmental Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68909\r\n\n			pqhmc				 - 		
3315	Journal of Family Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=30423\r\n\n			pqhmc				 - 		
3316	Journal of Gambling Studies	http://proquest.umi.com/pqdlink?RQT=318&PMID=53468\r\n\n			pqhmc				 - 		
3317	Journal of Gastroenterology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66960\r\n\n			pqhmc				 - 		
3318	Journal of Gene Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67592\r\n\n			pqhmc				 - 		
3319	Journal of General Internal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67145\r\n\n			pqhmc				 - 		
3320	Journal of General Physiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28237\r\n\n			pqhmc				 - 		
3321	Journal of General Plant Pathology : JGPP	http://proquest.umi.com/pqdlink?RQT=318&PMID=65680\r\n\n			pqhmc				 - 		
3322	Journal of General Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14345\r\n\n			pqhmc				1994 - 		
3323	Journal of Generic Medicines	http://proquest.umi.com/pqdlink?RQT=318&PMID=67591\r\n\n		365	pqhmc				 - 2003		
3324	Journal of Genetic Counseling	http://proquest.umi.com/pqdlink?RQT=318&PMID=55669\r\n\n			pqhmc				 - 		
3325	Journal of Genetic Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26603\r\n\n			pqhmc				1994 - 		
3326	Journal of Geriatric Physical Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=40572\r\n\n			pqhmc				2002 - 		
3327	Journal of Geriatric Psychiatry and Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37439\r\n\n			pqhmc				 - 		
3328	Journal of Gerontological Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36484\r\n\n			pqhmc				1998 - 		
3329	Journal of Gerontology	http://proquest.umi.com/pqdlink?RQT=318&PMID=30036\r\n\n			pqhmc				1994 - 1995		
3330	Journal of Hand Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36981\r\n\n			pqhmc				 - 		
3331	Journal of Hand Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=46167\r\n\n			pqhmc				2001 - 2006		
3332	Journal of Head Trauma Rehabilitation, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=36997\r\n\n			pqhmc				 - 		
3334	Journal of Health Care Finance	http://proquest.umi.com/pqdlink?RQT=318&PMID=17716\r\n\n			pqhmc				1992 - 		
3335	Journal of Health Care for the Poor and Underserved	http://proquest.umi.com/pqdlink?RQT=318&PMID=12307\r\n\n		365	pqhmc				 - 		
3336	Journal of Health Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=8761\r\n\n			pqhmc				 - 		
3337	Journal of Health Organization and Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=11876\r\n\n		365	pqhmc				 - 1992		
3338	Journal of Health Politics, Policy and Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=19228\r\n\n			pqhmc				1997 - 2000		
3339	Journal of Health Services Research & Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=59207\r\n\n			pqhmc				2003 - 2006		
3340	Journal of Health and Human Services Administration	http://proquest.umi.com/pqdlink?RQT=318&PMID=48108\r\n\n			pqhmc				2000 - 2005		
3341	Journal of Health and Social Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=27047\r\n\n		365	pqhmc				 - 1994		
3342	Journal of Healthcare Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=23545\r\n\n			pqhmc				1992 - 		
3343	Journal of Helminthology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79047\r\n\n		365	pqhmc				 - 2007		
3344	Journal of Heredity, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28916\r\n\n			pqhmc				 - 		
3345	Journal of Holistic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=32453\r\n\n			pqhmc				 - 		
3346	Journal of Human Hypertension	http://proquest.umi.com/pqdlink?RQT=318&PMID=68910\r\n\n			pqhmc				 - 		
3347	Journal of Immigrant and Minority Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53471\r\n\n			pqhmc				 - 		
3348	Journal of Immune Based Therapies and Vaccines	http://proquest.umi.com/pqdlink?RQT=318&PMID=68357\r\n\n			pqhmc				2005 - 2005		
3349	Journal of Infectious Diseases, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29194\r\n\n			pqhmc				 - 		
3350	Journal of Inherited Metabolic Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55670\r\n\n			pqhmc				1998 - 2004		
3351	Journal of Integrated Care Pathways	http://proquest.umi.com/pqdlink?RQT=318&PMID=59208\r\n\n			pqhmc				2003 - 2005		
3352	Journal of Intellectual & Developmental Disability	http://proquest.umi.com/pqdlink?RQT=318&PMID=34484\r\n\n			pqhmc				1997 - 2000		
3353	Journal of Interferon & Cytokine Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66677\r\n\n			pqhmc				 - 		
3354	Journal of Interventional Cardiac Electrophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55671\r\n\n			pqhmc				1999 - 2004		
3355	Journal of Investigative Dermatology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70302\r\n\n			pqhmc				 - 		
3356	Journal of Investigative Dermatology.  Symposium Proceedings, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80231\r\n\n			pqhmc				 - 		
3357	Journal of Knee Surgery, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37945\r\n\n			pqhmc				1998 - 		
3358	Journal of Laryngology and Otology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=33369\r\n\n			pqhmc				1997 - 2006		
3359	Journal of Law, Medicine & Ethics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=18317\r\n\n			pqhmc				1997 - 2007		
3360	Journal of Learning Disabilities	http://proquest.umi.com/pqdlink?RQT=318&PMID=14092\r\n\n			pqhmc				1997 - 		
3361	Journal of Mammary Gland Biology and Neoplasia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55672\r\n\n			pqhmc				1997 - 2004		
3362	Journal of Marital and Family Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=19058\r\n\n			pqhmc				1994 - 		
3363	Journal of Maternal - Fetal & Neonatal Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=56240\r\n\n			pqhmc				2003 - 2007		
3364	Journal of Medical Biography	http://proquest.umi.com/pqdlink?RQT=318&PMID=59209\r\n\n			pqhmc				2003 - 2006		
3365	Journal of Medical Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=12511\r\n\n			pqhmc				1995 - 2003		
3366	Journal of Medical Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=38446\r\n\n			pqhmc				1998 - 2003		
3367	Journal of Medical Practice Management : MPM, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=82295\r\n\n			pqhmc				2008 - 		
3368	Journal of Medical Screening	http://proquest.umi.com/pqdlink?RQT=318&PMID=49930\r\n\n			pqhmc				2003 - 2006		
3369	Journal of Medical Toxicology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79168\r\n\n			pqhmc				2007 - 		
3370	Journal of Medicine and Philosophy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=15342\r\n\n			pqhmc				 - 		
3371	Journal of Membrane Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66961\r\n\n			pqhmc				 - 		
3372	Journal of Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=34485\r\n\n			pqhmc				1997 - 2000		
3373	Journal of Minimal Access Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=67957\r\n\n			pqhmc				2005 - 		
3374	Journal of Molecular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66962\r\n\n			pqhmc				 - 		
3375	Journal of Motor Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=37013\r\n\n			pqhmc				1998 - 		
3376	Journal of Multicultural Nursing & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=38815\r\n\n		30	pqhmc				 - 1998		
3377	Journal of Musculoskeletal Pain	http://proquest.umi.com/pqdlink?RQT=318&PMID=66208\r\n\n			pqhmc				 - 		
3378	Journal of Music Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=17600\r\n\n			pqhmc				2002 - 		
3379	Journal of Nanobiotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68358\r\n\n			pqhmc				2005 - 2005		
3380	Journal of Negative Results in Biomedicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68359\r\n\n			pqhmc				 - 		
3381	Journal of Nervous and Mental Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=66363\r\n\n			pqhmc				 - 		
3382	Journal of Neural Transmission	http://proquest.umi.com/pqdlink?RQT=318&PMID=66963\r\n\n			pqhmc				 - 		
3383	Journal of Neuro - Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55674\r\n\n			pqhmc				1999 - 2004		
3384	Journal of Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66964\r\n\n			pqhmc				 - 		
3385	Journal of Neurology, Neurosurgery and Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28090\r\n\n			pqhmc				1997 - 2003		
3386	Journal of Neuropathology and Experimental Neurology	http://proquest.umi.com/pqdlink?RQT=318&PMID=29222\r\n\n			pqhmc				1997 - 		
3387	Journal of Neuropsychiatry and Clinical Neurosciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37249\r\n\n			pqhmc				1998 - 		
3388	Journal of Neuroscience Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38810\r\n\n			pqhmc				1999 - 		
3389	Journal of Neurosurgical Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=37990\r\n\n			pqhmc				1998 - 2006		
3391	Journal of Nuclear Medicine Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=39290\r\n\n			pqhmc				1999 - 		
3392	Journal of Nuclear Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=27354\r\n\n			pqhmc				1997 - 		
3393	Journal of Nursing Administration	http://proquest.umi.com/pqdlink?RQT=318&PMID=66364\r\n\n			pqhmc				 - 		
3394	Journal of Nursing Care Quality	http://proquest.umi.com/pqdlink?RQT=318&PMID=35900\r\n\n			pqhmc				 - 		
3395	Journal of Nursing Education	http://proquest.umi.com/pqdlink?RQT=318&PMID=23497\r\n\n			pqhmc				1997 - 		
3396	Journal of Nursing Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=68385\r\n\n			pqhmc				2005 - 		
3397	Journal of Nursing Measurement	http://proquest.umi.com/pqdlink?RQT=318&PMID=68387\r\n\n			pqhmc				2005 - 		
3398	Journal of Nursing Scholarship	http://proquest.umi.com/pqdlink?RQT=318&PMID=37455\r\n\n			pqhmc				1998 - 		
3399	Journal of Nutrition Education and Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=21825\r\n\n			pqhmc				1997 - 2001		
3400	Journal of Nutrition, Health & Aging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=71589\r\n\n			pqhmc				2006 - 		
3401	Journal of Nutrition, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=23412\r\n\n			pqhmc				1995 - 		
3402	Journal of Nutritional & Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=34487\r\n\n			pqhmc				1997 - 2000		
3403	Journal of Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=34488\r\n\n			pqhmc				1997 - 2000		
3404	Journal of Occupational Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=69710\r\n\n			pqhmc				 - 		
3405	Journal of Occupational and Environmental Hygiene	http://proquest.umi.com/pqdlink?RQT=318&PMID=67680\r\n\n			pqhmc				 - 		
3406	Journal of Occupational and Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=18120\r\n\n			pqhmc				 - 		
3407	Journal of Oncology Pharmacy Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=66717\r\n\n			pqhmc				 - 		
3408	Journal of Oral Implantology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68234\r\n\n		180	pqhmc				 - 2005		
3409	Journal of Orthodontics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53440\r\n\n			pqhmc				 - 		
3410	Journal of Orthopaedic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=12068\r\n\n			pqhmc				1997 - 2005		
3411	Journal of Orthopaedic Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38286\r\n\n			pqhmc				1997 - 		
3412	Journal of Otolaryngology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37019\r\n\n			pqhmc				1998 - 2001		
3413	Journal of Paediatrics and Child Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=67148\r\n\n			pqhmc				 - 		
3414	Journal of Palliative Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36999\r\n\n			pqhmc				1998 - 		
3416	Journal of Pediatric Ophthalmology and Strabismus	http://proquest.umi.com/pqdlink?RQT=318&PMID=37042\r\n\n			pqhmc				1998 - 		
3417	Journal of Pension Benefits	http://proquest.umi.com/pqdlink?RQT=318&PMID=50659\r\n\n			pqhmc				2002 - 2006		
3418	Journal of Perinatal & Neonatal Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=35925\r\n\n			pqhmc				 - 		
3419	Journal of Perinatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68912\r\n\n			pqhmc				 - 		
3420	Journal of Personality Assessment	http://proquest.umi.com/pqdlink?RQT=318&PMID=66288\r\n\n			pqhmc				 - 		
3421	Journal of Personality Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=37932\r\n\n			pqhmc				1998 - 		
3422	Journal of Physical Education, Recreation & Dance	http://proquest.umi.com/pqdlink?RQT=318&PMID=28612\r\n\n			pqhmc				1994 - 		
3423	Journal of Plant Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48522\r\n\n			pqhmc				2002 - 2005		
3424	Journal of Postgraduate Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=67945\r\n\n			pqhmc				2004 - 		
3425	Journal of Practical Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67062\r\n\n			pqhmc				2004 - 		
3426	Journal of Primary Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=55675\r\n\n			pqhmc				 - 		
3427	Journal of Psychiatric Intensive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=80011\r\n\n			pqhmc				 - 		
3428	Journal of Psychiatry & Law	http://proquest.umi.com/pqdlink?RQT=318&PMID=77392\r\n\n			pqhmc				2006 - 		
3429	Journal of Psychiatry & Neuroscience : JPN	http://proquest.umi.com/pqdlink?RQT=318&PMID=39284\r\n\n			pqhmc				1999 - 		
3430	Journal of Psychoactive Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=38472\r\n\n			pqhmc				1998 - 		
3431	Journal of Psycholinguistic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=69711\r\n\n			pqhmc				 - 		
3432	Journal of Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14346\r\n\n			pqhmc				1994 - 		
3433	Journal of Psychosocial Nursing & Mental Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=36635\r\n\n			pqhmc				1998 - 		
3434	Journal of Psychosocial Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66209\r\n\n			pqhmc				 - 		
3435	Journal of Psychosomatic Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56221\r\n\n			pqhmc				2003 - 2007		
3436	Journal of Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=53305\r\n\n			pqhmc				 - 		
3438	Journal of Public Health Policy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55836\r\n\n			pqhmc				2001 - 		
3439	Journal of Public Mental Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=59278\r\n\n			pqhmc				2003 - 		
3440	Journal of Radiotherapy in Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=79059\r\n\n			pqhmc				 - 		
3441	Journal of Rational - Emotive & Cognitive - Behavior Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55676\r\n\n			pqhmc				 - 		
3442	Journal of Refractive Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=45495\r\n\n			pqhmc				2002 - 		
3443	Journal of Rehabilitation	http://proquest.umi.com/pqdlink?RQT=318&PMID=13136\r\n\n			pqhmc				1995 - 		
3444	Journal of Rehabilitation Research and Development	http://proquest.umi.com/pqdlink?RQT=318&PMID=20977\r\n\n			pqhmc				1994 - 		
3504	Lasers in Medical Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=65762\r\n\n			pqhmc				 - 		
3445	Journal of Reproductive and Infant Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=34490\r\n\n			pqhmc				1997 - 2000		
3446	Journal of Safety Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=8194\r\n\n			pqhmc				 - 		
3447	Journal of Scheduling	http://proquest.umi.com/pqdlink?RQT=318&PMID=69712\r\n\n			pqhmc				 - 		
3448	Journal of School Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=26287\r\n\n			pqhmc				1994 - 		
3449	Journal of School Nursing, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68235\r\n\n		180	pqhmc				 - 2005		
3450	Journal of Science and Medicine in Sport	http://proquest.umi.com/pqdlink?RQT=318&PMID=73254\r\n\n			pqhmc				 - 		
3451	Journal of Sex Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=22854\r\n\n			pqhmc				1994 - 2006		
3452	Journal of Social Behavior and Personality	http://proquest.umi.com/pqdlink?RQT=318&PMID=75688\r\n\n			pqhmc				2005 - 2005		
3453	Journal of Social Psychology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14224\r\n\n			pqhmc				1994 - 		
3454	Journal of Special Education, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=14093\r\n\n			pqhmc				1997 - 		
3455	Journal of Speech and Hearing Disorders, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=17691\r\n\n			pqhmc				 - 		
3456	Journal of Speech, Language, and Hearing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=17692\r\n\n			pqhmc				1997 - 		
3457	Journal of Sports Medicine and Physical Fitness	http://proquest.umi.com/pqdlink?RQT=318&PMID=11574\r\n\n			pqhmc				1999 - 		
3458	Journal of Strength and Conditioning Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68236\r\n\n		180	pqhmc				 - 2005		
3459	Journal of Studies on Alcohol and Drugs	http://proquest.umi.com/pqdlink?RQT=318&PMID=28928\r\n\n			pqhmc				 - 		
3460	Journal of Substance Abuse Treatment	http://proquest.umi.com/pqdlink?RQT=318&PMID=8166\r\n\n			pqhmc				 - 		
3461	Journal of Telemedicine and Telecare	http://proquest.umi.com/pqdlink?RQT=318&PMID=59210\r\n\n			pqhmc				2003 - 2006		
3462	Journal of Thrombosis and Thrombolysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=55677\r\n\n			pqhmc				1999 - 2004		
3463	Journal of Trace Elements in Medicine and Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48513\r\n\n			pqhmc				2001 - 2004		
3464	Journal of Translational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68360\r\n\n			pqhmc				2005 - 		
3465	Journal of Trauma Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37460\r\n\n			pqhmc				1998 - 		
3466	Journal of Traumatic Stress	http://proquest.umi.com/pqdlink?RQT=318&PMID=69713\r\n\n			pqhmc				 - 		
3467	Journal of Tropical Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=53324\r\n\n			pqhmc				 - 		
3468	Journal of Validation Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66588\r\n\n			pqhmc				2006 - 		
3469	Journal of Vascular Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=27452\r\n\n			pqhmc				1996 - 2003		
3470	Journal of Visual Communication in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38662\r\n\n			pqhmc				2000 - 2000		
3471	Journal of the American Academy of Child and Adolescent Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=12493\r\n\n			pqhmc				 - 		
3472	Journal of the American Academy of Nurse Practitioners	http://proquest.umi.com/pqdlink?RQT=318&PMID=39096\r\n\n			pqhmc				1999 - 		
3473	Journal of the American Academy of Psychoanalysis and Dynamic Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=37944\r\n\n			pqhmc				1998 - 		
3474	Journal of the American Animal Hospital Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=49611\r\n\n			pqhmc				2002 - 2003		
3475	Journal of the American Geriatrics Society	http://proquest.umi.com/pqdlink?RQT=318&PMID=27790\r\n\n			pqhmc				 - 		
3476	Journal of the American Medical Informatics Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=46163\r\n\n			pqhmc				2001 - 2006		
3478	Journal of the Association of Nurses in AIDS Care, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=35937\r\n\n			pqhmc				 - 		
3479	Journal of the Experimental Analysis of Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=12503\r\n\n		180	pqhmc				 - 		
3480	Journal of the History of Ideas	http://proquest.umi.com/pqdlink?RQT=318&PMID=23494\r\n\n			pqhmc				2002 - 		
3481	Journal of the History of Medicine and Allied Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=53229\r\n\n			pqhmc				 - 		
3482	Journal of the International Neuropsychological Society : JINS	http://proquest.umi.com/pqdlink?RQT=318&PMID=80013\r\n\n		365	pqhmc				 - 2004		
3483	Journal of the Learning Sciences, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=66289\r\n\n			pqhmc				 - 		
3484	Journal of the Medical Library Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=67341\r\n\n			pqhmc				2003 - 		
3485	Journal of the National Cancer Institute	http://proquest.umi.com/pqdlink?RQT=318&PMID=27377\r\n\n			pqhmc				1997 - 2003		
3486	Journal of the National Medical Association	http://proquest.umi.com/pqdlink?RQT=318&PMID=36998\r\n\n			pqhmc				1998 - 		
3490	Kansas Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=39095\r\n\n			pqhmc				1999 - 2006		
3491	Kennedy Institute of Ethics Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=53555\r\n\n		365	pqhmc				 - 		
3492	Kentucky Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=54246\r\n\n			pqhmc				2003 - 2006		
3493	Kidney & Blood Pressure Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=10188\r\n\n			pqhmc				1996 - 2003		
3494	Kidney International	http://proquest.umi.com/pqdlink?RQT=318&PMID=70303\r\n\n			pqhmc				 - 		
3495	Kinetoplastid Biology and Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=68361\r\n\n			pqhmc				2005 - 2005		
3496	Klinik Psikofarmakoloji Bulteni	http://proquest.umi.com/pqdlink?RQT=318&PMID=67966\r\n\n			pqhmc				2005 - 2006		
3497	Lab Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67456\r\n\n			pqhmc				2005 - 		
3498	Laboratory Animals	http://proquest.umi.com/pqdlink?RQT=318&PMID=59211\r\n\n			pqhmc				2003 - 2006		
3499	Laboratory Investigation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68911\r\n\n			pqhmc				 - 		
3500	Lamp, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=73243\r\n\n			pqhmc				 - 		
3501	Lancet, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28154\r\n\n		60	pqhmc				 - 		
3502	Language and Speech	http://proquest.umi.com/pqdlink?RQT=318&PMID=38017\r\n\n			pqhmc				1998 - 		
3503	Language, Speech & Hearing Services in Schools	http://proquest.umi.com/pqdlink?RQT=318&PMID=17693\r\n\n			pqhmc				1997 - 		
3505	Law and Human Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=53485\r\n\n			pqhmc				 - 		
3506	Learning & Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=22958\r\n\n			pqhmc				2004 - 		
3507	Learning Disability Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=77193\r\n\n			pqhmc				2006 - 		
3705	Paediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38809\r\n\n			pqhmc				1999 - 		
3508	Legal and Criminological Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67666\r\n\n			pqhmc				2004 - 2006		
3509	Leukemia	http://proquest.umi.com/pqdlink?RQT=318&PMID=68913\r\n\n			pqhmc				 - 		
3510	Life Science Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=56215\r\n\n			pqhmc				2003 - 		
3511	Lifetime Data Analysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=53486\r\n\n			pqhmc				 - 		
3512	Lipids	http://proquest.umi.com/pqdlink?RQT=318&PMID=67242\r\n\n			pqhmc				2004 - 		
3513	Lipids in Health and Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=68362\r\n\n			pqhmc				2005 - 2005		
3514	Literature and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53845\r\n\n		365	pqhmc				 - 2002		
3515	Long-Term Living	http://proquest.umi.com/pqdlink?RQT=318&PMID=27339\r\n\n			pqhmc				1991 - 		
3516	Lung	http://proquest.umi.com/pqdlink?RQT=318&PMID=65730\r\n\n			pqhmc				2002 - 2003		
3517	Lupus	http://proquest.umi.com/pqdlink?RQT=318&PMID=66723\r\n\n			pqhmc				 - 		
3518	MD Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67461\r\n\n			pqhmc				2005 - 		
3519	MGMA Connexion	http://proquest.umi.com/pqdlink?RQT=318&PMID=56856\r\n\n			pqhmc				2003 - 2006		
3520	MMWR. Morbidity and Mortality Weekly Report	http://proquest.umi.com/pqdlink?RQT=318&PMID=15976\r\n\n			pqhmc				1998 - 		
3521	Malaria Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68363\r\n\n			pqhmc				 - 		
3522	Malaria Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=56214\r\n\n			pqhmc				2003 - 		
3523	Managed Care Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67459\r\n\n			pqhmc				2005 - 		
3524	Managed Care Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=37441\r\n\n			pqhmc				1998 - 2006		
3525	Managed Care Weekly Digest	http://proquest.umi.com/pqdlink?RQT=318&PMID=51271\r\n\n			pqhmc				2002 - 		
3526	Managed Healthcare Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=10661\r\n\n			pqhmc				1997 - 		
3527	Management Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=26260\r\n\n			pqhmc				1991 - 		
3528	Management of Environmental Quality	http://proquest.umi.com/pqdlink?RQT=318&PMID=11883\r\n\n		365	pqhmc				 - 1992		
3529	Marketing Health Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=15686\r\n\n			pqhmc				1992 - 2002		
3530	Materials Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=66576\r\n\n			pqhmc				2004 - 2006		
3531	Maternal and Child Health Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=55678\r\n\n			pqhmc				 - 		
3532	Mathematical Medicine and Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53268\r\n\n			pqhmc				 - 		
3534	Mayo Clinic Proceedings	http://proquest.umi.com/pqdlink?RQT=318&PMID=18188\r\n\n			pqhmc				1997 - 		
3535	Measurement in Physical Education and Exercise Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=67682\r\n\n			pqhmc				 - 		
3536	Medeconomics	http://proquest.umi.com/pqdlink?RQT=318&PMID=55736\r\n\n			pqhmc				2003 - 2005		
3537	Medical Anthropology Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=44287\r\n\n			pqhmc				2001 - 		
3540	Medical Decision Making	http://proquest.umi.com/pqdlink?RQT=318&PMID=32219\r\n\n			pqhmc				 - 		
3541	Medical Device Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67462\r\n\n			pqhmc				2005 - 		
3542	Medical Device Technology	http://proquest.umi.com/pqdlink?RQT=318&PMID=42620\r\n\n			pqhmc				 - 		
3543	Medical Devices & Surgical Technology Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51263\r\n\n			pqhmc				1998 - 		
3544	Medical Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=27473\r\n\n			pqhmc				1994 - 		
3545	Medical History	http://proquest.umi.com/pqdlink?RQT=318&PMID=16707\r\n\n			pqhmc				1997 - 		
3546	Medical Imaging Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67463\r\n\n			pqhmc				2005 - 		
3547	Medical Imaging Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67464\r\n\n			pqhmc				2005 - 		
3548	Medical Journal of Australia	http://proquest.umi.com/pqdlink?RQT=318&PMID=59497\r\n\n			pqhmc				2004 - 		
3550	Medical Laser Application	http://proquest.umi.com/pqdlink?RQT=318&PMID=48514\r\n\n			pqhmc				2002 - 2004		
3551	Medical Law Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=53326\r\n\n			pqhmc				 - 		
3552	Medical Letter on Drugs and Therapeutics	http://proquest.umi.com/pqdlink?RQT=318&PMID=27220\r\n\n			pqhmc				 - 		
3553	Medical Letter on the CDC & FDA	http://proquest.umi.com/pqdlink?RQT=318&PMID=51275\r\n\n			pqhmc				1995 - 		
3554	Medical Marketing and Media	http://proquest.umi.com/pqdlink?RQT=318&PMID=23956\r\n\n			pqhmc				1991 - 		
3555	Medical Microbiology and Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65696\r\n\n			pqhmc				 - 		
3556	Medical Molecular Morphology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65760\r\n\n			pqhmc				 - 		
3557	Medical Patent Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67465\r\n\n			pqhmc				2005 - 		
3558	Medical Patent Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67466\r\n\n			pqhmc				2005 - 		
3559	Medical Post	http://proquest.umi.com/pqdlink?RQT=318&PMID=53170\r\n\n			pqhmc				1996 - 		
3560	Medical Teacher	http://proquest.umi.com/pqdlink?RQT=318&PMID=9875\r\n\n			pqhmc				1997 - 2000		
3561	Medical Update	http://proquest.umi.com/pqdlink?RQT=318&PMID=35985\r\n\n			pqhmc				1998 - 2005		
3562	Medical World News	http://proquest.umi.com/pqdlink?RQT=318&PMID=26414\r\n\n			pqhmc				 - 		
3563	Medicine and Health Rhode Island	http://proquest.umi.com/pqdlink?RQT=318&PMID=53208\r\n\n			pqhmc				2003 - 2006		
3564	Medicine, Health Care, and Philosophy	http://proquest.umi.com/pqdlink?RQT=318&PMID=55679\r\n\n			pqhmc				 - 		
3565	Medizinhistorisches Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=48515\r\n\n			pqhmc				 - 		
3566	Medsurg Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37440\r\n\n			pqhmc				1998 - 		
3568	Memory & Cognition	http://proquest.umi.com/pqdlink?RQT=318&PMID=22960\r\n\n			pqhmc				2004 - 		
3569	Mental Health Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67467\r\n\n			pqhmc				2005 - 		
3570	Mental Health Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=77191\r\n\n			pqhmc				2006 - 		
3571	Mental Health Services Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55680\r\n\n			pqhmc				 - 		
3572	Mental Health Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=59280\r\n\n			pqhmc				2004 - 		
3573	Mental Health Weekly Digest	http://proquest.umi.com/pqdlink?RQT=318&PMID=56208\r\n\n			pqhmc				2003 - 		
3574	Mental and Physical Disability Law Reporter	http://proquest.umi.com/pqdlink?RQT=318&PMID=79796\r\n\n			pqhmc				2007 - 		
3575	Metabolic Brain Disease	http://proquest.umi.com/pqdlink?RQT=318&PMID=55681\r\n\n			pqhmc				1997 - 2004		
3576	Microbial Cell Factories	http://proquest.umi.com/pqdlink?RQT=318&PMID=68365\r\n\n			pqhmc				2005 - 2005		
3577	Microbial Drug Resistance	http://proquest.umi.com/pqdlink?RQT=318&PMID=66584\r\n\n			pqhmc				 - 		
3578	Microbiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=48516\r\n\n			pqhmc				2002 - 2004		
3579	Microscopy and Microanalysis	http://proquest.umi.com/pqdlink?RQT=318&PMID=80019\r\n\n			pqhmc				 - 		
3580	Milbank Quarterly, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=29216\r\n\n			pqhmc				 - 		
3581	Military Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38133\r\n\n			pqhmc				1998 - 		
3582	Mind, Culture, and Activity	http://proquest.umi.com/pqdlink?RQT=318&PMID=67675\r\n\n			pqhmc				 - 		
3583	Minority Nurse Newsletter	http://proquest.umi.com/pqdlink?RQT=318&PMID=38582\r\n\n			pqhmc				1998 - 2004		
3584	Modern Healthcare	http://proquest.umi.com/pqdlink?RQT=318&PMID=20762\r\n\n			pqhmc				1999 - 		
3585	Modern Hygienist	http://proquest.umi.com/pqdlink?RQT=318&PMID=75591\r\n\n			pqhmc				2006 - 		
3586	Modern Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68916\r\n\n			pqhmc				 - 		
3587	Modern Rheumatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65734\r\n\n			pqhmc				 - 		
3588	Molecular Biology and Evolution	http://proquest.umi.com/pqdlink?RQT=318&PMID=78901\r\n\n		365	pqhmc				 - 2007		
3589	Molecular Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68366\r\n\n			pqhmc				 - 		
3590	Molecular Human Reproduction	http://proquest.umi.com/pqdlink?RQT=318&PMID=53327\r\n\n			pqhmc				 - 		
3591	Molecular Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=68917\r\n\n			pqhmc				 - 		
3592	Molecular Systems Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68918\r\n\n			pqhmc				 - 		
3593	Multiple Sclerosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=66698\r\n\n			pqhmc				 - 		
3594	Mutagenesis	http://proquest.umi.com/pqdlink?RQT=318&PMID=68504\r\n\n			pqhmc				 - 		
3595	Mycopathologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=55682\r\n\n			pqhmc				 - 		
3597	NFPA Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=12513\r\n\n			pqhmc				1996 - 		
3598	National Institutes of Health (NIH) Documents / FIND	http://proquest.umi.com/pqdlink?RQT=318&PMID=68538\r\n\n			pqhmc				2005 - 		
3599	Nature	http://proquest.umi.com/pqdlink?RQT=318&PMID=28221\r\n\n			pqhmc				1995 - 2005		
3600	Nature Biotechnology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68919\r\n\n			pqhmc				 - 		
3601	Nature Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68920\r\n\n			pqhmc				 - 		
3602	Nature Chemical Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68921\r\n\n			pqhmc				 - 		
3603	Nature Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68922\r\n\n			pqhmc				 - 		
3604	Nature Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68923\r\n\n			pqhmc				 - 		
3605	Nature Materials	http://proquest.umi.com/pqdlink?RQT=318&PMID=68924\r\n\n			pqhmc				 - 		
3606	Nature Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68925\r\n\n			pqhmc				 - 		
3607	Nature Methods	http://proquest.umi.com/pqdlink?RQT=318&PMID=68926\r\n\n			pqhmc				 - 		
3608	Nature Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68927\r\n\n			pqhmc				 - 		
3609	Nature Reviews. Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=68928\r\n\n			pqhmc				 - 		
3610	Nature Reviews. Drug Discovery	http://proquest.umi.com/pqdlink?RQT=318&PMID=68929\r\n\n			pqhmc				 - 		
3611	Nature Reviews. Genetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68930\r\n\n			pqhmc				 - 		
3612	Nature Reviews. Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68931\r\n\n			pqhmc				 - 		
3613	Nature Reviews. Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68932\r\n\n			pqhmc				 - 		
3614	Nature Reviews. Molecular Cell Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68933\r\n\n			pqhmc				 - 		
3615	Nature Reviews. Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=68934\r\n\n			pqhmc				 - 		
3616	Nature Structural & Molecular Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68935\r\n\n			pqhmc				 - 		
3617	Navy Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37336\r\n\n			pqhmc				1998 - 2006		
3618	Neonatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66451\r\n\n			pqhmc				 - 		
3619	Nephrology Nursing Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=35800\r\n\n			pqhmc				1997 - 		
3620	Nephrology, Dialysis, Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=68505\r\n\n			pqhmc				 - 		
3621	Nephron	http://proquest.umi.com/pqdlink?RQT=318&PMID=27426\r\n\n			pqhmc				1997 - 2003		
3622	Neurocase	http://proquest.umi.com/pqdlink?RQT=318&PMID=53225\r\n\n			pqhmc				 - 		
3623	Neurochemical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55683\r\n\n			pqhmc				1999 - 2004		
3624	Neuroendocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=27427\r\n\n			pqhmc				1997 - 2003		
3625	Neuroepidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37873\r\n\n			pqhmc				1998 - 2003		
3626	Neurogenetics	http://proquest.umi.com/pqdlink?RQT=318&PMID=65703\r\n\n			pqhmc				 - 		
3627	Neurological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=38000\r\n\n			pqhmc				 - 		
3628	Neurological Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=66966\r\n\n			pqhmc				 - 		
3629	Neurology India	http://proquest.umi.com/pqdlink?RQT=318&PMID=67947\r\n\n			pqhmc				2004 - 		
3630	Neurophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55684\r\n\n			pqhmc				 - 		
3631	Neuropsychobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37874\r\n\n			pqhmc				1998 - 2003		
3632	Neuropsychology Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=69714\r\n\n			pqhmc				 - 		
3633	Neuropsychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68936\r\n\n			pqhmc				 - 		
3634	Neuroradiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65698\r\n\n			pqhmc				2002 - 2003		
3635	Neuroscience and Behavioral Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=55685\r\n\n			pqhmc				 - 		
3636	New Editions, Health World	http://proquest.umi.com/pqdlink?RQT=318&PMID=10829\r\n\n			pqhmc				1996 - 1996		
3637	New England Journal of Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=28691\r\n\n		90	pqhmc				 - 1996		
3638	New Jersey Nurse	http://proquest.umi.com/pqdlink?RQT=318&PMID=56350\r\n\n			pqhmc				2003 - 2006		
3639	New York State Dental Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=37337\r\n\n			pqhmc				1998 - 2006		
3640	Noise & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=80710\r\n\n			pqhmc				1998 - 		
3641	Nuclear Receptor	http://proquest.umi.com/pqdlink?RQT=318&PMID=68368\r\n\n			pqhmc				2005 - 2005		
3642	Nucleic Acids Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=53227\r\n\n			pqhmc				 - 		
3643	Nurse Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=39399\r\n\n			pqhmc				1999 - 2004		
3644	Nurse Researcher	http://proquest.umi.com/pqdlink?RQT=318&PMID=39056\r\n\n			pqhmc				1998 - 		
3645	Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=20469\r\n\n			pqhmc				1995 - 2004		
3646	Nursing Administration Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=36020\r\n\n			pqhmc				 - 		
3647	Nursing BC	http://proquest.umi.com/pqdlink?RQT=318&PMID=38544\r\n\n			pqhmc				1998 - 		
3648	Nursing Economics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36025\r\n\n			pqhmc				1998 - 		
3649	Nursing Education Perspectives	http://proquest.umi.com/pqdlink?RQT=318&PMID=43404\r\n\n			pqhmc				2001 - 		
3650	Nursing Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=66568\r\n\n			pqhmc				 - 		
3651	Nursing Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=36030\r\n\n			pqhmc				1997 - 		
3652	Nursing History Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=68389\r\n\n			pqhmc				2005 - 		
3653	Nursing Home & Elder Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67468\r\n\n			pqhmc				2005 - 		
3654	Nursing Journal of India	http://proquest.umi.com/pqdlink?RQT=318&PMID=49927\r\n\n			pqhmc				2002 - 2006		
3655	Nursing Leadership Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=68390\r\n\n			pqhmc				2005 - 2005		
3658	Nursing Older People	http://proquest.umi.com/pqdlink?RQT=318&PMID=38807\r\n\n			pqhmc				1999 - 		
3659	Nursing Standard	http://proquest.umi.com/pqdlink?RQT=318&PMID=36596\r\n\n			pqhmc				1998 - 		
3660	Nursing and Health Sciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=67154\r\n\n			pqhmc				 - 		
3661	Nutrition Action Health Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=11581\r\n\n			pqhmc				1995 - 		
3662	Nutrition Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=13287\r\n\n			pqhmc				1997 - 2000		
3663	Nutrition Health Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=11481\r\n\n			pqhmc				1998 - 		
3664	Nutrition Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68369\r\n\n			pqhmc				2005 - 2005		
3665	Nutrition Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=28287\r\n\n			pqhmc				1994 - 2007		
3666	Nutrition Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=21332\r\n\n			pqhmc				 - 		
3667	O & P Business News : Linking the Orthotic and Prosthetic Profession	http://proquest.umi.com/pqdlink?RQT=318&PMID=80702\r\n\n			pqhmc				2008 - 		
3668	OBGYN & Reproduction Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56210\r\n\n			pqhmc				2003 - 		
3669	OH & S Canada	http://proquest.umi.com/pqdlink?RQT=318&PMID=12002\r\n\n			pqhmc				1994 - 2006		
3670	ONS Connect	http://proquest.umi.com/pqdlink?RQT=318&PMID=71689\r\n\n			pqhmc				2005 - 		
3671	OQ	http://proquest.umi.com/pqdlink?RQT=318&PMID=36047\r\n\n			pqhmc				1998 - 2005		
3672	OR Manager	http://proquest.umi.com/pqdlink?RQT=318&PMID=40571\r\n\n			pqhmc				2000 - 2006		
3673	ORL : Journal for Oto - Rhino - Laryngology and Its Related Specialties	http://proquest.umi.com/pqdlink?RQT=318&PMID=66462\r\n\n			pqhmc				 - 		
3675	Obesity & Diabetes Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56209\r\n\n			pqhmc				2003 - 		
3676	Obesity, Fitness & Wellness Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51265\r\n\n			pqhmc				1999 - 		
3677	Occupational Hazards	http://proquest.umi.com/pqdlink?RQT=318&PMID=28592\r\n\n			pqhmc				1991 - 		
3678	Occupational Health & Safety	http://proquest.umi.com/pqdlink?RQT=318&PMID=28654\r\n\n			pqhmc				1992 - 2006		
3679	Occupational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53453\r\n\n			pqhmc				 - 		
3680	Occupational Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=53453\r\n\n			pqhmc				 - 		
3681	Occupational and Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=28086\r\n\n			pqhmc				1997 - 2003		
3682	Ocular Surgery News	http://proquest.umi.com/pqdlink?RQT=318&PMID=80707\r\n\n			pqhmc				2008 - 		
3683	Ocular Surgery News	http://proquest.umi.com/pqdlink?RQT=318&PMID=80707\r\n\n			pqhmc				 - 2008		
3685	Oligonucleotides	http://proquest.umi.com/pqdlink?RQT=318&PMID=66686\r\n\n			pqhmc				 - 		
3687	Oncogene	http://proquest.umi.com/pqdlink?RQT=318&PMID=68937\r\n\n			pqhmc				 - 		
3688	Oncology Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67469\r\n\n			pqhmc				2005 - 		
3689	Oncology Nursing Forum	http://proquest.umi.com/pqdlink?RQT=318&PMID=71691\r\n\n			pqhmc				2005 - 		
3692	Onderstepoort Journal of Veterinary Research, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=38653\r\n\n			pqhmc				1998 - 2005		
3693	Online Journal of Issues in Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=67067\r\n\n			pqhmc				 - 		
3694	Ophthalmic Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66460\r\n\n			pqhmc				 - 		
3695	Ophthalmic Surgery, Lasers and Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=37008\r\n\n			pqhmc				1998 - 		
3696	Ophthalmologica	http://proquest.umi.com/pqdlink?RQT=318&PMID=66461\r\n\n			pqhmc				 - 		
3697	Oral Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=54990\r\n\n			pqhmc				1996 - 		
3698	Orthopaedic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36037\r\n\n			pqhmc				1998 - 		
3700	Orthopedics	http://proquest.umi.com/pqdlink?RQT=318&PMID=36483\r\n\n			pqhmc				1998 - 2007		
3701	Orthopedics Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=80703\r\n\n			pqhmc				2008 - 		
3702	Osteoporosis International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66967\r\n\n			pqhmc				 - 		
3703	PA AP Presion Arterial Revista de Hipertension Para la Atencion Primaria	http://proquest.umi.com/pqdlink?RQT=318&PMID=67262\r\n\n			pqhmc				 - 		
3704	PN	http://proquest.umi.com/pqdlink?RQT=318&PMID=11484\r\n\n			pqhmc				 - 		
3706	Pain & Central Nervous System Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51266\r\n\n			pqhmc				1998 - 		
3707	Pain Research & Management : The Journal of the Canadian Pain Society	http://proquest.umi.com/pqdlink?RQT=318&PMID=55046\r\n\n			pqhmc				2006 - 		
3708	Pain Reviews	http://proquest.umi.com/pqdlink?RQT=318&PMID=66563\r\n\n			pqhmc				 - 		
3709	Palliative & Supportive Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=79055\r\n\n			pqhmc				2003 - 2007		
3710	Palliative Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66694\r\n\n			pqhmc				 - 		
3711	Pancreatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66452\r\n\n			pqhmc				 - 		
3712	Parasitology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79054\r\n\n			pqhmc				2003 - 		
3713	Pathobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=10191\r\n\n			pqhmc				1997 - 2002		
3714	Pathology, Research and Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=48517\r\n\n			pqhmc				2001 - 2005		
3715	Patient Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=53179\r\n\n			pqhmc				 - 		
3716	Patient Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=53179\r\n\n			pqhmc				2002 - 2006		
3717	Patient Care Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37182\r\n\n			pqhmc				 - 		
3718	Pediatric Annals	http://proquest.umi.com/pqdlink?RQT=318&PMID=37016\r\n\n			pqhmc				1998 - 		
3719	Pediatric Nephrology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79090\r\n\n			pqhmc				 - 		
3720	Pediatric Neurosurgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66459\r\n\n			pqhmc				 - 		
3721	Pediatric Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36049\r\n\n			pqhmc				1997 - 		
3722	Pediatric Radiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=79093\r\n\n			pqhmc				 - 		
3723	Pediatric Surgery International	http://proquest.umi.com/pqdlink?RQT=318&PMID=79095\r\n\n			pqhmc				 - 		
3724	Pediatric and Developmental Pathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=70299\r\n\n		180	pqhmc				 - 		
3725	Pediatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=23202\r\n\n			pqhmc				 - 		
3726	Pediatrics International	http://proquest.umi.com/pqdlink?RQT=318&PMID=67160\r\n\n			pqhmc				 - 		
3727	Pediatrics for Parents	http://proquest.umi.com/pqdlink?RQT=318&PMID=36054\r\n\n			pqhmc				1998 - 		
3728	Pedobiologia	http://proquest.umi.com/pqdlink?RQT=318&PMID=48523\r\n\n			pqhmc				2002 - 2005		
3730	Perfusion	http://proquest.umi.com/pqdlink?RQT=318&PMID=66561\r\n\n			pqhmc				 - 		
3731	Personnel Today	http://proquest.umi.com/pqdlink?RQT=318&PMID=59481\r\n\n			pqhmc				2003 - 		
3732	Perspectives in Biology and Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=26770\r\n\n		365	pqhmc				 - 		
3733	Perspectives in Psychiatric Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=36055\r\n\n			pqhmc				1997 - 		
3734	Perspectives on Sexual and Reproductive Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=23177\r\n\n			pqhmc				1994 - 		
3735	Pharma Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56211\r\n\n			pqhmc				2003 - 		
3737	Pharmaceutical Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=13756\r\n\n			pqhmc				1994 - 		
3738	Pharmaceutical Executive Europe	http://proquest.umi.com/pqdlink?RQT=318&PMID=75590\r\n\n			pqhmc				2006 - 		
3739	Pharmaceutical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=55686\r\n\n			pqhmc				1997 - 2004		
3740	Pharmacogenomics Journal, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=68938\r\n\n			pqhmc				 - 		
3741	Pharmacy Post	http://proquest.umi.com/pqdlink?RQT=318&PMID=53180\r\n\n			pqhmc				2002 - 2006		
3742	Pharmacy World & Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55687\r\n\n			pqhmc				 - 		
3743	Phlebology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66632\r\n\n			pqhmc				2004 - 2006		
3744	Photochemistry and Photobiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38649\r\n\n			pqhmc				1998 - 		
3745	Physical Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=28675\r\n\n			pqhmc				1996 - 		
3746	Physician Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67560\r\n\n			pqhmc				2005 - 		
3747	Physician Executive	http://proquest.umi.com/pqdlink?RQT=318&PMID=66333\r\n\n			pqhmc				2004 - 2006		
3748	Physician and Sportsmedicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=21539\r\n\n			pqhmc				 - 		
3749	Physiological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68410\r\n\n			pqhmc				2005 - 		
3750	Phytomedicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=48518\r\n\n			pqhmc				2001 - 2005		
3751	Pituitary	http://proquest.umi.com/pqdlink?RQT=318&PMID=55688\r\n\n			pqhmc				 - 		
3752	Plant & Cell Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=53230\r\n\n			pqhmc				 - 		
3753	Plant Cell	http://proquest.umi.com/pqdlink?RQT=318&PMID=38578\r\n\n			pqhmc				1998 - 		
3754	Plant Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=38577\r\n\n			pqhmc				1998 - 		
3755	Plastic Surgical Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=36061\r\n\n			pqhmc				1997 - 2003		
3756	Population Health Metrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=68370\r\n\n			pqhmc				2005 - 2005		
3757	Postgraduate Medical Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=38447\r\n\n			pqhmc				1999 - 2003		
3758	Postgraduate Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=27088\r\n\n			pqhmc				2000 - 2006		
3759	Poultry Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=57135\r\n\n			pqhmc				2003 - 2008		
3760	Practitioner	http://proquest.umi.com/pqdlink?RQT=318&PMID=34622\r\n\n			pqhmc				1998 - 		
3761	Prehospital Emergency Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=46165\r\n\n			pqhmc				2001 - 		
3762	Prevention	http://proquest.umi.com/pqdlink?RQT=318&PMID=23645\r\n\n			pqhmc				1995 - 		
3763	Prevention Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=55689\r\n\n			pqhmc				 - 		
3764	Preventive Medicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67562\r\n\n			pqhmc				2005 - 		
3765	Primary Care Optometry News	http://proquest.umi.com/pqdlink?RQT=318&PMID=80700\r\n\n			pqhmc				2008 - 		
3766	Primary Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=77194\r\n\n			pqhmc				2006 - 		
3767	Primary Health Care Research & Development	http://proquest.umi.com/pqdlink?RQT=318&PMID=66725\r\n\n			pqhmc				 - 		
3768	Primates	http://proquest.umi.com/pqdlink?RQT=318&PMID=65702\r\n\n			pqhmc				 - 		
5539	Leukemia	http://search.proquest.com/publication/30521		365	pq2011						\N
3770	Proceedings of the Nutrition Society, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=80043\r\n\n		365	pqhmc				 - 2006		
3771	Professional Safety	http://proquest.umi.com/pqdlink?RQT=318&PMID=20380\r\n\n			pqhmc				1991 - 		
3772	Progress in Histochemistry and Cytochemistry	http://proquest.umi.com/pqdlink?RQT=318&PMID=48519\r\n\n			pqhmc				2001 - 2004		
3773	Progress in Transplantation	http://proquest.umi.com/pqdlink?RQT=318&PMID=58342\r\n\n			pqhmc				2003 - 		
3775	Prostate Cancer and Prostatic Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=68939\r\n\n			pqhmc				 - 		
3777	Proteome Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=68371\r\n\n			pqhmc				2005 - 2005		
3778	Proteomics Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51272\r\n\n			pqhmc				2002 - 		
3779	Protist	http://proquest.umi.com/pqdlink?RQT=318&PMID=48524\r\n\n			pqhmc				2001 - 2004		
3780	Psychiatric Annals	http://proquest.umi.com/pqdlink?RQT=318&PMID=37014\r\n\n			pqhmc				1998 - 		
3781	Psychiatric Quarterly	http://proquest.umi.com/pqdlink?RQT=318&PMID=69715\r\n\n			pqhmc				 - 		
3782	Psychiatric Rehabilitation Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=36067\r\n\n			pqhmc				1998 - 2006		
3783	Psychiatric Services	http://proquest.umi.com/pqdlink?RQT=318&PMID=68775\r\n\n			pqhmc				2005 - 		
3784	Psychiatry	http://proquest.umi.com/pqdlink?RQT=318&PMID=28651\r\n\n			pqhmc				1994 - 		
3785	Psycho - Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66270\r\n\n			pqhmc				 - 		
3786	Psychoanalytic Dialogues	http://proquest.umi.com/pqdlink?RQT=318&PMID=67284\r\n\n		180	pqhmc				 - 2004		
3787	Psychoanalytic Inquiry	http://proquest.umi.com/pqdlink?RQT=318&PMID=67286\r\n\n		180	pqhmc				 - 2004		
3788	Psychoanalytic Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=37929\r\n\n			pqhmc				1998 - 		
3789	Psychogeriatrics	http://proquest.umi.com/pqdlink?RQT=318&PMID=67280\r\n\n			pqhmc				 - 		
3790	Psychological Inquiry	http://proquest.umi.com/pqdlink?RQT=318&PMID=66294\r\n\n			pqhmc				 - 		
3791	Psychological Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66193\r\n\n			pqhmc				2007 - 		
3792	Psychological Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=65739\r\n\n			pqhmc				 - 		
3793	Psychology and Psychotherapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37367\r\n\n			pqhmc				1998 - 2006		
3794	Psychometrika	http://proquest.umi.com/pqdlink?RQT=318&PMID=69716\r\n\n			pqhmc				 - 		
3795	Psychonomic Bulletin & Review	http://proquest.umi.com/pqdlink?RQT=318&PMID=67993\r\n\n			pqhmc				2004 - 		
3796	Psychopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=37875\r\n\n			pqhmc				1998 - 2003		
3797	Psychopharmacology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66968\r\n\n			pqhmc				 - 		
3798	Psychopharmacology Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=23652\r\n\n			pqhmc				1995 - 1998		
3799	Psychophysiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67164\r\n\n			pqhmc				 - 		
3800	Psychosomatic Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66366\r\n\n			pqhmc				 - 		
3801	Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37033\r\n\n			pqhmc				1998 - 		
3802	Psychotherapy and Psychosomatics	http://proquest.umi.com/pqdlink?RQT=318&PMID=37876\r\n\n			pqhmc				1998 - 2003		
3803	Public Health Nutrition	http://proquest.umi.com/pqdlink?RQT=318&PMID=80032\r\n\n		365	pqhmc				 - 2006		
3806	QJM	http://proquest.umi.com/pqdlink?RQT=318&PMID=53334\r\n\n			pqhmc				 - 		
3807	Qualitative Health Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=30413\r\n\n			pqhmc				 - 		
3808	Quality & Safety in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=38466\r\n\n			pqhmc				2001 - 2003		
3809	Quality Letter for Healthcare Leaders	http://proquest.umi.com/pqdlink?RQT=318&PMID=50652\r\n\n			pqhmc				2003 - 2004		
3810	Quality Management in Health Care	http://proquest.umi.com/pqdlink?RQT=318&PMID=37662\r\n\n			pqhmc				 - 		
3811	Quality in Ageing	http://proquest.umi.com/pqdlink?RQT=318&PMID=59281\r\n\n			pqhmc				2003 - 		
3812	Quarterly Journal of Nuclear Medicine and Molecular Imaging, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=37345\r\n\n			pqhmc				1998 - 		
3813	Quarterly Reviews of Biophysics	http://proquest.umi.com/pqdlink?RQT=318&PMID=79042\r\n\n			pqhmc				 - 		
3815	RN	http://proquest.umi.com/pqdlink?RQT=318&PMID=27477\r\n\n			pqhmc				 - 		
3816	Receivables Report, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=81304\r\n\n			pqhmc				2008 - 		
3817	Reclaiming Children and Youth	http://proquest.umi.com/pqdlink?RQT=318&PMID=37561\r\n\n			pqhmc				1998 - 		
3818	Regional Anesthesia and Pain Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36489\r\n\n			pqhmc				1998 - 		
3819	Rehabilitation Counseling Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=40603\r\n\n			pqhmc				2000 - 		
3820	Rehabilitation Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=38576\r\n\n			pqhmc				1998 - 		
3821	Reproductive Biology and Endocrinology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68372\r\n\n			pqhmc				 - 		
3822	Research Quarterly for Exercise and Sport	http://proquest.umi.com/pqdlink?RQT=318&PMID=28631\r\n\n			pqhmc				1994 - 		
3823	Research and Theory for Nursing Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=68393\r\n\n			pqhmc				1987 - 		
3824	Research in Healthcare Financial Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=66338\r\n\n			pqhmc				2004 - 2005		
3825	Research in Nursing & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=66271\r\n\n			pqhmc				 - 		
3826	Research on Aging	http://proquest.umi.com/pqdlink?RQT=318&PMID=16532\r\n\n			pqhmc				 - 		
3827	Research on Language and Social Interaction	http://proquest.umi.com/pqdlink?RQT=318&PMID=66295\r\n\n			pqhmc				 - 		
3828	Respiration	http://proquest.umi.com/pqdlink?RQT=318&PMID=66463\r\n\n			pqhmc				 - 		
3829	Respiratory Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=68373\r\n\n			pqhmc				 - 		
3830	Respiratory Therapeutics Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56212\r\n\n			pqhmc				2003 - 		
3831	Reviews in Endocrine & Metabolic Disorders	http://proquest.umi.com/pqdlink?RQT=318&PMID=55690\r\n\n			pqhmc				 - 		
3832	Reviews in Medical Virology	http://proquest.umi.com/pqdlink?RQT=318&PMID=67594\r\n\n			pqhmc				 - 		
3834	Rheumatology	http://proquest.umi.com/pqdlink?RQT=318&PMID=33532\r\n\n			pqhmc				1996 - 2001		
3835	Royal Society of Medicine (Great Britain). Journal of the Royal Society of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=45488\r\n\n			pqhmc				2001 - 2006		
3836	Safe Motherhood	http://proquest.umi.com/pqdlink?RQT=318&PMID=38547\r\n\n			pqhmc				1998 - 2004		
3837	Safety & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=28683\r\n\n			pqhmc				 - 		
3838	Safety & Health Practitioner, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=11728\r\n\n			pqhmc				1997 - 		
3839	Scandinavian Journal of Medicine and Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=67167\r\n\n			pqhmc				 - 		
3840	Scandinavian Journal of Work, Environment & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=79589\r\n\n			pqhmc				2007 - 		
3841	Schizophrenia Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=18315\r\n\n			pqhmc				1998 - 2005		
3842	Science	http://proquest.umi.com/pqdlink?RQT=318&PMID=28298\r\n\n			pqhmc				1992 - 2005		
3843	Science Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=51267\r\n\n			pqhmc				1996 - 		
3844	Scientific Studies of Reading	http://proquest.umi.com/pqdlink?RQT=318&PMID=67702\r\n\n			pqhmc				 - 		
3845	Scitech Book News	http://proquest.umi.com/pqdlink?RQT=318&PMID=69831\r\n\n			pqhmc				2000 - 		
3846	Second Opinion	http://proquest.umi.com/pqdlink?RQT=318&PMID=10839\r\n\n			pqhmc				 - 		
3847	Seminars in Immunopathology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66969\r\n\n			pqhmc				 - 		
3848	Sensing and Imaging	http://proquest.umi.com/pqdlink?RQT=318&PMID=55691\r\n\n			pqhmc				 - 		
3849	Sexual and Relationship Therapy	http://proquest.umi.com/pqdlink?RQT=318&PMID=37625\r\n\n			pqhmc				1998 - 2000		
3850	Sexuality and Disability	http://proquest.umi.com/pqdlink?RQT=318&PMID=69717\r\n\n			pqhmc				 - 		
3851	Sexually Transmitted Diseases	http://proquest.umi.com/pqdlink?RQT=318&PMID=19087\r\n\n			pqhmc				 - 		
3852	Sexually Transmitted Infections	http://proquest.umi.com/pqdlink?RQT=318&PMID=28072\r\n\n			pqhmc				1997 - 2003		
3853	Shape	http://proquest.umi.com/pqdlink?RQT=318&PMID=11553\r\n\n			pqhmc				1997 - 		
3854	Skin Pharmacology and Physiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66464\r\n\n			pqhmc				 - 		
3855	Sleep and Hypnosis	http://proquest.umi.com/pqdlink?RQT=318&PMID=67965\r\n\n			pqhmc				2004 - 		
3857	Social Choice and Welfare	http://proquest.umi.com/pqdlink?RQT=318&PMID=65742\r\n\n			pqhmc				 - 		
3858	Social History of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=79194\r\n\n			pqhmc				 - 		
3859	Social Psychiatry and Psychiatric Epidemiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=69718\r\n\n			pqhmc				 - 		
3860	Social Science & Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=8349\r\n\n			pqhmc				 - 		
3861	Social Security Bulletin	http://proquest.umi.com/pqdlink?RQT=318&PMID=28000\r\n\n			pqhmc				1992 - 		
3862	Social Theory & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=54738\r\n\n		365	pqhmc				 - 2003		
3863	Social Work	http://proquest.umi.com/pqdlink?RQT=318&PMID=27868\r\n\n			pqhmc				1995 - 		
3864	Sociology of Health & Illness	http://proquest.umi.com/pqdlink?RQT=318&PMID=67171\r\n\n			pqhmc				 - 		
3865	South Carolina Nurse, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=41650\r\n\n			pqhmc				2003 - 		
3866	Southeast Asian Journal of Tropical Medicine and Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=68709\r\n\n			pqhmc				2005 - 2006		
3867	Spinal Cord	http://proquest.umi.com/pqdlink?RQT=318&PMID=68940\r\n\n			pqhmc				 - 		
3868	Stapp Car Crash Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68554\r\n\n			pqhmc				2003 - 		
3869	Statistical Methods in Medical Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=66693\r\n\n			pqhmc				 - 		
3870	Statistics in Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66272\r\n\n			pqhmc				 - 		
3871	Stem Cell Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=51268\r\n\n			pqhmc				2001 - 		
3872	Strength and Conditioning Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68232\r\n\n		180	pqhmc				 - 2004		
3873	Stress and Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=66273\r\n\n			pqhmc				 - 		
3874	Stroke	http://proquest.umi.com/pqdlink?RQT=318&PMID=23419\r\n\n			pqhmc				 - 		
3875	Student BMJ	http://proquest.umi.com/pqdlink?RQT=318&PMID=45584\r\n\n			pqhmc				2002 - 2003		
3876	Studies in Family Planning	http://proquest.umi.com/pqdlink?RQT=318&PMID=11555\r\n\n			pqhmc				 - 		
3877	Suicide & Life - Threatening Behavior	http://proquest.umi.com/pqdlink?RQT=318&PMID=19183\r\n\n			pqhmc				1994 - 		
3878	Surgical Endoscopy	http://proquest.umi.com/pqdlink?RQT=318&PMID=66970\r\n\n			pqhmc				 - 		
3879	Surgical Practice	http://proquest.umi.com/pqdlink?RQT=318&PMID=67203\r\n\n			pqhmc				 - 		
3880	Systematic Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=36209\r\n\n			pqhmc				1998 - 2007		
3881	Systematic and Applied Microbiology	http://proquest.umi.com/pqdlink?RQT=318&PMID=48525\r\n\n			pqhmc				2001 - 2005		
3882	TB & Outbreaks Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51269\r\n\n			pqhmc				1995 - 		
3883	Teaching of Psychology	http://proquest.umi.com/pqdlink?RQT=318&PMID=19335\r\n\n			pqhmc				 - 		
3884	Techniques in Coloproctology	http://proquest.umi.com/pqdlink?RQT=318&PMID=65738\r\n\n			pqhmc				 - 		
3885	Telehealth Magazine	http://proquest.umi.com/pqdlink?RQT=318&PMID=38324\r\n\n			pqhmc				1998 - 1999		
3886	Telemedicine Business Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=68397\r\n\n			pqhmc				2005 - 		
3887	Telemedicine Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=67566\r\n\n			pqhmc				2005 - 		
3888	Therapeutic Drug Monitoring	http://proquest.umi.com/pqdlink?RQT=318&PMID=66368\r\n\n			pqhmc				 - 		
3889	Thorax	http://proquest.umi.com/pqdlink?RQT=318&PMID=28091\r\n\n			pqhmc				1997 - 2003		
3890	Thrombosis Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=68374\r\n\n			pqhmc				2005 - 2005		
3891	Tissue Engineering	http://proquest.umi.com/pqdlink?RQT=318&PMID=66678\r\n\n			pqhmc				 - 		
3892	Tobacco Control	http://proquest.umi.com/pqdlink?RQT=318&PMID=58254\r\n\n			pqhmc				2003 - 2003		
3893	Topics in Emergency Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36481\r\n\n			pqhmc				 - 		
3894	Topics in Health Information Management	http://proquest.umi.com/pqdlink?RQT=318&PMID=37282\r\n\n			pqhmc				 - 		
3895	Total Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=11446\r\n\n			pqhmc				1995 - 		
3896	Toxicology and Industrial Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=66727\r\n\n			pqhmc				 - 		
3897	Transplant International	http://proquest.umi.com/pqdlink?RQT=318&PMID=66971\r\n\n			pqhmc				 - 		
3898	Trauma	http://proquest.umi.com/pqdlink?RQT=318&PMID=66730\r\n\n			pqhmc				 - 		
3899	Trends in Health Care, Law & Ethics	http://proquest.umi.com/pqdlink?RQT=318&PMID=10841\r\n\n			pqhmc				 - 		
3900	Trends in Neurosciences	http://proquest.umi.com/pqdlink?RQT=318&PMID=8953\r\n\n			pqhmc				 - 		
3901	Tropical Animal Health and Production	http://proquest.umi.com/pqdlink?RQT=318&PMID=55692\r\n\n			pqhmc				 - 		
3902	Tropical Medicine and International Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=67176\r\n\n			pqhmc				 - 		
3903	Trustee	http://proquest.umi.com/pqdlink?RQT=318&PMID=22495\r\n\n			pqhmc				1991 - 		
3904	Tuberculosis Week	http://proquest.umi.com/pqdlink?RQT=318&PMID=56213\r\n\n			pqhmc				2003 - 		
3905	Tufts University Health & Nutrition Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=11557\r\n\n			pqhmc				1995 - 		
3906	Tumor Biology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66449\r\n\n			pqhmc				 - 		
3907	Turkish Journal of Cancer	http://proquest.umi.com/pqdlink?RQT=318&PMID=67756\r\n\n			pqhmc				2002 - 		
3908	Turkish Journal of Pediatrics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70488\r\n\n			pqhmc				2006 - 		
3909	U.S. Food & Drug Administration Documents / FIND	http://proquest.umi.com/pqdlink?RQT=318&PMID=68541\r\n\n			pqhmc				2005 - 		
3910	Ultrasound Review of Obstetrics and Gynecology	http://proquest.umi.com/pqdlink?RQT=318&PMID=56241\r\n\n			pqhmc				2003 - 2006		
3911	Undersea & Hyperbaric Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=37285\r\n\n			pqhmc				1998 - 		
3912	University of California, Berkeley, Wellness Letter	http://proquest.umi.com/pqdlink?RQT=318&PMID=11559\r\n\n			pqhmc				 - 		
3913	Urologic Nursing	http://proquest.umi.com/pqdlink?RQT=318&PMID=37457\r\n\n			pqhmc				1998 - 		
3914	Vaccine Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51274\r\n\n			pqhmc				1995 - 		
3915	Vascular Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=66731\r\n\n			pqhmc				 - 		
3916	Vascular and Endovascular Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=38339\r\n\n			pqhmc				1998 - 2005		
3917	Vegetarian Times	http://proquest.umi.com/pqdlink?RQT=318&PMID=18695\r\n\n			pqhmc				1997 - 		
3918	Veterinary Research Communications	http://proquest.umi.com/pqdlink?RQT=318&PMID=55693\r\n\n			pqhmc				 - 		
3919	Violence & Abuse Abstracts	http://proquest.umi.com/pqdlink?RQT=318&PMID=37605\r\n\n			pqhmc				 - 		
3920	Violence and Victims	http://proquest.umi.com/pqdlink?RQT=318&PMID=68394\r\n\n			pqhmc				1986 - 		
3921	Viral Immunology	http://proquest.umi.com/pqdlink?RQT=318&PMID=77294\r\n\n			pqhmc				 - 		
3922	Virus Genes	http://proquest.umi.com/pqdlink?RQT=318&PMID=55694\r\n\n			pqhmc				1999 - 2003		
3923	Virus Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=51281\r\n\n			pqhmc				1996 - 		
3924	Visual Neuroscience	http://proquest.umi.com/pqdlink?RQT=318&PMID=78999\r\n\n		365	pqhmc				 - 2003		
3925	Vital	http://proquest.umi.com/pqdlink?RQT=318&PMID=68941\r\n\n			pqhmc				 - 		
3926	Vox Sanguinis	http://proquest.umi.com/pqdlink?RQT=318&PMID=27420\r\n\n			pqhmc				 - 		
3927	Weekly Epidemiological Record	http://proquest.umi.com/pqdlink?RQT=318&PMID=38549\r\n\n			pqhmc				1998 - 2006		
3928	Weight Watchers Magazine	http://proquest.umi.com/pqdlink?RQT=318&PMID=16476\r\n\n			pqhmc				 - 		
3929	Western Journal of Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=36053\r\n\n			pqhmc				1998 - 2002		
3930	Western Journal of Nursing Research	http://proquest.umi.com/pqdlink?RQT=318&PMID=13649\r\n\n			pqhmc				 - 		
3931	Wilderness & Environmental Medicine	http://proquest.umi.com/pqdlink?RQT=318&PMID=68238\r\n\n			pqhmc				2005 - 2006		
3932	Women & Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=7904\r\n\n			pqhmc				 - 		
3933	Women in Sport & Physical Activity Journal	http://proquest.umi.com/pqdlink?RQT=318&PMID=58791\r\n\n			pqhmc				1992 - 		
3934	Working With Older People	http://proquest.umi.com/pqdlink?RQT=318&PMID=59287\r\n\n			pqhmc				2003 - 		
3935	World Disease Weekly	http://proquest.umi.com/pqdlink?RQT=318&PMID=68398\r\n\n			pqhmc				2005 - 		
3936	World Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=18855\r\n\n			pqhmc				1992 - 1998		
3937	World Health Organization. Bulletin of the World Health Organization	http://proquest.umi.com/pqdlink?RQT=318&PMID=15654\r\n\n			pqhmc				1997 - 		
3938	World Journal of Surgery	http://proquest.umi.com/pqdlink?RQT=318&PMID=66972\r\n\n			pqhmc				 - 		
3939	World Journal of Surgical Oncology	http://proquest.umi.com/pqdlink?RQT=318&PMID=68375\r\n\n			pqhmc				2005 - 2005		
3940	World Journal of Urology	http://proquest.umi.com/pqdlink?RQT=318&PMID=66973\r\n\n			pqhmc				 - 		
3941	Year in Allergy, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70389\r\n\n			pqhmc				2006 - 2006		
3942	Year in Anesthesia and Critical Care, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70388\r\n\n			pqhmc				2005 - 2005		
3943	Year in Diabetes, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70390\r\n\n			pqhmc				2004 - 2004		
3944	Year in Dyslipidaemia, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70391\r\n\n			pqhmc				2004 - 2004		
3945	Year in Gastroenterology and Hepatology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70405\r\n\n			pqhmc				2005 - 2005		
3946	Year in Gynaecology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70392\r\n\n			pqhmc				2003 - 2003		
3947	Year in Heart Failure, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70393\r\n\n			pqhmc				2005 - 2005		
3948	Year in Hypertension, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70394\r\n\n			pqhmc				2005 - 2005		
3949	Year in Interventional Cardiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70396\r\n\n			pqhmc				2005 - 2005		
3950	Year in Neurology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70397\r\n\n			pqhmc				2004 - 2004		
3951	Year in Osteoporosis, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70398\r\n\n			pqhmc				2006 - 2006		
3952	Year in Post - Menopausal Health, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70399\r\n\n			pqhmc				2004 - 2004		
3953	Year in Radiology, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70406\r\n\n			pqhmc				2005 - 2005		
3954	Year in Renal Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70400\r\n\n			pqhmc				2005 - 2005		
3955	Year in Respiratory Medicine, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70401\r\n\n			pqhmc				2005 - 2005		
3956	Year in Therapeutics, The	http://proquest.umi.com/pqdlink?RQT=318&PMID=70403\r\n\n			pqhmc				2005 - 2005		
3957	Zoonoses and Public Health	http://proquest.umi.com/pqdlink?RQT=318&PMID=67278\r\n\n			pqhmc				 - 		
3958	Zygote	http://proquest.umi.com/pqdlink?RQT=318&PMID=78991\r\n\n			pqhmc				2007 - 		
3265	Journal of Bone and Joint Surgery (American volume)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28967			pqhmc				 - 1997		
3266	Journal of Bone and Joint Surgery (British volume)	http://proquest.umi.com/pqdlink?RQT=318&PMID=28785			pqhmc				 - 1997		
5284	Functional & Integrative Genomics	http://search.proquest.com/publication/26871		365	pq2011						\N
5309	Health Education Research	http://search.proquest.com/publication/36112			pq2011						\N
5311	Health Marketing Quarterly	http://search.proquest.com/publication/46992			pq2011						\N
5312	Health Physics	http://search.proquest.com/publication/33166			pq2011						\N
5313	Health Policy and Planning	http://search.proquest.com/publication/34190			pq2011						\N
5314	Health Promotion International	http://search.proquest.com/publication/34187			pq2011						\N
5315	Health Promotion Journal of Australia	http://search.proquest.com/publication/28650			pq2011						\N
5316	Health Reports	http://search.proquest.com/publication/46838		12	pq2011						\N
5317	Health Research Policy and System  [NLM - MEDLINE]	http://search.proquest.com/publication/44381			pq2011						\N
5318	Health Services Research	http://search.proquest.com/publication/41644			pq2011						\N
5319	Health Sociology Review	http://search.proquest.com/publication/29657			pq2011						\N
5320	Health Statistics Quarterly	http://search.proquest.com/publication/28094		365	pq2011						\N
5321	Health and Hygiene	http://search.proquest.com/publication/36549			pq2011						\N
5322	Health and Science Bulletin	http://search.proquest.com/publication/105432			pq2011						\N
5323	Health, Risk & Society	http://search.proquest.com/publication/53208			pq2011						\N
5324	Healthcare Executive	http://search.proquest.com/publication/36283			pq2011						\N
5325	Healthcare Financial Management	http://search.proquest.com/publication/37738			pq2011						\N
5326	Healthcare Traveler	http://search.proquest.com/publication/43774			pq2011						\N
5327	Heredity	http://search.proquest.com/publication/36536		365	pq2011						\N
5328	Histochemistry and Cell Biology	http://search.proquest.com/publication/48619		365	pq2011						\N
5329	Home Healthcare Nurse	http://search.proquest.com/publication/36046			pq2011						\N
5330	Hospital Infection Control & Prevention	http://search.proquest.com/publication/136160			pq2011						\N
5331	Hospital Inpatient Profiles	http://search.proquest.com/publication/55171			pq2011						\N
5332	Hospital Medicine Alert	http://search.proquest.com/publication/136159			pq2011						\N
5333	Hospital Outpatient Profiles	http://search.proquest.com/publication/55173			pq2011						\N
5334	Hospitals & Health Networks	http://search.proquest.com/publication/40795			pq2011						\N
5335	Human Ecology	http://search.proquest.com/publication/48275		365	pq2011						\N
5336	Human Genetics	http://search.proquest.com/publication/47178		365	pq2011						\N
5337	Human Mutation	http://search.proquest.com/publication/30498			pq2011						\N
5339	Human Reproduction Update	http://search.proquest.com/publication/32773			pq2011						\N
5340	Human and Ecological Risk Assessment	http://search.proquest.com/publication/44697			pq2011						\N
5341	ISHN	http://search.proquest.com/publication/27162			pq2011						\N
5342	Immunologic Research	http://search.proquest.com/publication/54085		365	pq2011						\N
5343	Immunotherapy	http://search.proquest.com/publication/55027		365	pq2011						\N
5344	Immunotherapy Weekly	http://search.proquest.com/publication/32249			pq2011						\N
5345	Impact	http://search.proquest.com/publication/29101			pq2011						\N
5346	In Vitro Cellular & Developmental Biology	http://search.proquest.com/publication/38079			pq2011						\N
5347	Incidence and Prevalence Data	http://search.proquest.com/publication/55170			pq2011						\N
5348	Indian Journal of Human Genetics	http://search.proquest.com/publication/28427			pq2011						\N
5350	Infants and Young Children	http://search.proquest.com/publication/37170			pq2011						\N
5351	Infection	http://search.proquest.com/publication/29907		365	pq2011						\N
5352	Infection Control and Hospital Epidemiology	http://search.proquest.com/publication/36628			pq2011						\N
5353	Infectious Disease Alert	http://search.proquest.com/publication/136156			pq2011						\N
5354	Infectious Disease News	http://search.proquest.com/publication/29326			pq2011						\N
5355	Infectious Diseases in Obstetrics and Gynecology	http://search.proquest.com/publication/32639			pq2011						\N
5356	Injury Prevention	http://search.proquest.com/publication/32395			pq2011						\N
5357	Innovative Romanian Food Biotechnology	http://search.proquest.com/publication/60383			pq2011						\N
5358	Inquiry	http://search.proquest.com/publication/7180			pq2011						\N
5359	International Archives of Occupational and Environmental Health	http://search.proquest.com/publication/54046		365	pq2011						\N
5360	International Immunology	http://search.proquest.com/publication/34171			pq2011						\N
5534	Laboratory Investigation	http://search.proquest.com/publication/25033		365	pq2011						\N
5361	International Journal for Quality in Health Care	http://search.proquest.com/publication/43979			pq2011						\N
5362	International Journal of Clinical Oncology	http://search.proquest.com/publication/43390		365	pq2011						\N
5363	International Journal of Clinical and Experimental Hypnosis	http://search.proquest.com/publication/40979			pq2011						\N
5364	International Journal of Collaborative Research on Internal Medicine & Public Health	http://search.proquest.com/publication/51651			pq2011						\N
5365	International Journal of Early Childhood	http://search.proquest.com/publication/48368		365	pq2011						\N
5366	International Journal of Eating Disorders	http://search.proquest.com/publication/49031			pq2011						\N
5367	International Journal of Epidemiology	http://search.proquest.com/publication/49103			pq2011						\N
5368	International Journal of Fruit Science	http://search.proquest.com/publication/176141			pq2011						\N
5369	International Journal of Health Care Finance and Economics	http://search.proquest.com/publication/25823		365	pq2011						\N
5370	The International Journal of Health Planning & Management	http://search.proquest.com/publication/36892			pq2011						\N
5371	International Journal of Industrial Ergonomics	http://search.proquest.com/publication/105358			pq2011						\N
5372	International Journal of Infectious Diseases	http://search.proquest.com/publication/33800			pq2011						\N
5373	International Journal of Medical Microbiology	http://search.proquest.com/publication/26945			pq2011						\N
5374	International Journal of Occupational Medicine and Environmental Health	http://search.proquest.com/publication/32205			pq2011						\N
5375	International Journal of Occupational and Environmental Health	http://search.proquest.com/publication/26447			pq2011						\N
5376	International Journal of Pest Management	http://search.proquest.com/publication/176138			pq2011						\N
5377	International Journal of Pharmacology and Biological Sciences	http://search.proquest.com/publication/136118			pq2011						\N
5378	International Journal of Probiotics & Prebiotics	http://search.proquest.com/publication/136102			pq2011						\N
5379	International Journal of Public Health	http://search.proquest.com/publication/54874		365	pq2011						\N
5380	International Journal of STD & AIDS	http://search.proquest.com/publication/32843			pq2011						\N
5381	International Journal of Technology Assessment in Health Care	http://search.proquest.com/publication/36708		365	pq2011						\N
5382	The International Migration Review	http://search.proquest.com/publication/25110			pq2011						\N
5383	International Perspectives on Sexual and Reproductive Health	http://search.proquest.com/publication/51907			pq2011						\N
5384	International Quarterly of Community Health Education	http://search.proquest.com/publication/44801			pq2011						\N
5385	International Review of Sport and Exercise Psychology	http://search.proquest.com/publication/186289			pq2011						\N
5386	International Statistical Review = Revue Internationale de Statistique	http://search.proquest.com/publication/105652			pq2011						\N
5387	Intervention in School and Clinic	http://search.proquest.com/publication/34569			pq2011						\N
5388	Iranian Journal of Arthropod - Borne Diseases	http://search.proquest.com/publication/105773			pq2011						\N
5389	Iranian Journal of Environmental Health Science & Engineering	http://search.proquest.com/publication/105771			pq2011						\N
5390	Iranian Journal of Parasitology	http://search.proquest.com/publication/105764			pq2011						\N
5391	Iranian Journal of Public Health	http://search.proquest.com/publication/105761			pq2011						\N
5392	JAMA	http://search.proquest.com/publication/42339			pq2011						\N
5393	Joint Commission : The Source	http://search.proquest.com/publication/105517			pq2011						\N
5394	Joint Commission Benchmark	http://search.proquest.com/publication/105425			pq2011						\N
5395	Joint Commission Perspectives on Patient Safety	http://search.proquest.com/publication/105683			pq2011						\N
5397	Journal of Abnormal Psychology	http://search.proquest.com/publication/41287			pq2011						\N
5398	Journal of Acquired Immune Deficiency Syndromes	http://search.proquest.com/publication/31507			pq2011						\N
5399	Journal of Advanced Nursing	http://search.proquest.com/publication/37660			pq2011						\N
5400	Journal of Agromedicine	http://search.proquest.com/publication/105380			pq2011						\N
5401	Journal of Alcohol and Drug Education	http://search.proquest.com/publication/48458			pq2011						\N
5402	Journal of Allied Health	http://search.proquest.com/publication/47699			pq2011						\N
5403	Journal of Ambulatory Care Management	http://search.proquest.com/publication/48503			pq2011						\N
5404	The Journal of Antimicrobial Chemotherapy	http://search.proquest.com/publication/32192			pq2011						\N
5405	Journal of Applied Microbiology	http://search.proquest.com/publication/37662			pq2011						\N
5406	Journal of Applied Probability	http://search.proquest.com/publication/30074			pq2011						\N
5407	Journal of Applied Rehabilitation Counseling	http://search.proquest.com/publication/35933			pq2011						\N
5408	Journal of Applied Statistics	http://search.proquest.com/publication/32901			pq2011						\N
5409	Journal of Assisted Reproduction and Genetics	http://search.proquest.com/publication/37828		365	pq2011						\N
5410	Journal of Bacteriology	http://search.proquest.com/publication/40724			pq2011						\N
5411	The Journal of Behavioral Health Services & Research	http://search.proquest.com/publication/30572			pq2011						\N
5412	Journal of Behavioral Medicine	http://search.proquest.com/publication/37571		365	pq2011						\N
5413	Journal of Biosocial Science	http://search.proquest.com/publication/34392		365	pq2011						\N
5414	Journal of Cancer Research & Clinical Oncology	http://search.proquest.com/publication/47182		365	pq2011						\N
5415	Journal of Chemical Ecology	http://search.proquest.com/publication/54017		365	pq2011						\N
5416	Journal of Child Custody	http://search.proquest.com/publication/196222			pq2011						\N
5417	Journal of Children and Media	http://search.proquest.com/publication/436398			pq2011						\N
5418	Journal of Clinical Immunology	http://search.proquest.com/publication/37573		365	pq2011						\N
5419	Journal of Clinical Pathology	http://search.proquest.com/publication/41985			pq2011						\N
5420	Journal of Cognition and Development	http://search.proquest.com/publication/25338			pq2011						\N
5421	Journal of Community Health	http://search.proquest.com/publication/48530		365	pq2011						\N
5422	Journal of Community Health Nursing	http://search.proquest.com/publication/36978			pq2011						\N
5423	Journal of Community Nursing	http://search.proquest.com/publication/42545			pq2011						\N
5424	Journal of Computational and Graphical Statistics	http://search.proquest.com/publication/29738			pq2011						\N
5425	Journal of Consulting and Clinical Psychology	http://search.proquest.com/publication/42317			pq2011						\N
5426	The Journal of Consumer Affairs	http://search.proquest.com/publication/35935			pq2011						\N
5427	Journal of Consumer Policy	http://search.proquest.com/publication/6475			pq2011						\N
5428	Journal of Cultural Diversity	http://search.proquest.com/publication/34124			pq2011						\N
5429	Journal of Developmental and Behavioral Pediatrics	http://search.proquest.com/publication/34005			pq2011						\N
5431	Journal of Drug Issues	http://search.proquest.com/publication/34918			pq2011						\N
5432	Journal of Dual Diagnosis	http://search.proquest.com/publication/196204			pq2011						\N
5433	Journal of Early Intervention	http://search.proquest.com/publication/32947			pq2011						\N
5434	Journal of Emergency Nursing	http://search.proquest.com/publication/48082			pq2011						\N
5435	Journal of Empirical Research on Human Research Ethics	http://search.proquest.com/publication/75959			pq2011						\N
5436	Journal of Environmental Health	http://search.proquest.com/publication/34757			pq2011						\N
5437	Journal of Environmental Quality	http://search.proquest.com/publication/32284		545	pq2011						\N
5438	Journal of Environmental and Public Health	http://search.proquest.com/publication/237791			pq2011						\N
5439	Journal of Epidemiology and Community Health	http://search.proquest.com/publication/1029			pq2011						\N
5440	Journal of Exposure Science and Environmental Epidemiology	http://search.proquest.com/publication/29347		365	pq2011						\N
5441	Journal of Family Nursing	http://search.proquest.com/publication/31052			pq2011						\N
5442	Journal of Food Protection	http://search.proquest.com/publication/54075			pq2011						\N
5443	Journal of Food Safety	http://search.proquest.com/publication/105491			pq2011						\N
5444	Journal of Gerontological Nursing	http://search.proquest.com/publication/47810			pq2011						\N
5445	Journal of Groups in Addiction & Recovery	http://search.proquest.com/publication/186233			pq2011						\N
5446	Journal of Happiness Studies	http://search.proquest.com/publication/55390		365	pq2011						\N
5447	Journal of Hazardous Substance Research	http://search.proquest.com/publication/54975			pq2011						\N
5448	Journal of Health Care Chaplaincy	http://search.proquest.com/publication/196173			pq2011						\N
5449	Journal of Health Care Finance	http://search.proquest.com/publication/48513			pq2011						\N
5450	Journal of Health Care for the Poor and Underserved	http://search.proquest.com/publication/30234		365	pq2011						\N
5451	Journal of Health Economics	http://search.proquest.com/publication/46287			pq2011						\N
5452	Journal of Health Politics, Policy and Law	http://search.proquest.com/publication/48126			pq2011						\N
5453	Journal of Health and Human Services Administration	http://search.proquest.com/publication/27394			pq2011						\N
5454	Journal of Health and Social Behavior	http://search.proquest.com/publication/25061		365	pq2011						\N
5455	Journal of Health, Population and Nutrition	http://search.proquest.com/publication/54891			pq2011						\N
5456	Journal of Healthcare Management	http://search.proquest.com/publication/7080			pq2011						\N
5457	Journal of Helminthology	http://search.proquest.com/publication/33550		365	pq2011						\N
5458	Journal of Herbs, Spices & Medicinal Plants	http://search.proquest.com/publication/196172			pq2011						\N
5459	Journal of Human Nutrition and Dietetics	http://search.proquest.com/publication/35966			pq2011						\N
5460	Journal of Immigrant and Minority Health	http://search.proquest.com/publication/39812		365	pq2011						\N
5461	The Journal of Infectious Diseases	http://search.proquest.com/publication/41591			pq2011						\N
5462	Journal of Interferon & Cytokine Research	http://search.proquest.com/publication/33572		90	pq2011						\N
5463	Journal of Interpersonal Violence	http://search.proquest.com/publication/30963			pq2011						\N
5464	The Journal of Investigative Dermatology	http://search.proquest.com/publication/38864		365	pq2011						\N
5465	The Journal of Law, Medicine & Ethics	http://search.proquest.com/publication/48720			pq2011						\N
5466	Journal of Learning Disabilities	http://search.proquest.com/publication/36290			pq2011						\N
5467	The Journal of Legal Medicine	http://search.proquest.com/publication/105642			pq2011						\N
5468	Journal of Loss Prevention in the Process Industries	http://search.proquest.com/publication/105365			pq2011						\N
5469	Journal of Manage,ent, Spirituality & Religion	http://search.proquest.com/publication/186329			pq2011						\N
5471	Journal of Medical Screening	http://search.proquest.com/publication/32409			pq2011						\N
5472	Journal of Mental Health Research in Intellectual Disabilities	http://search.proquest.com/publication/196165			pq2011						\N
5473	Journal of Multivariate Analysis	http://search.proquest.com/publication/27957			pq2011						\N
5474	Journal of Neuro - Oncology	http://search.proquest.com/publication/37423		365	pq2011						\N
5475	Journal of Nonparametric Statistics	http://search.proquest.com/publication/53053			pq2011						\N
5476	Journal of Nursing Administration	http://search.proquest.com/publication/47652			pq2011						\N
5477	Journal of Nursing Scholarship	http://search.proquest.com/publication/46765			pq2011						\N
5478	Journal of Nutrition Education and Behavior	http://search.proquest.com/publication/8794			pq2011						\N
5479	The Journal of Nutrition	http://search.proquest.com/publication/34400			pq2011						\N
5480	The Journal of Nutrition, Health & Aging	http://search.proquest.com/publication/28850		365	pq2011						\N
5481	Journal of Nutritional & Environmental Medicine	http://search.proquest.com/publication/33383			pq2011						\N
5482	Journal of Obstetric, Gynecologic, and Neonatal Nursing : JOGNN	http://search.proquest.com/publication/49198			pq2011						\N
5483	Journal of Occupational Medicine and Toxicology	http://search.proquest.com/publication/55357			pq2011						\N
5484	Journal of Occupational Rehabilitation	http://search.proquest.com/publication/33258		365	pq2011						\N
5485	Journal of Occupational and Environmental Hygiene	http://search.proquest.com/publication/29159			pq2011						\N
5486	Journal of Occupational and Environmental Medicine	http://search.proquest.com/publication/48028			pq2011						\N
5487	Journal of Official Statistics	http://search.proquest.com/publication/105444			pq2011						\N
5488	Journal of Paediatrics and Child Health	http://search.proquest.com/publication/49064			pq2011						\N
5489	The Journal of Parasitology	http://search.proquest.com/publication/41450		180	pq2011						\N
5490	Journal of Pediatric Nursing	http://search.proquest.com/publication/34220			pq2011						\N
5491	The Journal of Pediatrics	http://search.proquest.com/publication/41348			pq2011						\N
5492	Journal of Perinatology	http://search.proquest.com/publication/30566		365	pq2011						\N
5493	Journal of Personality and Social Psychology	http://search.proquest.com/publication/41847			pq2011						\N
5494	Journal of Physical Education, Recreation & Dance	http://search.proquest.com/publication/40789			pq2011						\N
5495	Journal of Population Ageing	http://search.proquest.com/publication/326245		365	pq2011						\N
5496	Journal of Population Economics	http://search.proquest.com/publication/31526		365	pq2011						\N
5497	Journal of Prenatal & Perinatal Psychology & Health	http://search.proquest.com/publication/28214		180	pq2011						\N
5498	Journal of Primary Prevention	http://search.proquest.com/publication/48283		365	pq2011						\N
5499	Journal of Psychosocial Nursing & Mental Health Services	http://search.proquest.com/publication/35532			pq2011						\N
5500	Journal of Public Child Welfare	http://search.proquest.com/publication/196156			pq2011						\N
5501	Journal of Public Health	http://search.proquest.com/publication/44544			pq2011						\N
5502	Journal of Public Health Management and Practice	http://search.proquest.com/publication/30789			pq2011						\N
5503	Journal of Public Health Policy	http://search.proquest.com/publication/34132		365	pq2011						\N
5504	Journal of Public Mental Health	http://search.proquest.com/publication/28745			pq2011						\N
5505	Journal of Rehabilitation	http://search.proquest.com/publication/37110			pq2011						\N
5506	Journal of Religion and Health	http://search.proquest.com/publication/54044		365	pq2011						\N
5507	Journal of Research for Consumers	http://search.proquest.com/publication/28494			pq2011						\N
5508	Journal of Safety Research	http://search.proquest.com/publication/45125			pq2011						\N
5509	The Journal of School Health	http://search.proquest.com/publication/2368			pq2011						\N
5510	The Journal of School Nursing	http://search.proquest.com/publication/32800		180	pq2011						\N
5511	Journal of Sex and Marital Therapy	http://search.proquest.com/publication/196155			pq2011						\N
5512	Journal of Sports Medicine and Physical Fitness	http://search.proquest.com/publication/4718			pq2011						\N
5574	NACCHO Exchange	http://search.proquest.com/publication/105575			pq2011						\N
5513	Journal of Strength and Conditioning Research	http://search.proquest.com/publication/30912		180	pq2011						\N
5514	Journal of Studies on Alcohol and Drugs	http://search.proquest.com/publication/38866			pq2011						\N
5515	Journal of Toxicology and Environmental Health.  Part A	http://search.proquest.com/publication/52988			pq2011						\N
5516	Journal of Toxicology and Environmental Health.  Part B, Critical Reviews	http://search.proquest.com/publication/53068			pq2011						\N
5517	Journal of Travel Medicine	http://search.proquest.com/publication/31909			pq2011						\N
5518	Journal of Tropical Pediatrics	http://search.proquest.com/publication/37356			pq2011						\N
5519	Journal of Urban Health	http://search.proquest.com/publication/55439		365	pq2011						\N
5520	Journal of Vector Borne Diseases	http://search.proquest.com/publication/54552			pq2011						\N
5521	Journal of Youth and Adolescence	http://search.proquest.com/publication/48391		365	pq2011						\N
5522	Journal of the Air & Waste Management Association	http://search.proquest.com/publication/34654			pq2011						\N
5523	Journal of the American Academy of Child and Adolescent Psychiatry	http://search.proquest.com/publication/32006			pq2011						\N
5524	Journal of the American Academy of Nurse Practitioners	http://search.proquest.com/publication/34049			pq2011						\N
5525	Journal of the American Geriatrics Society	http://search.proquest.com/publication/41968			pq2011						\N
5526	Journal of the American Statistical Association	http://search.proquest.com/publication/41715			pq2011						\N
5527	Journal of the American Water Resources Association	http://search.proquest.com/publication/34915			pq2011						\N
5528	The Journal of the Association of Nurses in AIDS Care	http://search.proquest.com/publication/29840			pq2011						\N
5529	Journal of the National Cancer Institute	http://search.proquest.com/publication/41605			pq2011						\N
5530	Journal of the Royal Statistical Society. Series A, Statistics in Society	http://search.proquest.com/publication/105636			pq2011						\N
5531	Journal of the Royal Statistical Society. Series B, Statistical Methodology	http://search.proquest.com/publication/39359			pq2011						\N
5532	Journal of the Royal Statistical Society. Series C, Applied Statistics	http://search.proquest.com/publication/32577			pq2011						\N
5535	The Lancet Infectious Diseases	http://search.proquest.com/publication/44001		60	pq2011						\N
5536	Lancet Oncology	http://search.proquest.com/publication/46089		60	pq2011						\N
5537	The Lancet	http://search.proquest.com/publication/40246		60	pq2011						\N
5538	Learning Disability Quarterly	http://search.proquest.com/publication/47969			pq2011						\N
5540	Lifetime Data Analysis	http://search.proquest.com/publication/26261		365	pq2011						\N
5541	Lipids	http://search.proquest.com/publication/35263		365	pq2011						\N
5542	MCH Alert	http://search.proquest.com/publication/105500			pq2011						\N
5543	MCN, the American Journal of Maternal Child Nursing	http://search.proquest.com/publication/47885			pq2011						\N
5544	MMWR. Morbidity and Mortality Weekly Report	http://search.proquest.com/publication/36177			pq2011						\N
5545	Malaria Journal  [NLM - MEDLINE]	http://search.proquest.com/publication/42599			pq2011						\N
5546	Managed Care Business Week	http://search.proquest.com/publication/29424			pq2011						\N
5547	Managed Care Law Weekly	http://search.proquest.com/publication/29425			pq2011						\N
5548	Managed Care Outlook	http://search.proquest.com/publication/33968			pq2011						\N
5549	Managed Care Quarterly	http://search.proquest.com/publication/30790			pq2011						\N
5550	Management of Environmental Quality	http://search.proquest.com/publication/27885		365	pq2011						\N
5551	Mankind Quarterly	http://search.proquest.com/publication/30967		365	pq2011						\N
5552	Maternal and Child Health Journal	http://search.proquest.com/publication/46954		365	pq2011						\N
5553	Mathematical Population Studies	http://search.proquest.com/publication/186320			pq2011						\N
5554	Mayo Clinic Proceedings	http://search.proquest.com/publication/48850			pq2011						\N
5555	Medical Anthropology Quarterly	http://search.proquest.com/publication/36274			pq2011						\N
5556	Medical Care	http://search.proquest.com/publication/49247			pq2011						\N
5557	Medical Care Research and Review	http://search.proquest.com/publication/36294			pq2011						\N
5558	Medical Decision Making	http://search.proquest.com/publication/22065			pq2011						\N
5559	Medical Epidemiology	http://search.proquest.com/publication/55007			pq2011						\N
5560	Medical Laboratory Observer	http://search.proquest.com/publication/47783			pq2011						\N
5561	Medical Letter on the CDC & FDA	http://search.proquest.com/publication/26384			pq2011						\N
5562	Medical Microbiology and Immunology	http://search.proquest.com/publication/47200		365	pq2011						\N
5563	Mental Health Services Research	http://search.proquest.com/publication/44570			pq2011						\N
5564	Mental Health and Substance Use	http://search.proquest.com/publication/196151			pq2011						\N
5565	Microbial Drug Resistance	http://search.proquest.com/publication/43237		90	pq2011						\N
5566	The Milbank Quarterly	http://search.proquest.com/publication/41127			pq2011						\N
5567	Military Medicine	http://search.proquest.com/publication/7561			pq2011						\N
5568	Mine Water and the Environment	http://search.proquest.com/publication/54494		365	pq2011						\N
5569	Mobilities	http://search.proquest.com/publication/196149			pq2011						\N
5570	Modern Healthcare	http://search.proquest.com/publication/35029			pq2011						\N
5571	Molecular Microbiology	http://search.proquest.com/publication/35968			pq2011						\N
5572	Mutation Research. Genetic Toxicology and Environmental Mutagenesis	http://search.proquest.com/publication/105437			pq2011						\N
5573	Mycotoxin Research	http://search.proquest.com/publication/54507		365	pq2011						\N
5575	NFPA Journal	http://search.proquest.com/publication/31715			pq2011						\N
5577	National Health Statistics Reports	http://search.proquest.com/publication/105330			pq2011						\N
5578	National Institutes of Health (NIH) Documents / FIND	http://search.proquest.com/publication/28278			pq2011						\N
5580	Nature Genetics	http://search.proquest.com/publication/33429		365	pq2011						\N
5581	Nature Immunology	http://search.proquest.com/publication/45782		365	pq2011						\N
5582	Nature Reviews. Cancer	http://search.proquest.com/publication/27578		365	pq2011						\N
5583	Nature Reviews. Genetics	http://search.proquest.com/publication/44267		365	pq2011						\N
5584	Nature Reviews. Immunology	http://search.proquest.com/publication/27582		365	pq2011						\N
5585	Nature Reviews. Microbiology	http://search.proquest.com/publication/27584		365	pq2011						\N
5586	Nature Reviews. Molecular Cell Biology	http://search.proquest.com/publication/27585		365	pq2011						\N
5587	Neuroepidemiology	http://search.proquest.com/publication/32897		365	pq2011						\N
5588	The New England Journal of Medicine	http://search.proquest.com/publication/40644		90	pq2011						\N
5589	Noise & Health	http://search.proquest.com/publication/38591			pq2011						\N
5590	Nucleic Acids Research	http://search.proquest.com/publication/36121			pq2011						\N
5591	Nursing	http://search.proquest.com/publication/47531			pq2011						\N
5592	Nursing Outlook	http://search.proquest.com/publication/40849			pq2011						\N
5593	Nursing Research	http://search.proquest.com/publication/42332			pq2011						\N
5594	Nursing Standard	http://search.proquest.com/publication/30130			pq2011						\N
5595	Nursing Times	http://search.proquest.com/publication/42345			pq2011						\N
5596	Nutrition & Dietetics	http://search.proquest.com/publication/105337			pq2011						\N
5597	Nutrition Action Health Letter	http://search.proquest.com/publication/30745			pq2011						\N
5598	Nutrition Research Reviews	http://search.proquest.com/publication/31731		365	pq2011						\N
5600	Nutrition Today	http://search.proquest.com/publication/49077			pq2011						\N
5601	Nutrition and Cancer	http://search.proquest.com/publication/105635			pq2011						\N
5602	Nutrition and Food Science	http://search.proquest.com/publication/25521		365	pq2011						\N
5603	OBGYN & Reproduction Week	http://search.proquest.com/publication/44574			pq2011						\N
5604	OH & S Canada	http://search.proquest.com/publication/29936			pq2011						\N
5605	Obesity & Diabetes Week	http://search.proquest.com/publication/44567			pq2011						\N
5606	Obesity Surgery	http://search.proquest.com/publication/55143		365	pq2011						\N
5607	Obesity, Fitness & Wellness Week	http://search.proquest.com/publication/26395			pq2011						\N
5608	Occupational Ergonomics : The Journal of the International Society for Occupational Ergonomics and Safety	http://search.proquest.com/publication/105543			pq2011						\N
5609	Occupational Health Management	http://search.proquest.com/publication/136148			pq2011						\N
5610	Occupational Medicine	http://search.proquest.com/publication/36993			pq2011						\N
5611	Occupational Therapy In Mental Health	http://search.proquest.com/publication/186279			pq2011						\N
5612	Occupational and Environmental Medicine	http://search.proquest.com/publication/42102			pq2011						\N
5613	Oligonucleotides	http://search.proquest.com/publication/40361		90	pq2011						\N
5614	Oncogene	http://search.proquest.com/publication/36330		365	pq2011						\N
5615	Oncology	http://search.proquest.com/publication/41203		365	pq2011						\N
5616	Oncology	http://search.proquest.com/publication/38461			pq2011						\N
5617	Oral Health	http://search.proquest.com/publication/29937			pq2011						\N
5618	Osteoporosis International	http://search.proquest.com/publication/33762		365	pq2011						\N
5619	Outlook	http://search.proquest.com/publication/28319			pq2011						\N
5621	Parasitology	http://search.proquest.com/publication/47473			pq2011						\N
5622	Parenting	http://search.proquest.com/publication/27038			pq2011						\N
5623	Pathobiology	http://search.proquest.com/publication/32904		365	pq2011						\N
5624	The Patient	http://search.proquest.com/publication/38894		180	pq2011						\N
5625	Pediatric Annals	http://search.proquest.com/publication/34609			pq2011						\N
5626	Pediatric Health	http://search.proquest.com/publication/54248			pq2011						\N
5627	Pediatrics	http://search.proquest.com/publication/47366			pq2011						\N
5628	Personalized Medicine	http://search.proquest.com/publication/54585		365	pq2011						\N
5629	Perspectives in Public Health	http://search.proquest.com/publication/51940			pq2011						\N
5630	Perspectives on Sexual and Reproductive Health	http://search.proquest.com/publication/27515			pq2011						\N
5631	PharmacoEconomics	http://search.proquest.com/publication/43702		180	pq2011						\N
5632	Physical & Health Education Journal	http://search.proquest.com/publication/42913			pq2011						\N
5633	Physician Office Profiles	http://search.proquest.com/publication/55175			pq2011						\N
5634	Population	http://search.proquest.com/publication/27850		365	pq2011						\N
5635	Population & Societies	http://search.proquest.com/publication/27739		365	pq2011						\N
5636	Population Bulletin	http://search.proquest.com/publication/49189			pq2011						\N
5637	Population Ecology	http://search.proquest.com/publication/43403		365	pq2011						\N
5638	Population Research and Policy Review	http://search.proquest.com/publication/36635		365	pq2011						\N
5639	Population Trends	http://search.proquest.com/publication/28121		365	pq2011						\N
5640	Population and Development Review	http://search.proquest.com/publication/37204			pq2011						\N
5641	Preparative Biochemistry & Biotechnology	http://search.proquest.com/publication/196140			pq2011						\N
5642	Preventing School Failure	http://search.proquest.com/publication/16028			pq2011						\N
5643	Prevention	http://search.proquest.com/publication/34465			pq2011						\N
5644	Prevention Science	http://search.proquest.com/publication/44709		365	pq2011						\N
5645	Preventive Medicine Week	http://search.proquest.com/publication/29539			pq2011						\N
5646	Primary Health Care	http://search.proquest.com/publication/44393			pq2011						\N
5647	Primary Health Care Research & Development	http://search.proquest.com/publication/38692		365	pq2011						\N
5648	The Proceedings of the Nutrition Society	http://search.proquest.com/publication/36750		365	pq2011						\N
5649	Professional Safety	http://search.proquest.com/publication/47267			pq2011						\N
5650	Progress in Community Health Partnerships	http://search.proquest.com/publication/366257		365	pq2011						\N
5651	Prostate Cancer and Prostatic Diseases	http://search.proquest.com/publication/27992		365	pq2011						\N
5652	Psychological Bulletin	http://search.proquest.com/publication/41311			pq2011						\N
5653	Public Health Dispatch	http://search.proquest.com/publication/105339			pq2011						\N
5654	Public Health Genomics	http://search.proquest.com/publication/46514		365	pq2011						\N
5655	Public Health Nursing	http://search.proquest.com/publication/37960			pq2011						\N
5656	Public Health Nursing Section Newsletter	http://search.proquest.com/publication/105436			pq2011						\N
5657	Public Health Nutrition	http://search.proquest.com/publication/26856		365	pq2011						\N
5658	Public Health Reports	http://search.proquest.com/publication/41861			pq2011						\N
5659	Public Health Reports	http://search.proquest.com/publication/41860			pq2011						\N
5660	Public Health Reviews	http://search.proquest.com/publication/406344			pq2011						\N
5661	Quality & Safety in Health Care	http://search.proquest.com/publication/25662			pq2011						\N
5662	Quality of Life Research	http://search.proquest.com/publication/326329		365	pq2011						\N
5663	Refugee Survey Quarterly	http://search.proquest.com/publication/33216			pq2011						\N
5664	Rehabilitation Counseling Bulletin	http://search.proquest.com/publication/41494			pq2011						\N
5665	Research Quarterly for Exercise and Sport	http://search.proquest.com/publication/40785			pq2011						\N
5666	Research in Nursing & Health	http://search.proquest.com/publication/47819			pq2011						\N
5730	Water Environment Research	http://search.proquest.com/publication/24129			pq2011						\N
5668	Risk Analysis	http://search.proquest.com/publication/37984			pq2011						\N
5669	SIECUS Report	http://search.proquest.com/publication/35312			pq2011						\N
5670	The Safety & Health Practitioner	http://search.proquest.com/publication/4703			pq2011						\N
5671	Sankhya: The Indian Journal of Statistics	http://search.proquest.com/publication/105370			pq2011						\N
5672	Scandinavian Journal of Disability Research : SIDR	http://search.proquest.com/publication/186314			pq2011						\N
5673	Scandinavian Journal of Work, Environment & Health	http://search.proquest.com/publication/37939			pq2011						\N
5674	Seminars in Immunopathology	http://search.proquest.com/publication/39687		365	pq2011						\N
5675	Sexuality Research & Social Policy	http://search.proquest.com/publication/75954		365	pq2011						\N
5676	Sexually Transmitted Diseases	http://search.proquest.com/publication/47660			pq2011						\N
5677	Sexually Transmitted Infections	http://search.proquest.com/publication/42226			pq2011						\N
5678	Social Choice and Welfare	http://search.proquest.com/publication/31358		365	pq2011						\N
5679	Social Indicators Research	http://search.proquest.com/publication/36473		365	pq2011						\N
5680	Social Marketing Quarterly	http://search.proquest.com/publication/105633			pq2011						\N
5681	Social Problems	http://search.proquest.com/publication/42196			pq2011						\N
5682	Social Psychiatry and Psychiatric Epidemiology	http://search.proquest.com/publication/47311		365	pq2011						\N
5683	Social Science & Medicine	http://search.proquest.com/publication/46002			pq2011						\N
5684	Social Security Bulletin	http://search.proquest.com/publication/41868			pq2011						\N
5685	Social Theory & Health	http://search.proquest.com/publication/44695		365	pq2011						\N
5686	Social Work	http://search.proquest.com/publication/40730			pq2011						\N
5687	Social Work Abstracts	http://search.proquest.com/publication/32765			pq2011						\N
5688	Social Work Research	http://search.proquest.com/publication/34376			pq2011						\N
5689	Southeast Asian Journal of Tropical Medicine and Public Health	http://search.proquest.com/publication/34824			pq2011						\N
5690	State Department Documents / FIND	http://search.proquest.com/publication/28413			pq2011						\N
5691	State Health Watch	http://search.proquest.com/publication/136141			pq2011						\N
5692	Statistical Methods & Applications	http://search.proquest.com/publication/43990		365	pq2011						\N
5693	Statistical Methods in Medical Research	http://search.proquest.com/publication/29398			pq2011						\N
5694	Statistical Papers	http://search.proquest.com/publication/31177		365	pq2011						\N
5695	Statistics in Medicine	http://search.proquest.com/publication/48361			pq2011						\N
5696	Stem Cell Week	http://search.proquest.com/publication/26526			pq2011						\N
5697	Strahlentherapie und Onkologie	http://search.proquest.com/publication/54006		365	pq2011						\N
5698	Strategies for Health Care Compliance	http://search.proquest.com/publication/51110			pq2011						\N
5699	Strength and Conditioning Journal	http://search.proquest.com/publication/44253		180	pq2011						\N
5700	Suicide & Life - Threatening Behavior	http://search.proquest.com/publication/6058		365	pq2011						\N
5701	Symbolic Interaction	http://search.proquest.com/publication/31752			pq2011						\N
5702	TB & Outbreaks Weekly	http://search.proquest.com/publication/26527			pq2011						\N
5704	Technical Report Series. National Toxicology Program	http://search.proquest.com/publication/54931			pq2011						\N
5705	Technometrics	http://search.proquest.com/publication/24108			pq2011						\N
5706	Thorax	http://search.proquest.com/publication/42125			pq2011						\N
5707	Tobacco Control	http://search.proquest.com/publication/32410			pq2011						\N
5708	Toxicology and Industrial Health	http://search.proquest.com/publication/38276			pq2011						\N
5709	Translational Research	http://search.proquest.com/publication/41963			pq2011						\N
5711	Travel Medicine Advisor	http://search.proquest.com/publication/136138			pq2011						\N
5712	Tropical Animal Health and Production	http://search.proquest.com/publication/44713		365	pq2011						\N
5713	Tropical Medicine and International Health	http://search.proquest.com/publication/33016			pq2011						\N
5714	Tuberculosis Week	http://search.proquest.com/publication/44690			pq2011						\N
5715	Tufts University Health & Nutrition Letter	http://search.proquest.com/publication/30886			pq2011						\N
5716	Tumor Biology	http://search.proquest.com/publication/33651		365	pq2011						\N
5717	Turkish Journal of Cancer	http://search.proquest.com/publication/28846			pq2011						\N
5718	U.S. Department of Defense Information / FIND	http://search.proquest.com/publication/28286			pq2011						\N
5719	U.S. Food & Drug Administration Documents / FIND	http://search.proquest.com/publication/28279			pq2011						\N
5720	Umweltwissenschaften und Schadstoff-Forschung	http://search.proquest.com/publication/54370		365	pq2011						\N
5721	Vaccine Weekly	http://search.proquest.com/publication/30631			pq2011						\N
5722	Vegetarian Times	http://search.proquest.com/publication/47282			pq2011						\N
5723	Violence Against Women	http://search.proquest.com/publication/30624			pq2011						\N
5724	Viral Immunology	http://search.proquest.com/publication/43221		90	pq2011						\N
5725	Virus Genes	http://search.proquest.com/publication/30539		365	pq2011						\N
5726	Virus Weekly	http://search.proquest.com/publication/26248			pq2011						\N
5727	WHO Drug Information	http://search.proquest.com/publication/32531			pq2011						\N
5728	WHO Technical Report Series	http://search.proquest.com/publication/105620			pq2011						\N
5729	Water & Wastewater International	http://search.proquest.com/publication/29430			pq2011						\N
5027	AAOHN Journal	http://search.proquest.com/publication/47930			pq2011						\N
5028	AHA News	http://search.proquest.com/publication/32058			pq2011						\N
5029	AIDS Alert	http://search.proquest.com/publication/31614			pq2011						\N
5030	AIDS Care	http://search.proquest.com/publication/32745			pq2011						\N
5031	AIDS Education and Prevention	http://search.proquest.com/publication/32604		365	pq2011						\N
5032	AIDS Patient Care & STDs	http://search.proquest.com/publication/31643			pq2011						\N
5033	The AIDS Reader	http://search.proquest.com/publication/40115			pq2011						\N
5034	AIDS Vaccine Week	http://search.proquest.com/publication/44556			pq2011						\N
5035	AIDS Weekly	http://search.proquest.com/publication/26250			pq2011						\N
5036	AIDS Weekly & Law	http://search.proquest.com/publication/29149			pq2011						\N
5037	AIDS and Behavior	http://search.proquest.com/publication/33605		365	pq2011						\N
5038	ANS	http://search.proquest.com/publication/48107			pq2011						\N
5039	Academic Pediatrics	http://search.proquest.com/publication/51558		180	pq2011						\N
5040	Accountability in Research	http://search.proquest.com/publication/436452			pq2011						\N
5041	Activities, Adaptation & Aging	http://search.proquest.com/publication/186273			pq2011						\N
5042	Addiction	http://search.proquest.com/publication/37458			pq2011						\N
5043	Addictive Behaviors	http://search.proquest.com/publication/45705			pq2011						\N
5044	Administration & Management Special Interest Section Quarterly / American Occupational Therapy Association	http://search.proquest.com/publication/28847			pq2011						\N
5045	Administration and Policy in Mental Health	http://search.proquest.com/publication/47289			pq2011						\N
5046	Administration and Policy in Mental Health and Mental Health Services Research	http://search.proquest.com/publication/38575		365	pq2011						\N
5047	Adolescence	http://search.proquest.com/publication/41539			pq2011						\N
5048	Adultspan Journal	http://search.proquest.com/publication/45903			pq2011						\N
5731	Water, Air and Soil Pollution	http://search.proquest.com/publication/54157		365	pq2011						\N
5049	Advances in Pharmacology and Toxicology	http://search.proquest.com/publication/136117			pq2011						\N
5050	African Journal of Reproductive Health	http://search.proquest.com/publication/29190			pq2011						\N
5051	Aging Health	http://search.proquest.com/publication/54588			pq2011						\N
5052	Air Quality, Atmosphere, & Health	http://search.proquest.com/publication/54453		365	pq2011						\N
5053	Alcohol Research and Health	http://search.proquest.com/publication/48866			pq2011						\N
5054	Alcohol and Alcoholism : International Journal of the Medical Council on Alcoholism	http://search.proquest.com/publication/46106			pq2011						\N
5055	Allergy and Asthma Proceedings	http://search.proquest.com/publication/28636			pq2011						\N
5056	Allied Academies International Conference. Academy of Health Care Management. Proceedings	http://search.proquest.com/publication/38642			pq2011						\N
5057	Ambio	http://search.proquest.com/publication/46450		365	pq2011						\N
5058	Ambulatory Quality & Compliance Insider	http://search.proquest.com/publication/50654			pq2011						\N
5059	American Academy of Microbiology Critical Issues Colloquia Reports	http://search.proquest.com/publication/50688			pq2011						\N
5060	American Dental Association News	http://search.proquest.com/publication/105595			pq2011						\N
5061	American Dental Association. The Journal of the American Dental Association	http://search.proquest.com/publication/42420			pq2011						\N
5062	American Dietetic Association. Journal of the American Dietetic Association	http://search.proquest.com/publication/49142			pq2011						\N
5063	The American Journal of Clinical Nutrition	http://search.proquest.com/publication/41076			pq2011						\N
5064	American Journal of Community Psychology	http://search.proquest.com/publication/47760		365	pq2011						\N
5065	American Journal of Epidemiology	http://search.proquest.com/publication/41038			pq2011						\N
5066	American Journal of Health Behavior	http://search.proquest.com/publication/48054			pq2011						\N
5067	American Journal of Health Education	http://search.proquest.com/publication/44607			pq2011						\N
5068	American Journal of Hematology / Oncology	http://search.proquest.com/publication/50958			pq2011						\N
5069	American Journal of Human Genetics	http://search.proquest.com/publication/24320			pq2011						\N
5070	American Journal of Infection Control	http://search.proquest.com/publication/105487			pq2011						\N
5071	American Journal of Law and Medicine	http://search.proquest.com/publication/48702			pq2011						\N
5072	The American Journal of Managed Care	http://search.proquest.com/publication/105486			pq2011						\N
5073	The American Journal of Nursing	http://search.proquest.com/publication/41322			pq2011						\N
5074	The American Journal of Pathology	http://search.proquest.com/publication/49196			pq2011						\N
5075	American Journal of Psychiatric Rehabilitation	http://search.proquest.com/publication/186265			pq2011						\N
5076	American Journal of Public Health	http://search.proquest.com/publication/41804			pq2011						\N
5077	American Journal of Respiratory and Critical Care Medicine	http://search.proquest.com/publication/40575			pq2011						\N
5078	American Journal of Sexuality Education	http://search.proquest.com/publication/186263			pq2011						\N
5079	American Laboratory	http://search.proquest.com/publication/105576			pq2011						\N
5080	American Public Health Association. Oral Health Section Newsletter	http://search.proquest.com/publication/105587			pq2011						\N
5081	American Sociological Review	http://search.proquest.com/publication/41945		365	pq2011						\N
5082	The American Statistician	http://search.proquest.com/publication/41811			pq2011						\N
5083	American Water Works Association. Journal	http://search.proquest.com/publication/25142			pq2011						\N
5084	Animal Health Research Reviews	http://search.proquest.com/publication/38986		365	pq2011						\N
5085	The Annals of Applied Probability	http://search.proquest.com/publication/105647			pq2011						\N
5086	Annals of Behavioral Medicine	http://search.proquest.com/publication/30054			pq2011						\N
5087	Annals of Internal Medicine	http://search.proquest.com/publication/42137			pq2011						\N
5088	Annals of Nutrition & Metabolism	http://search.proquest.com/publication/32607		365	pq2011						\N
5089	Annals of Probability	http://search.proquest.com/publication/47394			pq2011						\N
5090	Annals of Statistics	http://search.proquest.com/publication/47395			pq2011						\N
5092	Annual Review of Gerontology & Geriatrics	http://search.proquest.com/publication/28852			pq2011						\N
5093	Annual Review of Immunology	http://search.proquest.com/publication/47332			pq2011						\N
5094	Annual Review of Nutrition	http://search.proquest.com/publication/49287			pq2011						\N
5095	Annual Review of Public Health	http://search.proquest.com/publication/6764			pq2011						\N
5096	Applied Ergonomics	http://search.proquest.com/publication/48887			pq2011						\N
5097	Applied Health Economics and Health Policy	http://search.proquest.com/publication/28795		180	pq2011						\N
5098	Applied and Environmental Microbiology	http://search.proquest.com/publication/42251			pq2011						\N
5099	Archives of Disease in Childhood	http://search.proquest.com/publication/41983			pq2011						\N
5100	Archives of Environmental & Occupational Health	http://search.proquest.com/publication/28654			pq2011						\N
5101	Archives of Environmental Contamination and Toxicology	http://search.proquest.com/publication/54049		365	pq2011						\N
5102	Archives of Internal Medicine	http://search.proquest.com/publication/41705			pq2011						\N
5103	Archives of Pathology & Laboratory Medicine	http://search.proquest.com/publication/42082			pq2011						\N
5104	Archives of Pediatrics & Adolescent Medicine	http://search.proquest.com/publication/41897			pq2011						\N
5105	Archives of Suicide Research	http://search.proquest.com/publication/186242			pq2011						\N
5107	Archives of Virology	http://search.proquest.com/publication/48320		365	pq2011						\N
5108	Arts & Health	http://search.proquest.com/publication/186241			pq2011						\N
5109	Asia Pacific Journal of Clinical Nutrition	http://search.proquest.com/publication/45812			pq2011						\N
5110	Asian Population Studies	http://search.proquest.com/publication/105673			pq2011						\N
5111	Association of Schools of Public Health. Friday Newsletter	http://search.proquest.com/publication/105488			pq2011						\N
5112	Australian Dental Journal	http://search.proquest.com/publication/35946			pq2011						\N
5113	Australian Journal of Learning Difficulties	http://search.proquest.com/publication/186230			pq2011						\N
5114	Australian Journal of Social Issues	http://search.proquest.com/publication/49075			pq2011						\N
5115	Australian and New Zealand Journal of Public Health	http://search.proquest.com/publication/37917			pq2011						\N
5116	BJOG	http://search.proquest.com/publication/26244			pq2011						\N
5117	BMC Public Health  [NLM - MEDLINE]	http://search.proquest.com/publication/44783			pq2011						\N
5118	Behavioral Disorders	http://search.proquest.com/publication/48220			pq2011						\N
5119	Biochemistry	http://search.proquest.com/publication/54009		365	pq2011						\N
5120	Biodegradation	http://search.proquest.com/publication/54185		365	pq2011						\N
5121	Biodemography and Social Biology	http://search.proquest.com/publication/42418			pq2011						\N
5122	Biological Invasions	http://search.proquest.com/publication/55348		365	pq2011						\N
5123	Biomarkers in Medicine	http://search.proquest.com/publication/54247		365	pq2011						\N
5124	Biometrics	http://search.proquest.com/publication/35365			pq2011						\N
5125	Biometrics	http://search.proquest.com/publication/35366			pq2011						\N
5126	Biometrika	http://search.proquest.com/publication/47813			pq2011						\N
5127	Biostatistics	http://search.proquest.com/publication/26167			pq2011						\N
5128	Bioterrorism Week	http://search.proquest.com/publication/28043			pq2011						\N
5129	Birth	http://search.proquest.com/publication/37206			pq2011						\N
5130	Breast Cancer Online	http://search.proquest.com/publication/28909		365	pq2011						\N
5131	Breast Cancer Research and Treatment	http://search.proquest.com/publication/36266		365	pq2011						\N
5132	Briefings on Hospital Safety	http://search.proquest.com/publication/33584			pq2011						\N
5133	Briefings on Infection Control	http://search.proquest.com/publication/50794			pq2011						\N
5134	Briefings on the Joint Commission	http://search.proquest.com/publication/50795			pq2011						\N
5135	British Dental Journal	http://search.proquest.com/publication/42423		365	pq2011						\N
5137	British Journal of Biomedical Science	http://search.proquest.com/publication/4969			pq2011						\N
5138	The British Journal of Cancer	http://search.proquest.com/publication/41855		365	pq2011						\N
5139	British Journal of Health Psychology	http://search.proquest.com/publication/33660			pq2011						\N
5140	The British Journal of Nutrition	http://search.proquest.com/publication/5629		365	pq2011						\N
5141	British Journal of Social Work	http://search.proquest.com/publication/47486			pq2011						\N
5142	British Medical Journal	http://search.proquest.com/publication/40566			pq2011						\N
5143	Bulletin of Environmental Contamination and Toxicology	http://search.proquest.com/publication/54041		365	pq2011						\N
5144	CVD Prevention and Control	http://search.proquest.com/publication/105528			pq2011						\N
5145	Canada Communicable Disease Report	http://search.proquest.com/publication/33057			pq2011						\N
5146	Canadian Journal of Dietetic Practice and Research	http://search.proquest.com/publication/38184			pq2011						\N
5147	The Canadian Journal of Human Sexuality	http://search.proquest.com/publication/33400			pq2011						\N
5148	Canadian Journal of Medical Laboratory Science	http://search.proquest.com/publication/32671			pq2011						\N
5149	Canadian Journal of Public Health	http://search.proquest.com/publication/47649			pq2011						\N
5150	Canadian Review of Social Policy	http://search.proquest.com/publication/28163			pq2011						\N
5151	Canadian Social Trends	http://search.proquest.com/publication/29871		12	pq2011						\N
5152	Canadian Social Work Review	http://search.proquest.com/publication/43592			pq2011						\N
5153	Cancer Biotherapy & Radiopharmaceuticals	http://search.proquest.com/publication/33066		90	pq2011						\N
5154	Cancer Causes & Control	http://search.proquest.com/publication/31057		365	pq2011						\N
5155	Cancer Chemotherapy and Pharmacology	http://search.proquest.com/publication/48447		365	pq2011						\N
5156	Cancer Gene Therapy	http://search.proquest.com/publication/32245		365	pq2011						\N
5157	Cancer Immunology, Immunotherapy	http://search.proquest.com/publication/48449		365	pq2011						\N
5158	Cancer and Metastasis Reviews	http://search.proquest.com/publication/36268		365	pq2011						\N
5159	Cancerweekly Plus	http://search.proquest.com/publication/29857			pq2011						\N
5160	Carcinogenesis	http://search.proquest.com/publication/5479			pq2011						\N
5161	Caries Research	http://search.proquest.com/publication/34578		365	pq2011						\N
5162	Cell Biology and Toxicology	http://search.proquest.com/publication/54105		365	pq2011						\N
5163	Centers for Disease Control and Prevention (CDC) Documents / FIND	http://search.proquest.com/publication/28277			pq2011						\N
5164	Central European Journal of Public Health	http://search.proquest.com/publication/54116		180	pq2011						\N
5165	Chance	http://search.proquest.com/publication/55420		365	pq2011						\N
5166	Chest	http://search.proquest.com/publication/41913			pq2011						\N
5167	Child & Adolescent Social Work Journal	http://search.proquest.com/publication/37911		365	pq2011						\N
5168	Child Abuse & Neglect	http://search.proquest.com/publication/46284			pq2011						\N
5169	Child Care, Health and Development	http://search.proquest.com/publication/36405			pq2011						\N
5170	Child Development	http://search.proquest.com/publication/35183			pq2011						\N
5171	Child Psychiatry and Human Development	http://search.proquest.com/publication/54019		365	pq2011						\N
5172	Child Welfare	http://search.proquest.com/publication/40853			pq2011						\N
5173	Childhood Obesity	http://search.proquest.com/publication/29212		90	pq2011						\N
5174	Children & Schools	http://search.proquest.com/publication/26011			pq2011						\N
5176	Clinical Chemistry	http://search.proquest.com/publication/47786		365	pq2011						\N
5177	Clinical Child and Family Psychology Review	http://search.proquest.com/publication/54101		365	pq2011						\N
5178	Clinical Diabetes	http://search.proquest.com/publication/36783			pq2011						\N
5179	Clinical Infectious Diseases	http://search.proquest.com/publication/48300			pq2011						\N
5180	Clinical Laboratory Science	http://search.proquest.com/publication/35972			pq2011						\N
5181	Clinical Microbiology and Infection	http://search.proquest.com/publication/33911			pq2011						\N
5182	Clinical Nutrition Insight	http://search.proquest.com/publication/105693			pq2011						\N
5183	Clinical Oral Investigations	http://search.proquest.com/publication/33690		365	pq2011						\N
5184	Clinical Pediatrics	http://search.proquest.com/publication/42114			pq2011						\N
5185	Clinical Social Work Journal	http://search.proquest.com/publication/48519		365	pq2011						\N
5186	Clinical Trials	http://search.proquest.com/publication/40366			pq2011						\N
5187	Communication Disorders Quarterly	http://search.proquest.com/publication/46927			pq2011						\N
5188	Communique	http://search.proquest.com/publication/105360			pq2011						\N
5189	Community Action	http://search.proquest.com/publication/43733			pq2011						\N
5190	Community Care	http://search.proquest.com/publication/37624			pq2011						\N
5191	Community Dentistry and Oral Epidemiology	http://search.proquest.com/publication/32482			pq2011						\N
5192	Community Development Journal	http://search.proquest.com/publication/49102			pq2011						\N
5193	Community Mental Health Journal	http://search.proquest.com/publication/48521		365	pq2011						\N
5194	Community Practitioner	http://search.proquest.com/publication/47216			pq2011						\N
5195	Computational Statistics	http://search.proquest.com/publication/54096		365	pq2011						\N
5196	Consumer Product Safety Commission Documents	http://search.proquest.com/publication/237725			pq2011						\N
5197	Contemporary Drug Problems	http://search.proquest.com/publication/35338			pq2011						\N
5198	Contraceptive Technology Update	http://search.proquest.com/publication/105533			pq2011						\N
5199	Critical Public Health	http://search.proquest.com/publication/52913			pq2011						\N
5200	Critical Reviews in Food Science and Nutrition	http://search.proquest.com/publication/32624			pq2011						\N
5202	Culture, Medicine and Psychiatry	http://search.proquest.com/publication/36299		365	pq2011						\N
5203	Current Infectious Disease Reports	http://search.proquest.com/publication/54344		365	pq2011						\N
5204	Current Topics in Nutraceuticals Research	http://search.proquest.com/publication/136101			pq2011						\N
5205	Demographic Research	http://search.proquest.com/publication/38857			pq2011						\N
5206	Demography	http://search.proquest.com/publication/35817			pq2011						\N
5207	Dental Health	http://search.proquest.com/publication/105609			pq2011						\N
5208	Department of Energy (DOE) Documents / FIND	http://search.proquest.com/publication/28284			pq2011						\N
5209	Department of Health & Human Services (HHS) Documents / FIND	http://search.proquest.com/publication/28281			pq2011						\N
5210	Department of Homeland Security Documents / FIND	http://search.proquest.com/publication/28287			pq2011						\N
5211	Department of Justice (DOJ) Documents / FIND	http://search.proquest.com/publication/28282			pq2011						\N
5212	Diabetes	http://search.proquest.com/publication/34443			pq2011						\N
5213	Diabetes Care	http://search.proquest.com/publication/47715			pq2011						\N
5214	Diabetes Spectrum	http://search.proquest.com/publication/37012			pq2011						\N
5215	Diabetologia	http://search.proquest.com/publication/48469		365	pq2011						\N
5216	Directions in Global Health	http://search.proquest.com/publication/105458			pq2011						\N
5217	Disaster Prevention and Management	http://search.proquest.com/publication/25917		365	pq2011						\N
5218	Disclosure	http://search.proquest.com/publication/26225			pq2011						\N
5219	Disease Management & Health Outcomes	http://search.proquest.com/publication/43699			pq2011						\N
5220	EMBO Journal	http://search.proquest.com/publication/35985		365	pq2011						\N
5221	EMBO Reports	http://search.proquest.com/publication/26169		365	pq2011						\N
5222	EMS Product News	http://search.proquest.com/publication/38853			pq2011						\N
5223	Eastern Mediterranean Health Journal	http://search.proquest.com/publication/105605			pq2011						\N
5224	EcoHealth	http://search.proquest.com/publication/54560		365	pq2011						\N
5225	Ecology of Food and Nutrition	http://search.proquest.com/publication/186196			pq2011						\N
5226	Ecotoxicology	http://search.proquest.com/publication/44108		365	pq2011						\N
5227	Elder Law Weekly	http://search.proquest.com/publication/28446			pq2011						\N
5228	Emergency Medicine Journal : EMJ	http://search.proquest.com/publication/26603			pq2011						\N
5229	Emergency Room Data	http://search.proquest.com/publication/55172			pq2011						\N
5230	Emerging Themes in Epidemiology	http://search.proquest.com/publication/54779			pq2011						\N
5231	Environment of Care News	http://search.proquest.com/publication/105463			pq2011						\N
5232	Environmental Geochemistry and Health	http://search.proquest.com/publication/54167		365	pq2011						\N
5233	Environmental Health Criteria	http://search.proquest.com/publication/105680			pq2011						\N
5234	Environmental Health Perspectives	http://search.proquest.com/publication/48869			pq2011						\N
5235	Environmental Health and Preventive Medicine	http://search.proquest.com/publication/54360		365	pq2011						\N
5236	Environmental Management	http://search.proquest.com/publication/54064		365	pq2011						\N
5237	Environmental Monitoring and Assessment	http://search.proquest.com/publication/54151		365	pq2011						\N
5238	Environmental Protection Agency Documents and Publications	http://search.proquest.com/publication/237723			pq2011						\N
5239	Environmental Science and Pollution Research International	http://search.proquest.com/publication/54208		365	pq2011						\N
5240	Environmental Toxicology and Chemistry	http://search.proquest.com/publication/32741			pq2011						\N
5241	Epidemiologic Perspectives & Innovations	http://search.proquest.com/publication/54780			pq2011						\N
5242	Epidemiology and Infection	http://search.proquest.com/publication/6286			pq2011						\N
5243	Ergonomics	http://search.proquest.com/publication/33733			pq2011						\N
5244	Ergonomics SA	http://search.proquest.com/publication/39579			pq2011						\N
5245	Ethical Human Psychology and Psychiatry	http://search.proquest.com/publication/28974			pq2011						\N
5247	Ethnicity and Health	http://search.proquest.com/publication/32903			pq2011						\N
5248	European Journal of Clinical Nutrition	http://search.proquest.com/publication/33883		365	pq2011						\N
5249	European Journal of Epidemiology	http://search.proquest.com/publication/33638		365	pq2011						\N
5250	The European Journal of Health Economics :  HEPAC	http://search.proquest.com/publication/54391		365	pq2011						\N
5251	European Journal of Nutrition	http://search.proquest.com/publication/34175		365	pq2011						\N
5252	European Journal of Pediatrics	http://search.proquest.com/publication/47173			pq2011						\N
5253	European Journal of Population	http://search.proquest.com/publication/26354		365	pq2011						\N
5254	European Journal of Public Health	http://search.proquest.com/publication/29883			pq2011						\N
5255	Eurosurveillance	http://search.proquest.com/publication/105456			pq2011						\N
5256	Evaluation & the Health Professions	http://search.proquest.com/publication/37701			pq2011						\N
5257	Evidence - Based Dentistry	http://search.proquest.com/publication/44269		365	pq2011						\N
5258	Expert Review of Anticancer Therapy	http://search.proquest.com/publication/54568		365	pq2011						\N
5259	Expert Review of Clinical Immunology	http://search.proquest.com/publication/54590			pq2011						\N
5260	Expert Review of Respiratory Medicine	http://search.proquest.com/publication/54246			pq2011						\N
5261	Expert Review of Vaccines	http://search.proquest.com/publication/54580		365	pq2011						\N
5262	Extremes	http://search.proquest.com/publication/26123		365	pq2011						\N
5263	FAO Food and Nutrition Paper	http://search.proquest.com/publication/237319			pq2011						\N
5264	FDA Consumer	http://search.proquest.com/publication/34665			pq2011						\N
5265	FDA Veterinarian	http://search.proquest.com/publication/105550			pq2011						\N
5266	Family Health Research	http://search.proquest.com/publication/55029			pq2011						\N
5267	Family Process	http://search.proquest.com/publication/49117			pq2011						\N
5268	Family Therapy	http://search.proquest.com/publication/47866			pq2011						\N
5270	Fathering	http://search.proquest.com/publication/43303			pq2011						\N
5271	The Federal Register / FIND	http://search.proquest.com/publication/28411			pq2011						\N
5272	Fetal and Maternal Medicine Review	http://search.proquest.com/publication/32761			pq2011						\N
5273	Fire Engineering	http://search.proquest.com/publication/41199			pq2011						\N
5274	Fire Technology	http://search.proquest.com/publication/34624		365	pq2011						\N
5275	Folia Parasitologica	http://search.proquest.com/publication/32619		90	pq2011						\N
5276	Food & Foodways	http://search.proquest.com/publication/105354			pq2011						\N
5277	Food Additives and Contaminants	http://search.proquest.com/publication/406311			pq2011						\N
5278	Food Policy	http://search.proquest.com/publication/105622			pq2011						\N
5279	Food Protection Trends	http://search.proquest.com/publication/55379			pq2011						\N
5280	Food for Thought	http://search.proquest.com/publication/105372			pq2011						\N
5282	Forensic Science International	http://search.proquest.com/publication/105676			pq2011						\N
5283	Frontiers of Health Services Management	http://search.proquest.com/publication/36179			pq2011						\N
5285	Future Microbiology	http://search.proquest.com/publication/54596		365	pq2011						\N
5286	Future Virology	http://search.proquest.com/publication/54593			pq2011						\N
5287	The Future of Children	http://search.proquest.com/publication/34391			pq2011						\N
5288	Gastric Cancer	http://search.proquest.com/publication/43697		365	pq2011						\N
5289	Gene Therapy	http://search.proquest.com/publication/34384		365	pq2011						\N
5290	Genes and Immunity	http://search.proquest.com/publication/42724		365	pq2011						\N
5291	Genetic Counseling	http://search.proquest.com/publication/36889		90	pq2011						\N
5292	Genetics	http://search.proquest.com/publication/47453			pq2011						\N
5293	The Gerontologist	http://search.proquest.com/publication/41522			pq2011						\N
5294	Gerontology	http://search.proquest.com/publication/33168		365	pq2011						\N
5295	Gerontology & Geriatrics Education	http://search.proquest.com/publication/436430			pq2011						\N
5296	Global Health Promotion	http://search.proquest.com/publication/30778			pq2011						\N
5732	Weekly Epidemiological Record	http://search.proquest.com/publication/11346			pq2011						\N
5733	Weight Watchers Magazine	http://search.proquest.com/publication/37353			pq2011						\N
5734	Women & Health	http://search.proquest.com/publication/44959			pq2011						\N
5736	Work	http://search.proquest.com/publication/30901			pq2011						\N
5737	Work and Stress	http://search.proquest.com/publication/52923			pq2011						\N
5738	World Health Organization. Bulletin of the World Health Organization	http://search.proquest.com/publication/38034			pq2011						\N
5739	The World Health Report : Report of the Director-General	http://search.proquest.com/publication/105350			pq2011						\N
5740	World Watch	http://search.proquest.com/publication/5058			pq2011						\N
5741	Zeitschrift fuer Gesundheitswissenschaften	http://search.proquest.com/publication/326243		365	pq2011						\N
5742	Zoonoses and Public Health	http://search.proquest.com/publication/39931			pq2011						\N
5763	Bandolier (versión española)	http://www.infodoctor.org/bandolera/			presen				1997- 		
5755	Journal of Epidemiology and Community Health	http://jech.bmj.com/content/by/year			presen				1947 - 		
5757	Journal of Thoracic and Cardiovascular Surgery	http://www.sciencedirect.com/science/journal/00225223			presen				1995 -		
5756	Journal of the American Medical Directors Association	http://www.sciencedirect.com/science/journal/15258610			presen				2001 -		
5758	Journal of Vascular Surgery	http://www.sciencedirect.com/science/journal/07415214			presen				1995 -		
1323	Clinical Infectious Diseases	http://cid.oxfordjournals.org/			presen				1997 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
5749	American Journal of Psychiatry, The	http://ajp.psychiatryonline.org/issues.aspx?journalid=13			presen				1997-	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
2234	Arthritis and Rheumatism	http://www3.interscience.wiley.com/cgi-bin/jhome/76509746			presen				1996 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
1358	Intensive Care Medicine	http://www.springerlink.com/content/1432-1238/?p=6ef35c4c976c435eaf90c1b69f35bcc7&pi=0			presen				1997 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
1343	Journal of Applied Physiology	http://jap.physiology.org			presen				1997 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
2336	Pharmacotherapy	http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1875-9114			presen				1999 --	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
2285	Journal of Bone and Joint Surgery (American Vol)	http://jbjs.org/			presen				1889 -		
5762	Journal of Clinical Oncology	http://jco.ascopubs.org/			presen				1999 --	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
2227	Annals of Internal Medicine	http://www.annals.org/			presen				1993 -	Revista en període de renovació. Es poden presentar incidències. Disculpeu les molèsties. Podeu demanar els articles al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/	Revista en periodo de renovación. Se pueden presentar incidencias. Disculpen las molestias. Puede pedir los artículos al Servei Obtenció de Documents http://www.fbjoseplaporte.org/cdoc/
5751	Annals of Surgery	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00000658-000000000-00000			presen		santpau	cataluna	2000 -		
797	Anesthesia & Analgesia	http://gateway.ovid.com/ovidweb.cgi?T=JS&NEWS=N&PAGE=toc&SEARCH=00000539-000000000-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			presen				1957 -		
800	Critical Care Medicine	http://gateway.ovid.com/ovidweb.cgi?T=JS&MODE=ovid&NEWS=n&PAGE=toc&D=ovft&AN=00003246-000000000-00000			presen				1973 -		
1889	NEJM: New England Journal of Medicine	http://content.nejm.org			presen				1993 -		
5777	Revista Española de Investigación y Docencia Creativa	http://www.ugr.es/~reidocrea/			fbjl						
1364	Proceedings of the National Academy of Sciences of the USA 	http://www.pnas.org/content/by/year			presen				1915 -		
1484	Cell & Chromosome	http://www.cellandchromosome.com/content			fbjl				2002 -2008		
1491	Dynamic Medicine	http://www.dynamic-med.com/content			fbjl				2002 - 2009		
1493	Filaria Journal	http://www.filariajournal.com/content			fbjl				2002 - 2007		
5764	Parasites and Vectors	http://www.parasitesandvectors.com/			fbjl						
5765	World Journal of Surgical Oncology	http://www.wjso.com/			fbjl						
49	Internet Journal of Emergency & Intensive Care Medicine, The	https://ispub.com/IJEICM			fbjl				1997 -		
50	Internet Journal of Gynecology and Obstetrics, The	https://ispub.com/IJGO			fbjl				2001 -		
51	Internet Journal of Internal Medicine, The	https://ispub.com/IJIM			fbjl				2000 -		
5020	Journal of Rehabilitation Research and Development	http://www.rehab.research.va.gov/jrrd/index.html			fbjl				1984 -		
5766	Revista Española de Salud Pública	http://www.scielosp.org/scielo.php?script=sci_serial&pid=1135-5727&lng=es&nrm=iso			fbjl						
4997	Revista Española de Anestesiología y Reanimación	http://www.sedar.es/revistasedar/index.htm			althaia					Es rep en paper a la Biblioteca, per� tamb� est� disponible l�acc�s online. Per consultar els articles necessiteu el seg�ent nom d�usuari i contasenya: Althaia. 	Se recibe en papel en la Biblioteca, pero tambi�n est� disponible el acceso online. Para consultar los art�culos necesitan el siguiente nombre de usuario y contrase�a: Althaia. 
1359	Medicina Clinica	http://www.sciencedirect.com/science/journal/00257753			presen				1998 -	Per accedir a la revista cal tenir instal·lada la darrera versió dels navegadors "Internet Explorer 8" o "Mozilla Firefox 3.6".	Para poder acceder a la revista se debe tener instalada la última versión de los navegadores "Internet Explorer 8" o "Mozilla Firefox 3.6"
1331	Enfermeria Clinica	http://www.sciencedirect.com/science/journal/11308621			presen				2000 -	Per accedir a la revista cal tenir instal·lada la darrera versió dels navegadors "Internet Explorer 8" o "Mozilla Firefox 3.6"	Para poder acceder a la revista se debe tener instalada la última versión de los navegadores "Internet Explorer 8" o "Mozilla Firefox 3.6".
5752	American Journal of Physical Medicine & Rehabilitation	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&CSC=Y&NEWS=N&PAGE=toc&SEARCH=00002060-201208000-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			presen		santpau	cataluna	1998 -		
5761	AJN, American Journal of Nursing	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00000446-000000000-00000			presen		santpau	cataluna	2003 -		
5760	Obstetrics and Gynecology	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00006250-000000000-00000			presen		santpau	cataluna	1995 --		
5753	Current Opinion in Lipidology	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00041433-000000000-00000			presen		santpau	cataluna	1999 -		
5754	Journal of Clinical Psychopharmacology	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00004714-000000000-00000			presen		santpau	cataluna	2001 -		
5759	Neurosurgery	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00006123-000000000-00000			presen		santpau	cataluna	2001 -		
5767	Circulation	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=ovft&AN=00003017-000000000-00000			presen		santpau	cataluna			
5768	Lancet Neurology	http://www.thelancet.com/journals/laneur/issue/current			presen						
5769	Lancet Oncology	http://www.thelancet.com/journals/lanonc/issue/current			presen						
799	Circulation	http://gateway.ovid.com/ovidweb.cgi?T=JS&NEWS=N&PAGE=toc&SEARCH=00003017-000000000-00000.kc&LINKTYPE=asBody&LINKPOS=1&D=yrovft			presen				1950 -		
5774	JAMA Pediatrics	http://archpedi.jamanetwork.com/journal.aspx			presen				2013 -		
2202	Archives of Dermatology	http://archderm.ama-assn.org/			presen				1998 -2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5770&idinst=santpau">JAMA Dermatology</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5770&idinst=santpau">JAMA Dermatology</a>
2200	Archives of General Psychiatry	http://archpsyc.ama-assn.org/			presen				1998 - 2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5771&idinst=santpau">JAMA Psychiatry</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5771&idinst=santpau">JAMA Psychiatry</a>
2198	Archives of Neurology	http://archneur.ama-assn.org/			presen				1998 - 2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5772&idinst=santpau">JAMA Neurology</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5772&idinst=santpau">JAMA Neurology</a>
1531	Journal of the American Academy of Orthopaedic Surgeons	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=yrovft&AN=01979360-000000000-00000\n			cyclops						
2203	Archives of Otolaryngology - Head & Neck Surgery	http://archotol.ama-assn.org/			presen				1998 - 2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5773&idinst=santpau">JAMA Otolaryngology - Head & Neck Surgery</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5773&idinst=santpau">JAMA Otolaryngology - Head & Neck Surgery</a>
2201	Archives of Pediatrics & Adolescent Medicine	http://archpedi.ama-assn.org/			presen				1998 - 2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5774&idinst=santpau">JAMA Pediatrics</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5774&idinst=santpau">JAMA Pediatrics</a>
2199	Archives of Surgery	http://archsurg.ama-assn.org/			presen				1998 - 2012	Continuada per <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5775&idinst=santpau">JAMA Surgery</a>	Continuada por <a href="http://www.fbjoseplaporte.org/bibdigital/logger.php?idrev=5775&idinst=santpau">JAMA Surgery</a>
5770	JAMA Dermatology	http://archderm.jamanetwork.com/journal.aspx			presen				2013 -		
5772	JAMA Neurology	http://archneur.jamanetwork.com/journal.aspx			presen				2013 -		
5773	JAMA Otolaryngology - Head & Neck Surgery	http://archotol.jamanetwork.com/journal.aspx			presen				2013 -		
5771	JAMA Psychiatry	http://archpsyc.jamanetwork.com/journal.aspx			presen				2013 -		
5775	JAMA Surgery	http://archsurg.jamanetwork.com/journal.aspx			presen				2013 -		
1431	BMC Chemical Biology	http://bmcbiochem.biomedcentral.com/			fbjl				2001 -	Fusionada amb BMC Biochemistry	Fusionada con BMC Biochemistry
261	European Journal of Epidemiology; Dordrecht (1999-actualitat)	http://link.springer.com/search?query=&search-within=Journal&facet-journal-id=10654&package=openaccessarticles		365	fbjl				1999 -		
5776	Archivos de Medicina	http://www.archivosdemedicina.com/			fbjl						
5778	Revista Virtual de la Sociedad Paraguaya de Medicina Interna	http://www.revista.spmi.org.py/index.php/rvspmi/index			fbjl						
5779	Revista Electrónica Dr. Zoilo E. Marinello Vidaurreta	http://revzoilomarinello.sld.cu/index.php/zmv			fbjl						
5780	Àmbits de Psicopedagogia i Orientació	http://ambitsdepsicopedagogiaiorientacio.cat/			fbjl						
5781	CIENCIA ergo-sum	http://cienciaergosum.uaemex.mx/index.php/ergosum			fbjl						
5782	Multimed	http://www.multimedgrm.sld.cu/			fbjl						
5783	ReiDoCrea: Revista Electrónica de Investigación y Docencia Creativa	http://www.ugr.es/~reidocrea/			fbjl						
5784	Respuestas	http://revistas.ufps.edu.co/ojs/index.php/respuestas/index			fbjl						
5785	Revista Avances	http://avances.idict.cu/index.php/publicaciones			fbjl						
5786	Revista Científica Universidad Odontológica Dominicana	https://revistacientificauod.wordpress.com/			fbjl						
5787	Revista Colombiana de Medicina Física y Rehabilitación	http://www.revistacmfr.org/index.php/rcmfr			fbjl						
5788	Revista Griot	http://revistagriot.uprrp.edu/			fbjl						
5789	RICYDE: Revista Internacional de Ciencias del Deporte	http://www.cafyd.com/REVISTA/ojs/index.php/ricyde			fbjl						
5790	Medicina del trabajo	http://www.aeemt.com/Revista_AEEMT_NF/REVISTA_NUEVO_FORMATO.html			fbjl						
5791	Revista de la Sociedad Española de Medicina y Seguridad del Trabajo	http://revista.semst.org/index.php/semst/index			fbjl						
5014	Clinical Orthopaedics & Related Research (American Vol.)	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=yrovft&AN=00003086-000000000-00000			cyclops				2008 -		
5018	Spine	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=yrovft&AN=00007632-000000000-00000\n			cyclops						
5792	JAAOS: Global research and reviews	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=yrovft&AN=01979360-000000000-00000\n			cyclops						
5793	Spine: affiliated society meeting abstracts	http://ovidsp.ovid.com/ovidweb.cgi?T=JS&NEWS=n&CSC=Y&PAGE=toc&D=yrovft&AN=00152232-000000000-00000\n			cyclops						
5794	Révue de Chirurgie Orthopédique et Traumatologie	https://www.journals.elsevier.com/revue-de-chirurgie-orthopedique-et-traumatologique	001		cyclops						
\.


--
-- Data for Name: tipus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipus (id, nom, descrip) FROM stdin;
9	Recurso de pròva	dddddd
0	Recursos Generals	Recursos electrònics de caire general
1	Diccionaris i enciclopèdies	Obres de referència
2	Bancs d'imatges	Imatges
3	Bases de dades	Bases de dades
5	MBE - Medicina Basada en l'evidència	MBE
6	Medicaments i fàrmacs	Medicines
7	Infermeria	Infermeria
4	Llibres electrònics	Llibres
\.


--
-- Name: rev2pat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rev2pat
    ADD CONSTRAINT rev2pat_pkey PRIMARY KEY (id);


--
-- Name: patologies_id_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX patologies_id_key ON patologies USING btree (id);


--
-- Name: principal_id_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX principal_id_key ON principal_old USING btree (id);


--
-- Name: projectes_id_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX projectes_id_key ON projectes USING btree (id);


--
-- Name: tipus_id_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX tipus_id_key ON tipus USING btree (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: patologies; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE patologies FROM PUBLIC;
REVOKE ALL ON TABLE patologies FROM postgres;
GRANT ALL ON TABLE patologies TO postgres;


--
-- Name: patologies_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE patologies_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE patologies_id_seq FROM postgres;
GRANT ALL ON SEQUENCE patologies_id_seq TO postgres;


--
-- Name: prin_biblio; Type: ACL; Schema: public; Owner: root
--

REVOKE ALL ON TABLE prin_biblio FROM PUBLIC;
REVOKE ALL ON TABLE prin_biblio FROM root;
GRANT ALL ON TABLE prin_biblio TO root;
GRANT ALL ON TABLE prin_biblio TO PUBLIC;


--
-- Name: prin_tipus; Type: ACL; Schema: public; Owner: root
--

REVOKE ALL ON TABLE prin_tipus FROM PUBLIC;
REVOKE ALL ON TABLE prin_tipus FROM root;
GRANT ALL ON TABLE prin_tipus TO root;
GRANT ALL ON TABLE prin_tipus TO PUBLIC;


--
-- Name: princ2pat; Type: ACL; Schema: public; Owner: root
--

REVOKE ALL ON TABLE princ2pat FROM PUBLIC;
REVOKE ALL ON TABLE princ2pat FROM root;
GRANT ALL ON TABLE princ2pat TO root;
GRANT ALL ON TABLE princ2pat TO PUBLIC;


--
-- Name: principal_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE principal_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE principal_id_seq FROM postgres;
GRANT ALL ON SEQUENCE principal_id_seq TO postgres;


--
-- Name: principal_old; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE principal_old FROM PUBLIC;
REVOKE ALL ON TABLE principal_old FROM postgres;
GRANT ALL ON TABLE principal_old TO postgres;


--
-- Name: projectes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE projectes FROM PUBLIC;
REVOKE ALL ON TABLE projectes FROM postgres;
GRANT ALL ON TABLE projectes TO postgres;


--
-- Name: projectes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE projectes_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE projectes_id_seq FROM postgres;
GRANT ALL ON SEQUENCE projectes_id_seq TO postgres;


--
-- Name: recxproj; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE recxproj FROM PUBLIC;
REVOKE ALL ON TABLE recxproj FROM postgres;
GRANT ALL ON TABLE recxproj TO postgres;


--
-- Name: rev2pat; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE rev2pat FROM PUBLIC;
REVOKE ALL ON TABLE rev2pat FROM postgres;
GRANT ALL ON TABLE rev2pat TO postgres;
GRANT ALL ON TABLE rev2pat TO PUBLIC;


--
-- Name: rev2pat_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE rev2pat_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE rev2pat_id_seq FROM postgres;
GRANT ALL ON SEQUENCE rev2pat_id_seq TO postgres;
GRANT ALL ON SEQUENCE rev2pat_id_seq TO PUBLIC;


--
-- Name: revistes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE revistes FROM PUBLIC;
REVOKE ALL ON TABLE revistes FROM postgres;
GRANT ALL ON TABLE revistes TO postgres;
GRANT ALL ON TABLE revistes TO PUBLIC;


--
-- Name: revistes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE revistes_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE revistes_id_seq FROM postgres;
GRANT ALL ON SEQUENCE revistes_id_seq TO postgres;
GRANT ALL ON SEQUENCE revistes_id_seq TO PUBLIC;


--
-- Name: tipus; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE tipus FROM PUBLIC;
REVOKE ALL ON TABLE tipus FROM postgres;
GRANT ALL ON TABLE tipus TO postgres;


--
-- Name: tipus_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE tipus_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE tipus_id_seq FROM postgres;
GRANT ALL ON SEQUENCE tipus_id_seq TO postgres;


--
-- PostgreSQL database dump complete
--

