--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-02-05 09:38:31

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
-- TOC entry 2953 (class 0 OID 16620)
-- Dependencies: 205
-- Data for Name: address; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.address (addressid, zipcode, city, street, moreinfo) FROM stdin;
1	34820	TEYRAN	2 RUE DU PONT VIEUX	ATTENTION AU CHIEN
2	75001	PARIS 01	12 RUE DES MOULINS	CODE 1234
4	77310	BOISSISE LE ROI	42 AVENUE DE BOURGOGNE	NC
\.


--
-- TOC entry 2963 (class 0 OID 16675)
-- Dependencies: 215
-- Data for Name: bill; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.bill (billid, paytypeid, orderid, billnumber, totalamount, vatamount, "billStatus") FROM stdin;
1	1	1	F000000001	35	7	\N
2	2	2	F000000002	17	3.4	\N
\.


--
-- TOC entry 2964 (class 0 OID 16684)
-- Dependencies: 216
-- Data for Name: bill_customer; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.bill_customer (customerid, billid) FROM stdin;
2	1
1	2
\.


--
-- TOC entry 2955 (class 0 OID 16631)
-- Dependencies: 207
-- Data for Name: customer; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.customer (customerid, addressid, title, firstname, lastname, telnum, email) FROM stdin;
1	1	M	ARTHUR	CROS	0783293996	cros.arthur@gmail.com
2	2	MME	PATRICIA	NAPOLITAINE	0123456789	patnapo@orange.fr
4	4	MLLE	TRIXIE	MATTEL	0698982121	trattel@sfr.fr
\.


--
-- TOC entry 2974 (class 0 OID 16734)
-- Dependencies: 226
-- Data for Name: employee; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.employee (employeeid, restaurantid, jobid, title, firstname, lastname, email) FROM stdin;
1	1	1	M	GERARD	GERANT	g.gerant@ocpizza.fr
3	1	2	M	JEAN	CAISSE	j.caisse@ocpizza.fr
4	1	3	MLLE	SARAH	STOCK	s.stock@ocpizza.fr
5	1	4	M	HERVE	PIZZA	h.pizza@ocpizza.fr
6	1	5	MME	JADE	OMICILE	j.omicile@ocpizza.fr
7	2	1	MME	JESSICA	BOSS	j.boss@ocpizza.fr
8	2	2	MLLE	JAIME	LARGENT	j.largent@ocpizza.fr
9	2	3	M	FRED	UJOUR	f.ujour@ocpizza.fr
10	2	4	MME	MONICA	LZONE	m.lzone@ocpizza.fr
11	2	5	M	JARRY	VECHEVOU	j.vechevou@ocpizza.fr
\.


--
-- TOC entry 2969 (class 0 OID 16707)
-- Dependencies: 221
-- Data for Name: ingredient; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.ingredient (ingredientid, supplyid, ingredientname, spoildate, measureunit) FROM stdin;
2	1	SAUCE TOMATE	2020-02-03	LITRES
3	2	SAUCE TOMATE	2020-02-03	LITRES
4	3	CHAMPIGNONG	2020-02-05	KG
5	4	CHAMPIGNONS	2020-02-05	KG
\.


--
-- TOC entry 2972 (class 0 OID 16723)
-- Dependencies: 224
-- Data for Name: jobtype; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.jobtype (jobid, jobname) FROM stdin;
1	GERANT
2	CAISSE
3	MANAGER
4	PIZZAIOLO
5	LIVREUR
\.


--
-- TOC entry 2965 (class 0 OID 16689)
-- Dependencies: 217
-- Data for Name: order_product; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.order_product (productid, orderid) FROM stdin;
1	1
3	1
6	2
\.


--
-- TOC entry 2961 (class 0 OID 16664)
-- Dependencies: 213
-- Data for Name: orders; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.orders (orderid, restaurantid, ordernumber, orderdate) FROM stdin;
1	1	0000000001	2020-01-29
2	2	0000000001	2020-01-30
\.


--
-- TOC entry 2951 (class 0 OID 16609)
-- Dependencies: 203
-- Data for Name: paymenttype; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.paymenttype (paytypeid, paytypename) FROM stdin;
1	CB
2	ESPECES
3	CHEQUE
4	PAYPAL
\.


--
-- TOC entry 2959 (class 0 OID 16653)
-- Dependencies: 211
-- Data for Name: product; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.product (productid, restaurantid, productname, productprice) FROM stdin;
1	1	PIZZA REINE	15
2	2	PIZZA REINE	15
3	1	PIZZA CALZONE	20
4	2	PIZZA CALZONE	20
5	1	PIZZA 4 FROMAGES	17
6	2	PIZZA 4 FROMAGES	17
\.


--
-- TOC entry 2970 (class 0 OID 16716)
-- Dependencies: 222
-- Data for Name: product_ingredient; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.product_ingredient (productid, ingredientid) FROM stdin;
1	2
1	4
2	3
2	5
\.


--
-- TOC entry 2957 (class 0 OID 16642)
-- Dependencies: 209
-- Data for Name: restaurant; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.restaurant (restaurantid, zipcode, city, street) FROM stdin;
1	75002	PARIS 02	40 RUE SAINTE ANNE
2	34000	MONTPELLIER	4 RUE PHILIPPY
\.


--
-- TOC entry 2967 (class 0 OID 16696)
-- Dependencies: 219
-- Data for Name: supply; Type: TABLE DATA; Schema: tableocpizza; Owner: postgres
--

COPY tableocpizza.supply (supplyid, restaurantid, quantity, resupplydate) FROM stdin;
1	1	30	2020-01-25
2	2	30	2020-01-25
3	1	2	2020-01-25
4	2	2	2020-01-25
\.


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 204
-- Name: address_addressid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.address_addressid_seq_1', 4, true);


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 214
-- Name: bill_billid_seq; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.bill_billid_seq', 2, true);


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 206
-- Name: customer_customerid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.customer_customerid_seq_1', 4, true);


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 225
-- Name: employee_employeeid_seq; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.employee_employeeid_seq', 11, true);


--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 220
-- Name: ingredient_ingredientid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.ingredient_ingredientid_seq_1', 5, true);


--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 223
-- Name: jobtype_jobid_seq; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.jobtype_jobid_seq', 5, true);


--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 212
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.orders_orderid_seq', 2, true);


--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 202
-- Name: paymenttype_paytypeid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.paymenttype_paytypeid_seq_1', 4, true);


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 210
-- Name: product_productid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.product_productid_seq_1', 6, true);


--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 208
-- Name: restaurant_restaurantid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.restaurant_restaurantid_seq_1', 2, true);


--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 218
-- Name: supply_supplyid_seq_1; Type: SEQUENCE SET; Schema: tableocpizza; Owner: postgres
--

SELECT pg_catalog.setval('tableocpizza.supply_supplyid_seq_1', 4, true);


-- Completed on 2020-02-05 09:38:32

--
-- PostgreSQL database dump complete
--

