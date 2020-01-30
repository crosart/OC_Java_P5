--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-01-30 13:42:56

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: tableocpizza; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tableocpizza;


ALTER SCHEMA tableocpizza OWNER TO postgres;

--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA tableocpizza; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tableocpizza IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 16620)
-- Name: address; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.address (
    addressid integer NOT NULL,
    zipcode character varying NOT NULL,
    city character varying NOT NULL,
    street character varying NOT NULL,
    moreinfo character varying NOT NULL
);


ALTER TABLE tableocpizza.address OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16618)
-- Name: address_addressid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.address_addressid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.address_addressid_seq_1 OWNER TO postgres;

--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 204
-- Name: address_addressid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.address_addressid_seq_1 OWNED BY tableocpizza.address.addressid;


--
-- TOC entry 215 (class 1259 OID 16675)
-- Name: bill; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.bill (
    billid integer NOT NULL,
    paytypeid integer NOT NULL,
    orderid integer NOT NULL,
    billnumber character varying NOT NULL,
    totalamount real NOT NULL,
    vatamount real NOT NULL
);


ALTER TABLE tableocpizza.bill OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16673)
-- Name: bill_billid_seq; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.bill_billid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.bill_billid_seq OWNER TO postgres;

--
-- TOC entry 2982 (class 0 OID 0)
-- Dependencies: 214
-- Name: bill_billid_seq; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.bill_billid_seq OWNED BY tableocpizza.bill.billid;


--
-- TOC entry 216 (class 1259 OID 16684)
-- Name: bill_customer; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.bill_customer (
    customerid integer NOT NULL,
    billid integer NOT NULL
);


ALTER TABLE tableocpizza.bill_customer OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16631)
-- Name: customer; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.customer (
    customerid integer NOT NULL,
    addressid integer NOT NULL,
    title character varying NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    telnum character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE tableocpizza.customer OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16629)
-- Name: customer_customerid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.customer_customerid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.customer_customerid_seq_1 OWNER TO postgres;

--
-- TOC entry 2983 (class 0 OID 0)
-- Dependencies: 206
-- Name: customer_customerid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.customer_customerid_seq_1 OWNED BY tableocpizza.customer.customerid;


--
-- TOC entry 226 (class 1259 OID 16734)
-- Name: employee; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.employee (
    employeeid integer NOT NULL,
    restaurantid integer NOT NULL,
    jobid integer NOT NULL,
    title character varying NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE tableocpizza.employee OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16732)
-- Name: employee_employeeid_seq; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.employee_employeeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.employee_employeeid_seq OWNER TO postgres;

--
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 225
-- Name: employee_employeeid_seq; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.employee_employeeid_seq OWNED BY tableocpizza.employee.employeeid;


--
-- TOC entry 221 (class 1259 OID 16707)
-- Name: ingredient; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.ingredient (
    ingredientid integer NOT NULL,
    supplyid integer NOT NULL,
    ingredientname character varying NOT NULL,
    spoildate date NOT NULL,
    measureunit character varying NOT NULL
);


ALTER TABLE tableocpizza.ingredient OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16705)
-- Name: ingredient_ingredientid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.ingredient_ingredientid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.ingredient_ingredientid_seq_1 OWNER TO postgres;

--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 220
-- Name: ingredient_ingredientid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.ingredient_ingredientid_seq_1 OWNED BY tableocpizza.ingredient.ingredientid;


--
-- TOC entry 224 (class 1259 OID 16723)
-- Name: jobtype; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.jobtype (
    jobid integer NOT NULL,
    jobname character varying NOT NULL
);


ALTER TABLE tableocpizza.jobtype OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16721)
-- Name: jobtype_jobid_seq; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.jobtype_jobid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.jobtype_jobid_seq OWNER TO postgres;

--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 223
-- Name: jobtype_jobid_seq; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.jobtype_jobid_seq OWNED BY tableocpizza.jobtype.jobid;


--
-- TOC entry 217 (class 1259 OID 16689)
-- Name: order_product; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.order_product (
    productid integer NOT NULL,
    orderid integer NOT NULL
);


ALTER TABLE tableocpizza.order_product OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16664)
-- Name: orders; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.orders (
    orderid integer NOT NULL,
    restaurantid integer NOT NULL,
    ordernumber character varying NOT NULL,
    orderdate date NOT NULL
);


ALTER TABLE tableocpizza.orders OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16662)
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.orders_orderid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.orders_orderid_seq OWNER TO postgres;

--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 212
-- Name: orders_orderid_seq; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.orders_orderid_seq OWNED BY tableocpizza.orders.orderid;


--
-- TOC entry 203 (class 1259 OID 16609)
-- Name: paymenttype; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.paymenttype (
    paytypeid integer NOT NULL,
    paytypename character varying NOT NULL
);


ALTER TABLE tableocpizza.paymenttype OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16607)
-- Name: paymenttype_paytypeid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.paymenttype_paytypeid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.paymenttype_paytypeid_seq_1 OWNER TO postgres;

--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 202
-- Name: paymenttype_paytypeid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.paymenttype_paytypeid_seq_1 OWNED BY tableocpizza.paymenttype.paytypeid;


--
-- TOC entry 211 (class 1259 OID 16653)
-- Name: product; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.product (
    productid integer NOT NULL,
    restaurantid integer NOT NULL,
    productname character varying NOT NULL,
    productprice real NOT NULL
);


ALTER TABLE tableocpizza.product OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16716)
-- Name: product_ingredient; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.product_ingredient (
    productid integer NOT NULL,
    ingredientid integer NOT NULL
);


ALTER TABLE tableocpizza.product_ingredient OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16651)
-- Name: product_productid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.product_productid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.product_productid_seq_1 OWNER TO postgres;

--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 210
-- Name: product_productid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.product_productid_seq_1 OWNED BY tableocpizza.product.productid;


--
-- TOC entry 209 (class 1259 OID 16642)
-- Name: restaurant; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.restaurant (
    restaurantid integer NOT NULL,
    zipcode character varying NOT NULL,
    city character varying NOT NULL,
    street character varying NOT NULL
);


ALTER TABLE tableocpizza.restaurant OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16640)
-- Name: restaurant_restaurantid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.restaurant_restaurantid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.restaurant_restaurantid_seq_1 OWNER TO postgres;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 208
-- Name: restaurant_restaurantid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.restaurant_restaurantid_seq_1 OWNED BY tableocpizza.restaurant.restaurantid;


--
-- TOC entry 219 (class 1259 OID 16696)
-- Name: supply; Type: TABLE; Schema: tableocpizza; Owner: postgres
--

CREATE TABLE tableocpizza.supply (
    supplyid integer NOT NULL,
    restaurantid integer NOT NULL,
    quantity character varying NOT NULL,
    resupplydate date NOT NULL
);


ALTER TABLE tableocpizza.supply OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16694)
-- Name: supply_supplyid_seq_1; Type: SEQUENCE; Schema: tableocpizza; Owner: postgres
--

CREATE SEQUENCE tableocpizza.supply_supplyid_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tableocpizza.supply_supplyid_seq_1 OWNER TO postgres;

--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 218
-- Name: supply_supplyid_seq_1; Type: SEQUENCE OWNED BY; Schema: tableocpizza; Owner: postgres
--

ALTER SEQUENCE tableocpizza.supply_supplyid_seq_1 OWNED BY tableocpizza.supply.supplyid;


--
-- TOC entry 2771 (class 2604 OID 16623)
-- Name: address addressid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.address ALTER COLUMN addressid SET DEFAULT nextval('tableocpizza.address_addressid_seq_1'::regclass);


--
-- TOC entry 2776 (class 2604 OID 16678)
-- Name: bill billid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill ALTER COLUMN billid SET DEFAULT nextval('tableocpizza.bill_billid_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 16634)
-- Name: customer customerid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.customer ALTER COLUMN customerid SET DEFAULT nextval('tableocpizza.customer_customerid_seq_1'::regclass);


--
-- TOC entry 2780 (class 2604 OID 16737)
-- Name: employee employeeid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.employee ALTER COLUMN employeeid SET DEFAULT nextval('tableocpizza.employee_employeeid_seq'::regclass);


--
-- TOC entry 2778 (class 2604 OID 16710)
-- Name: ingredient ingredientid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.ingredient ALTER COLUMN ingredientid SET DEFAULT nextval('tableocpizza.ingredient_ingredientid_seq_1'::regclass);


--
-- TOC entry 2779 (class 2604 OID 16726)
-- Name: jobtype jobid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.jobtype ALTER COLUMN jobid SET DEFAULT nextval('tableocpizza.jobtype_jobid_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 16667)
-- Name: orders orderid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.orders ALTER COLUMN orderid SET DEFAULT nextval('tableocpizza.orders_orderid_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 16612)
-- Name: paymenttype paytypeid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.paymenttype ALTER COLUMN paytypeid SET DEFAULT nextval('tableocpizza.paymenttype_paytypeid_seq_1'::regclass);


--
-- TOC entry 2774 (class 2604 OID 16656)
-- Name: product productid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product ALTER COLUMN productid SET DEFAULT nextval('tableocpizza.product_productid_seq_1'::regclass);


--
-- TOC entry 2773 (class 2604 OID 16645)
-- Name: restaurant restaurantid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.restaurant ALTER COLUMN restaurantid SET DEFAULT nextval('tableocpizza.restaurant_restaurantid_seq_1'::regclass);


--
-- TOC entry 2777 (class 2604 OID 16699)
-- Name: supply supplyid; Type: DEFAULT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.supply ALTER COLUMN supplyid SET DEFAULT nextval('tableocpizza.supply_supplyid_seq_1'::regclass);


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

COPY tableocpizza.bill (billid, paytypeid, orderid, billnumber, totalamount, vatamount) FROM stdin;
1	1	1	F000000001	35	7
2	2	2	F000000002	17	3.4
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


--
-- TOC entry 2784 (class 2606 OID 16628)
-- Name: address address_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.address
    ADD CONSTRAINT address_pk PRIMARY KEY (addressid);


--
-- TOC entry 2796 (class 2606 OID 16688)
-- Name: bill_customer bill_customer_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill_customer
    ADD CONSTRAINT bill_customer_pk PRIMARY KEY (customerid, billid);


--
-- TOC entry 2794 (class 2606 OID 16683)
-- Name: bill bill_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill
    ADD CONSTRAINT bill_pk PRIMARY KEY (billid);


--
-- TOC entry 2786 (class 2606 OID 16639)
-- Name: customer customer_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.customer
    ADD CONSTRAINT customer_pk PRIMARY KEY (customerid);


--
-- TOC entry 2808 (class 2606 OID 16742)
-- Name: employee employee_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.employee
    ADD CONSTRAINT employee_pk PRIMARY KEY (employeeid);


--
-- TOC entry 2802 (class 2606 OID 16715)
-- Name: ingredient ingredient_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.ingredient
    ADD CONSTRAINT ingredient_pk PRIMARY KEY (ingredientid);


--
-- TOC entry 2806 (class 2606 OID 16731)
-- Name: jobtype jobtype_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.jobtype
    ADD CONSTRAINT jobtype_pk PRIMARY KEY (jobid);


--
-- TOC entry 2798 (class 2606 OID 16693)
-- Name: order_product order_product_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.order_product
    ADD CONSTRAINT order_product_pk PRIMARY KEY (productid, orderid);


--
-- TOC entry 2792 (class 2606 OID 16672)
-- Name: orders orders_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.orders
    ADD CONSTRAINT orders_pk PRIMARY KEY (orderid);


--
-- TOC entry 2782 (class 2606 OID 16617)
-- Name: paymenttype paymenttype_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.paymenttype
    ADD CONSTRAINT paymenttype_pk PRIMARY KEY (paytypeid);


--
-- TOC entry 2804 (class 2606 OID 16720)
-- Name: product_ingredient product_ingredient_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product_ingredient
    ADD CONSTRAINT product_ingredient_pk PRIMARY KEY (productid, ingredientid);


--
-- TOC entry 2790 (class 2606 OID 16661)
-- Name: product product_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product
    ADD CONSTRAINT product_pk PRIMARY KEY (productid);


--
-- TOC entry 2788 (class 2606 OID 16650)
-- Name: restaurant restaurant_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.restaurant
    ADD CONSTRAINT restaurant_pk PRIMARY KEY (restaurantid);


--
-- TOC entry 2800 (class 2606 OID 16704)
-- Name: supply supply_pk; Type: CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.supply
    ADD CONSTRAINT supply_pk PRIMARY KEY (supplyid);


--
-- TOC entry 2809 (class 2606 OID 16748)
-- Name: customer address_customer_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.customer
    ADD CONSTRAINT address_customer_fk FOREIGN KEY (addressid) REFERENCES tableocpizza.address(addressid);


--
-- TOC entry 2815 (class 2606 OID 16798)
-- Name: bill_customer bill_restaurant_client_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill_customer
    ADD CONSTRAINT bill_restaurant_client_fk FOREIGN KEY (billid) REFERENCES tableocpizza.bill(billid);


--
-- TOC entry 2814 (class 2606 OID 16753)
-- Name: bill_customer customer_restaurant_client_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill_customer
    ADD CONSTRAINT customer_restaurant_client_fk FOREIGN KEY (customerid) REFERENCES tableocpizza.customer(customerid);


--
-- TOC entry 2821 (class 2606 OID 16808)
-- Name: product_ingredient ingredient_product_ingredient_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product_ingredient
    ADD CONSTRAINT ingredient_product_ingredient_fk FOREIGN KEY (ingredientid) REFERENCES tableocpizza.ingredient(ingredientid);


--
-- TOC entry 2823 (class 2606 OID 16813)
-- Name: employee jobtype_employee_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.employee
    ADD CONSTRAINT jobtype_employee_fk FOREIGN KEY (jobid) REFERENCES tableocpizza.jobtype(jobid);


--
-- TOC entry 2813 (class 2606 OID 16793)
-- Name: bill order_bill_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill
    ADD CONSTRAINT order_bill_fk FOREIGN KEY (orderid) REFERENCES tableocpizza.orders(orderid);


--
-- TOC entry 2817 (class 2606 OID 16788)
-- Name: order_product order_order_product_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.order_product
    ADD CONSTRAINT order_order_product_fk FOREIGN KEY (orderid) REFERENCES tableocpizza.orders(orderid);


--
-- TOC entry 2812 (class 2606 OID 16743)
-- Name: bill paymenttype_bill_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.bill
    ADD CONSTRAINT paymenttype_bill_fk FOREIGN KEY (paytypeid) REFERENCES tableocpizza.paymenttype(paytypeid);


--
-- TOC entry 2816 (class 2606 OID 16778)
-- Name: order_product product_order_product_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.order_product
    ADD CONSTRAINT product_order_product_fk FOREIGN KEY (productid) REFERENCES tableocpizza.product(productid);


--
-- TOC entry 2820 (class 2606 OID 16783)
-- Name: product_ingredient product_product_ingredient_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product_ingredient
    ADD CONSTRAINT product_product_ingredient_fk FOREIGN KEY (productid) REFERENCES tableocpizza.product(productid);


--
-- TOC entry 2822 (class 2606 OID 16758)
-- Name: employee restaurant_employee_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.employee
    ADD CONSTRAINT restaurant_employee_fk FOREIGN KEY (restaurantid) REFERENCES tableocpizza.restaurant(restaurantid);


--
-- TOC entry 2811 (class 2606 OID 16768)
-- Name: orders restaurant_order_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.orders
    ADD CONSTRAINT restaurant_order_fk FOREIGN KEY (restaurantid) REFERENCES tableocpizza.restaurant(restaurantid);


--
-- TOC entry 2810 (class 2606 OID 16773)
-- Name: product restaurant_product_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.product
    ADD CONSTRAINT restaurant_product_fk FOREIGN KEY (restaurantid) REFERENCES tableocpizza.restaurant(restaurantid);


--
-- TOC entry 2818 (class 2606 OID 16763)
-- Name: supply restaurant_supply_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.supply
    ADD CONSTRAINT restaurant_supply_fk FOREIGN KEY (restaurantid) REFERENCES tableocpizza.restaurant(restaurantid);


--
-- TOC entry 2819 (class 2606 OID 16803)
-- Name: ingredient supply_ingredient_fk; Type: FK CONSTRAINT; Schema: tableocpizza; Owner: postgres
--

ALTER TABLE ONLY tableocpizza.ingredient
    ADD CONSTRAINT supply_ingredient_fk FOREIGN KEY (supplyid) REFERENCES tableocpizza.supply(supplyid);


-- Completed on 2020-01-30 13:42:56

--
-- PostgreSQL database dump complete
--

