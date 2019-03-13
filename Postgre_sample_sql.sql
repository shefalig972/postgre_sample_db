--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2019-03-13 18:21:37 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12998)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 263 (class 1259 OID 108890)
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id bigint,
    author_type character varying,
    author_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_admin_comments OWNER TO root;

--
-- TOC entry 262 (class 1259 OID 108888)
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO root;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 262
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- TOC entry 267 (class 1259 OID 108916)
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO root;

--
-- TOC entry 266 (class 1259 OID 108914)
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO root;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 266
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- TOC entry 265 (class 1259 OID 108904)
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO root;

--
-- TOC entry 264 (class 1259 OID 108902)
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO root;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 264
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- TOC entry 261 (class 1259 OID 108875)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO root;

--
-- TOC entry 260 (class 1259 OID 108873)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO root;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 260
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 223 (class 1259 OID 108561)
-- Name: amount_options; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.amount_options (
    id bigint NOT NULL,
    options character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.amount_options OWNER TO root;

--
-- TOC entry 222 (class 1259 OID 108559)
-- Name: amount_options_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.amount_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amount_options_id_seq OWNER TO root;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 222
-- Name: amount_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.amount_options_id_seq OWNED BY public.amount_options.id;


--
-- TOC entry 197 (class 1259 OID 108363)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO root;

--
-- TOC entry 251 (class 1259 OID 108793)
-- Name: auto_responders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auto_responders (
    id bigint NOT NULL,
    subject character varying,
    template text,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sibling_id character varying,
    website_language_id integer,
    template_type character varying
);


ALTER TABLE public.auto_responders OWNER TO root;

--
-- TOC entry 250 (class 1259 OID 108791)
-- Name: auto_responders_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auto_responders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auto_responders_id_seq OWNER TO root;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 250
-- Name: auto_responders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auto_responders_id_seq OWNED BY public.auto_responders.id;


--
-- TOC entry 199 (class 1259 OID 108373)
-- Name: business_pages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.business_pages (
    id bigint NOT NULL,
    page_name character varying,
    content text,
    slug character varying,
    meta_title character varying,
    meta_description character varying,
    meta_keywords character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sibling_id character varying,
    website_language_id integer,
    is_footer boolean DEFAULT false
);


ALTER TABLE public.business_pages OWNER TO root;

--
-- TOC entry 198 (class 1259 OID 108371)
-- Name: business_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.business_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.business_pages_id_seq OWNER TO root;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 198
-- Name: business_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.business_pages_id_seq OWNED BY public.business_pages.id;


--
-- TOC entry 207 (class 1259 OID 108425)
-- Name: categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    parent_id bigint,
    name character varying,
    media bytea,
    description text,
    status boolean,
    meta_title character varying,
    meta_description text,
    website_language_id bigint,
    sibling_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO root;

--
-- TOC entry 206 (class 1259 OID 108423)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO root;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 206
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 215 (class 1259 OID 108481)
-- Name: category_attribute_values; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.category_attribute_values (
    id bigint NOT NULL,
    category_attribute_id bigint,
    value character varying,
    sibling_id character varying,
    website_language_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.category_attribute_values OWNER TO root;

--
-- TOC entry 214 (class 1259 OID 108479)
-- Name: category_attribute_values_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.category_attribute_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_attribute_values_id_seq OWNER TO root;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 214
-- Name: category_attribute_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.category_attribute_values_id_seq OWNED BY public.category_attribute_values.id;


--
-- TOC entry 209 (class 1259 OID 108436)
-- Name: category_attributes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.category_attributes (
    id bigint NOT NULL,
    category_id bigint,
    name character varying,
    sibling_id character varying,
    website_language_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.category_attributes OWNER TO root;

--
-- TOC entry 208 (class 1259 OID 108434)
-- Name: category_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.category_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_attributes_id_seq OWNER TO root;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 208
-- Name: category_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.category_attributes_id_seq OWNED BY public.category_attributes.id;


--
-- TOC entry 273 (class 1259 OID 108985)
-- Name: cc_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cc_details (
    id bigint NOT NULL,
    user_id bigint,
    ccnumber character varying,
    expiry integer,
    cctoken character varying,
    client_ip character varying,
    cardholder character varying,
    is_primary boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    cc_type character varying
);


ALTER TABLE public.cc_details OWNER TO root;

--
-- TOC entry 272 (class 1259 OID 108983)
-- Name: cc_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.cc_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cc_details_id_seq OWNER TO root;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 272
-- Name: cc_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.cc_details_id_seq OWNED BY public.cc_details.id;


--
-- TOC entry 249 (class 1259 OID 108782)
-- Name: commission_agreements; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.commission_agreements (
    id bigint NOT NULL,
    commission_rate double precision,
    commission_type character varying,
    template text,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sibling_id character varying,
    website_language_id integer
);


ALTER TABLE public.commission_agreements OWNER TO root;

--
-- TOC entry 248 (class 1259 OID 108780)
-- Name: commission_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.commission_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commission_agreements_id_seq OWNER TO root;

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 248
-- Name: commission_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.commission_agreements_id_seq OWNED BY public.commission_agreements.id;


--
-- TOC entry 227 (class 1259 OID 108592)
-- Name: enquaries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.enquaries (
    id bigint NOT NULL,
    user_id bigint,
    name character varying,
    email character varying,
    phone_no character varying,
    query text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.enquaries OWNER TO root;

--
-- TOC entry 226 (class 1259 OID 108590)
-- Name: enquaries_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.enquaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enquaries_id_seq OWNER TO root;

--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 226
-- Name: enquaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.enquaries_id_seq OWNED BY public.enquaries.id;


--
-- TOC entry 285 (class 1259 OID 109140)
-- Name: enquiry_tickets; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.enquiry_tickets (
    id bigint NOT NULL,
    request_for_reservation_id bigint,
    raised_concern text,
    admin_comment text,
    status boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.enquiry_tickets OWNER TO root;

--
-- TOC entry 284 (class 1259 OID 109138)
-- Name: enquiry_tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.enquiry_tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enquiry_tickets_id_seq OWNER TO root;

--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 284
-- Name: enquiry_tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.enquiry_tickets_id_seq OWNED BY public.enquiry_tickets.id;


--
-- TOC entry 275 (class 1259 OID 109009)
-- Name: gateway_settings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.gateway_settings (
    id bigint NOT NULL,
    testmerchantid character varying,
    testmerchantkey character varying,
    livemerchantid character varying,
    livemerchantkey character varying,
    testmode integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.gateway_settings OWNER TO root;

--
-- TOC entry 274 (class 1259 OID 109007)
-- Name: gateway_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.gateway_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gateway_settings_id_seq OWNER TO root;

--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 274
-- Name: gateway_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.gateway_settings_id_seq OWNED BY public.gateway_settings.id;


--
-- TOC entry 271 (class 1259 OID 108967)
-- Name: landlord_accounts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.landlord_accounts (
    id bigint NOT NULL,
    user_id bigint,
    description character varying,
    suspension boolean DEFAULT false,
    suspension_start date,
    suspension_end date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.landlord_accounts OWNER TO root;

--
-- TOC entry 270 (class 1259 OID 108965)
-- Name: landlord_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.landlord_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landlord_accounts_id_seq OWNER TO root;

--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 270
-- Name: landlord_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.landlord_accounts_id_seq OWNED BY public.landlord_accounts.id;


--
-- TOC entry 213 (class 1259 OID 108470)
-- Name: media; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.media (
    id bigint NOT NULL,
    media bytea,
    media_type character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.media OWNER TO root;

--
-- TOC entry 212 (class 1259 OID 108468)
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO root;

--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 212
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- TOC entry 235 (class 1259 OID 108660)
-- Name: messages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    product_id bigint,
    to_id bigint,
    from_id bigint,
    message_id bigint,
    message text,
    delete_to boolean,
    delete_from boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    request_for_reservation_id bigint,
    status integer DEFAULT 0
);


ALTER TABLE public.messages OWNER TO root;

--
-- TOC entry 234 (class 1259 OID 108658)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO root;

--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 234
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- TOC entry 241 (class 1259 OID 108711)
-- Name: my_announcements; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.my_announcements (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    description text,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.my_announcements OWNER TO root;

--
-- TOC entry 240 (class 1259 OID 108709)
-- Name: my_announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.my_announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_announcements_id_seq OWNER TO root;

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 240
-- Name: my_announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.my_announcements_id_seq OWNED BY public.my_announcements.id;


--
-- TOC entry 253 (class 1259 OID 108804)
-- Name: norms; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.norms (
    id bigint NOT NULL,
    norms character varying,
    norm_type character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.norms OWNER TO root;

--
-- TOC entry 252 (class 1259 OID 108802)
-- Name: norms_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.norms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.norms_id_seq OWNER TO root;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 252
-- Name: norms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.norms_id_seq OWNED BY public.norms.id;


--
-- TOC entry 277 (class 1259 OID 109020)
-- Name: notification_types; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.notification_types (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.notification_types OWNER TO root;

--
-- TOC entry 276 (class 1259 OID 109018)
-- Name: notification_types_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.notification_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_types_id_seq OWNER TO root;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 276
-- Name: notification_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.notification_types_id_seq OWNED BY public.notification_types.id;


--
-- TOC entry 245 (class 1259 OID 108754)
-- Name: notifications; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    notofications character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.notifications OWNER TO root;

--
-- TOC entry 244 (class 1259 OID 108752)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO root;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 244
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 231 (class 1259 OID 108629)
-- Name: price_options; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.price_options (
    id bigint NOT NULL,
    options character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.price_options OWNER TO root;

--
-- TOC entry 230 (class 1259 OID 108627)
-- Name: price_options_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.price_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.price_options_id_seq OWNER TO root;

--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 230
-- Name: price_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.price_options_id_seq OWNED BY public.price_options.id;


--
-- TOC entry 225 (class 1259 OID 108572)
-- Name: product_amount_options; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_amount_options (
    id bigint NOT NULL,
    product_id bigint,
    amount_option_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_amount_options OWNER TO root;

--
-- TOC entry 224 (class 1259 OID 108570)
-- Name: product_amount_options_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_amount_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_amount_options_id_seq OWNER TO root;

--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_amount_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_amount_options_id_seq OWNED BY public.product_amount_options.id;


--
-- TOC entry 257 (class 1259 OID 108835)
-- Name: product_attributes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_attributes (
    id bigint NOT NULL,
    product_id bigint,
    category_attribute_value_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_attributes OWNER TO root;

--
-- TOC entry 256 (class 1259 OID 108833)
-- Name: product_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attributes_id_seq OWNER TO root;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 256
-- Name: product_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_attributes_id_seq OWNED BY public.product_attributes.id;


--
-- TOC entry 243 (class 1259 OID 108734)
-- Name: product_deliveries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_deliveries (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_deliveries OWNER TO root;

--
-- TOC entry 242 (class 1259 OID 108732)
-- Name: product_deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_deliveries_id_seq OWNER TO root;

--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_deliveries_id_seq OWNED BY public.product_deliveries.id;


--
-- TOC entry 221 (class 1259 OID 108541)
-- Name: product_images; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_images (
    id bigint NOT NULL,
    product_id bigint,
    media_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_images OWNER TO root;

--
-- TOC entry 220 (class 1259 OID 108539)
-- Name: product_images_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_images_id_seq OWNER TO root;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 220
-- Name: product_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;


--
-- TOC entry 233 (class 1259 OID 108640)
-- Name: product_price_options; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_price_options (
    id bigint NOT NULL,
    product_id bigint,
    price_option_id bigint,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_price_options OWNER TO root;

--
-- TOC entry 232 (class 1259 OID 108638)
-- Name: product_price_options_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_price_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_price_options_id_seq OWNER TO root;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 232
-- Name: product_price_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_price_options_id_seq OWNED BY public.product_price_options.id;


--
-- TOC entry 239 (class 1259 OID 108694)
-- Name: product_pricings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_pricings (
    id bigint NOT NULL,
    product_id bigint,
    price double precision,
    duration character varying,
    "interval" character varying,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_pricings OWNER TO root;

--
-- TOC entry 238 (class 1259 OID 108692)
-- Name: product_pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_pricings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_pricings_id_seq OWNER TO root;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 238
-- Name: product_pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_pricings_id_seq OWNED BY public.product_pricings.id;


--
-- TOC entry 279 (class 1259 OID 109044)
-- Name: product_suspends; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_suspends (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    start_date date,
    end_date date
);


ALTER TABLE public.product_suspends OWNER TO root;

--
-- TOC entry 278 (class 1259 OID 109042)
-- Name: product_suspends_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_suspends_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_suspends_id_seq OWNER TO root;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 278
-- Name: product_suspends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_suspends_id_seq OWNED BY public.product_suspends.id;


--
-- TOC entry 219 (class 1259 OID 108515)
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    user_id bigint,
    user_address_id bigint,
    name character varying,
    quantity integer,
    deposit double precision,
    price_for_new_item double precision,
    estimated_value double precision,
    category_id bigint,
    description text,
    status boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    totalviews integer DEFAULT 0
);


ALTER TABLE public.products OWNER TO root;

--
-- TOC entry 218 (class 1259 OID 108513)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO root;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 218
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 229 (class 1259 OID 108609)
-- Name: request_for_reservations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.request_for_reservations (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    quantity integer,
    start_date date,
    end_date date,
    pickup_time date,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    handover integer,
    item_return integer,
    handover_date date,
    item_return_date date,
    amount double precision,
    order_description text,
    deposite_amount double precision,
    order_number character varying,
    per_day_price double precision
);


ALTER TABLE public.request_for_reservations OWNER TO root;

--
-- TOC entry 228 (class 1259 OID 108607)
-- Name: request_for_reservations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.request_for_reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_for_reservations_id_seq OWNER TO root;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 228
-- Name: request_for_reservations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.request_for_reservations_id_seq OWNED BY public.request_for_reservations.id;


--
-- TOC entry 283 (class 1259 OID 109114)
-- Name: reviews; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    request_for_reservation_id bigint,
    sender_id bigint,
    receiver_id bigint,
    rating double precision,
    feedback text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_landlord boolean DEFAULT false
);


ALTER TABLE public.reviews OWNER TO root;

--
-- TOC entry 282 (class 1259 OID 109112)
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO root;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 282
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- TOC entry 196 (class 1259 OID 108355)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO root;

--
-- TOC entry 281 (class 1259 OID 109097)
-- Name: transaction_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.transaction_details (
    id bigint NOT NULL,
    request_for_reservation_id bigint,
    amount double precision,
    payment_status character varying,
    trasactionid character varying,
    rowdata text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.transaction_details OWNER TO root;

--
-- TOC entry 280 (class 1259 OID 109095)
-- Name: transaction_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.transaction_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaction_details_id_seq OWNER TO root;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 280
-- Name: transaction_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.transaction_details_id_seq OWNED BY public.transaction_details.id;


--
-- TOC entry 217 (class 1259 OID 108498)
-- Name: user_addresses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_addresses (
    id bigint NOT NULL,
    user_id bigint,
    address text,
    latitude double precision,
    longitude double precision,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_addresses OWNER TO root;

--
-- TOC entry 216 (class 1259 OID 108496)
-- Name: user_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_addresses_id_seq OWNER TO root;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 216
-- Name: user_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_addresses_id_seq OWNED BY public.user_addresses.id;


--
-- TOC entry 237 (class 1259 OID 108677)
-- Name: user_availabilities; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_availabilities (
    id bigint NOT NULL,
    user_id bigint,
    sunday character varying,
    monday character varying,
    tuesday character varying,
    wednesday character varying,
    thursday character varying,
    friday character varying,
    saturday character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_availabilities OWNER TO root;

--
-- TOC entry 236 (class 1259 OID 108675)
-- Name: user_availabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_availabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_availabilities_id_seq OWNER TO root;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 236
-- Name: user_availabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_availabilities_id_seq OWNED BY public.user_availabilities.id;


--
-- TOC entry 211 (class 1259 OID 108453)
-- Name: user_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_details (
    id bigint NOT NULL,
    user_id bigint,
    info text,
    facebook_link character varying,
    twitter_link character varying,
    gogole_plus_link character varying,
    linkedin_link character varying,
    media bytea,
    about_me text,
    dob date,
    passport_no character varying,
    date_of_issue date,
    issue_by character varying,
    place_of_registration character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_details OWNER TO root;

--
-- TOC entry 210 (class 1259 OID 108451)
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_id_seq OWNER TO root;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_details_id_seq OWNED BY public.user_details.id;


--
-- TOC entry 259 (class 1259 OID 108855)
-- Name: user_favorites; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_favorites (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_favorites OWNER TO root;

--
-- TOC entry 258 (class 1259 OID 108853)
-- Name: user_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_favorites_id_seq OWNER TO root;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 258
-- Name: user_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_favorites_id_seq OWNED BY public.user_favorites.id;


--
-- TOC entry 255 (class 1259 OID 108815)
-- Name: user_norms; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_norms (
    id bigint NOT NULL,
    user_id bigint,
    norm_id bigint,
    value double precision,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_norms OWNER TO root;

--
-- TOC entry 254 (class 1259 OID 108813)
-- Name: user_norms_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_norms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_norms_id_seq OWNER TO root;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 254
-- Name: user_norms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_norms_id_seq OWNED BY public.user_norms.id;


--
-- TOC entry 247 (class 1259 OID 108765)
-- Name: user_notification_settings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_notification_settings (
    id bigint NOT NULL,
    user_id bigint,
    sms boolean,
    email boolean,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    web boolean,
    notification_type_id integer,
    notification_type character varying
);


ALTER TABLE public.user_notification_settings OWNER TO root;

--
-- TOC entry 246 (class 1259 OID 108763)
-- Name: user_notification_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_notification_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_notification_settings_id_seq OWNER TO root;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 246
-- Name: user_notification_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_notification_settings_id_seq OWNED BY public.user_notification_settings.id;


--
-- TOC entry 269 (class 1259 OID 108929)
-- Name: user_securities; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_securities (
    id bigint NOT NULL,
    token character varying,
    user_agent character varying,
    remote_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.user_securities OWNER TO root;

--
-- TOC entry 268 (class 1259 OID 108927)
-- Name: user_securities_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_securities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_securities_id_seq OWNER TO root;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 268
-- Name: user_securities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_securities_id_seq OWNED BY public.user_securities.id;


--
-- TOC entry 205 (class 1259 OID 108413)
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    middle_name character varying,
    last_name character varying,
    email character varying,
    phone_number character varying,
    password_digest character varying,
    verification_token character varying,
    status boolean DEFAULT false,
    social_id character varying,
    social_platform character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email_verified boolean DEFAULT false,
    phone_verified boolean DEFAULT false,
    additional_phone_number character varying,
    city character varying,
    description character varying,
    gender character varying,
    preferred_language integer DEFAULT 2
);


ALTER TABLE public.users OWNER TO root;

--
-- TOC entry 204 (class 1259 OID 108411)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO root;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 204
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 203 (class 1259 OID 108396)
-- Name: website_language_data; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.website_language_data (
    id bigint NOT NULL,
    website_language_id bigint,
    label character varying,
    value text,
    label_type character varying,
    sibling_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.website_language_data OWNER TO root;

--
-- TOC entry 202 (class 1259 OID 108394)
-- Name: website_language_data_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.website_language_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_language_data_id_seq OWNER TO root;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 202
-- Name: website_language_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.website_language_data_id_seq OWNED BY public.website_language_data.id;


--
-- TOC entry 201 (class 1259 OID 108384)
-- Name: website_languages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.website_languages (
    id bigint NOT NULL,
    language character varying NOT NULL,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.website_languages OWNER TO root;

--
-- TOC entry 200 (class 1259 OID 108382)
-- Name: website_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.website_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_languages_id_seq OWNER TO root;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 200
-- Name: website_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.website_languages_id_seq OWNED BY public.website_languages.id;


--
-- TOC entry 3090 (class 2604 OID 108893)
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- TOC entry 3092 (class 2604 OID 108919)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 3091 (class 2604 OID 108907)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 3087 (class 2604 OID 108878)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 3067 (class 2604 OID 108564)
-- Name: amount_options id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.amount_options ALTER COLUMN id SET DEFAULT nextval('public.amount_options_id_seq'::regclass);


--
-- TOC entry 3082 (class 2604 OID 108796)
-- Name: auto_responders id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auto_responders ALTER COLUMN id SET DEFAULT nextval('public.auto_responders_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 108376)
-- Name: business_pages id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.business_pages ALTER COLUMN id SET DEFAULT nextval('public.business_pages_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 108428)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 108484)
-- Name: category_attribute_values id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attribute_values ALTER COLUMN id SET DEFAULT nextval('public.category_attribute_values_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 108439)
-- Name: category_attributes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attributes ALTER COLUMN id SET DEFAULT nextval('public.category_attributes_id_seq'::regclass);


--
-- TOC entry 3096 (class 2604 OID 108988)
-- Name: cc_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cc_details ALTER COLUMN id SET DEFAULT nextval('public.cc_details_id_seq'::regclass);


--
-- TOC entry 3081 (class 2604 OID 108785)
-- Name: commission_agreements id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.commission_agreements ALTER COLUMN id SET DEFAULT nextval('public.commission_agreements_id_seq'::regclass);


--
-- TOC entry 3069 (class 2604 OID 108595)
-- Name: enquaries id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquaries ALTER COLUMN id SET DEFAULT nextval('public.enquaries_id_seq'::regclass);


--
-- TOC entry 3104 (class 2604 OID 109143)
-- Name: enquiry_tickets id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquiry_tickets ALTER COLUMN id SET DEFAULT nextval('public.enquiry_tickets_id_seq'::regclass);


--
-- TOC entry 3098 (class 2604 OID 109012)
-- Name: gateway_settings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gateway_settings ALTER COLUMN id SET DEFAULT nextval('public.gateway_settings_id_seq'::regclass);


--
-- TOC entry 3094 (class 2604 OID 108970)
-- Name: landlord_accounts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.landlord_accounts ALTER COLUMN id SET DEFAULT nextval('public.landlord_accounts_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 108473)
-- Name: media id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- TOC entry 3073 (class 2604 OID 108663)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- TOC entry 3077 (class 2604 OID 108714)
-- Name: my_announcements id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.my_announcements ALTER COLUMN id SET DEFAULT nextval('public.my_announcements_id_seq'::regclass);


--
-- TOC entry 3083 (class 2604 OID 108807)
-- Name: norms id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.norms ALTER COLUMN id SET DEFAULT nextval('public.norms_id_seq'::regclass);


--
-- TOC entry 3099 (class 2604 OID 109023)
-- Name: notification_types id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notification_types ALTER COLUMN id SET DEFAULT nextval('public.notification_types_id_seq'::regclass);


--
-- TOC entry 3079 (class 2604 OID 108757)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 3071 (class 2604 OID 108632)
-- Name: price_options id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_options ALTER COLUMN id SET DEFAULT nextval('public.price_options_id_seq'::regclass);


--
-- TOC entry 3068 (class 2604 OID 108575)
-- Name: product_amount_options id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_amount_options ALTER COLUMN id SET DEFAULT nextval('public.product_amount_options_id_seq'::regclass);


--
-- TOC entry 3085 (class 2604 OID 108838)
-- Name: product_attributes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_attributes ALTER COLUMN id SET DEFAULT nextval('public.product_attributes_id_seq'::regclass);


--
-- TOC entry 3078 (class 2604 OID 108737)
-- Name: product_deliveries id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_deliveries ALTER COLUMN id SET DEFAULT nextval('public.product_deliveries_id_seq'::regclass);


--
-- TOC entry 3066 (class 2604 OID 108544)
-- Name: product_images id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);


--
-- TOC entry 3072 (class 2604 OID 108643)
-- Name: product_price_options id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_price_options ALTER COLUMN id SET DEFAULT nextval('public.product_price_options_id_seq'::regclass);


--
-- TOC entry 3076 (class 2604 OID 108697)
-- Name: product_pricings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_pricings ALTER COLUMN id SET DEFAULT nextval('public.product_pricings_id_seq'::regclass);


--
-- TOC entry 3100 (class 2604 OID 109047)
-- Name: product_suspends id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_suspends ALTER COLUMN id SET DEFAULT nextval('public.product_suspends_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 108518)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3070 (class 2604 OID 108612)
-- Name: request_for_reservations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.request_for_reservations ALTER COLUMN id SET DEFAULT nextval('public.request_for_reservations_id_seq'::regclass);


--
-- TOC entry 3102 (class 2604 OID 109117)
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- TOC entry 3101 (class 2604 OID 109100)
-- Name: transaction_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.transaction_details ALTER COLUMN id SET DEFAULT nextval('public.transaction_details_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 108501)
-- Name: user_addresses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_addresses ALTER COLUMN id SET DEFAULT nextval('public.user_addresses_id_seq'::regclass);


--
-- TOC entry 3075 (class 2604 OID 108680)
-- Name: user_availabilities id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_availabilities ALTER COLUMN id SET DEFAULT nextval('public.user_availabilities_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 108456)
-- Name: user_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_details ALTER COLUMN id SET DEFAULT nextval('public.user_details_id_seq'::regclass);


--
-- TOC entry 3086 (class 2604 OID 108858)
-- Name: user_favorites id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_favorites ALTER COLUMN id SET DEFAULT nextval('public.user_favorites_id_seq'::regclass);


--
-- TOC entry 3084 (class 2604 OID 108818)
-- Name: user_norms id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_norms ALTER COLUMN id SET DEFAULT nextval('public.user_norms_id_seq'::regclass);


--
-- TOC entry 3080 (class 2604 OID 108768)
-- Name: user_notification_settings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_notification_settings ALTER COLUMN id SET DEFAULT nextval('public.user_notification_settings_id_seq'::regclass);


--
-- TOC entry 3093 (class 2604 OID 108932)
-- Name: user_securities id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_securities ALTER COLUMN id SET DEFAULT nextval('public.user_securities_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 108416)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3050 (class 2604 OID 108399)
-- Name: website_language_data id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.website_language_data ALTER COLUMN id SET DEFAULT nextval('public.website_language_data_id_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 108387)
-- Name: website_languages id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.website_languages ALTER COLUMN id SET DEFAULT nextval('public.website_languages_id_seq'::regclass);


--
-- TOC entry 3471 (class 0 OID 108890)
-- Dependencies: 263
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3475 (class 0 OID 108916)
-- Dependencies: 267
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- TOC entry 3473 (class 0 OID 108904)
-- Dependencies: 265
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- TOC entry 3469 (class 0 OID 108875)
-- Dependencies: 261
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3431 (class 0 OID 108561)
-- Dependencies: 223
-- Data for Name: amount_options; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.amount_options (id, options, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3405 (class 0 OID 108363)
-- Dependencies: 197
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-03-13 12:50:18.67618	2019-03-13 12:50:18.67618
\.


--
-- TOC entry 3459 (class 0 OID 108793)
-- Dependencies: 251
-- Data for Name: auto_responders; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auto_responders (id, subject, template, status, created_at, updated_at, sibling_id, website_language_id, template_type) FROM stdin;
\.


--
-- TOC entry 3407 (class 0 OID 108373)
-- Dependencies: 199
-- Data for Name: business_pages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.business_pages (id, page_name, content, slug, meta_title, meta_description, meta_keywords, status, created_at, updated_at, sibling_id, website_language_id, is_footer) FROM stdin;
\.


--
-- TOC entry 3415 (class 0 OID 108425)
-- Dependencies: 207
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.categories (id, parent_id, name, media, description, status, meta_title, meta_description, website_language_id, sibling_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3423 (class 0 OID 108481)
-- Dependencies: 215
-- Data for Name: category_attribute_values; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.category_attribute_values (id, category_attribute_id, value, sibling_id, website_language_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3417 (class 0 OID 108436)
-- Dependencies: 209
-- Data for Name: category_attributes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.category_attributes (id, category_id, name, sibling_id, website_language_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 108985)
-- Dependencies: 273
-- Data for Name: cc_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cc_details (id, user_id, ccnumber, expiry, cctoken, client_ip, cardholder, is_primary, created_at, updated_at, cc_type) FROM stdin;
\.


--
-- TOC entry 3457 (class 0 OID 108782)
-- Dependencies: 249
-- Data for Name: commission_agreements; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.commission_agreements (id, commission_rate, commission_type, template, status, created_at, updated_at, sibling_id, website_language_id) FROM stdin;
\.


--
-- TOC entry 3435 (class 0 OID 108592)
-- Dependencies: 227
-- Data for Name: enquaries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.enquaries (id, user_id, name, email, phone_no, query, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3493 (class 0 OID 109140)
-- Dependencies: 285
-- Data for Name: enquiry_tickets; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.enquiry_tickets (id, request_for_reservation_id, raised_concern, admin_comment, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 109009)
-- Dependencies: 275
-- Data for Name: gateway_settings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.gateway_settings (id, testmerchantid, testmerchantkey, livemerchantid, livemerchantkey, testmode, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 108967)
-- Dependencies: 271
-- Data for Name: landlord_accounts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.landlord_accounts (id, user_id, description, suspension, suspension_start, suspension_end, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3421 (class 0 OID 108470)
-- Dependencies: 213
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.media (id, media, media_type, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3443 (class 0 OID 108660)
-- Dependencies: 235
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.messages (id, product_id, to_id, from_id, message_id, message, delete_to, delete_from, created_at, updated_at, request_for_reservation_id, status) FROM stdin;
\.


--
-- TOC entry 3449 (class 0 OID 108711)
-- Dependencies: 241
-- Data for Name: my_announcements; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.my_announcements (id, user_id, product_id, description, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3461 (class 0 OID 108804)
-- Dependencies: 253
-- Data for Name: norms; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.norms (id, norms, norm_type, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3485 (class 0 OID 109020)
-- Dependencies: 277
-- Data for Name: notification_types; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.notification_types (id, name, description, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3453 (class 0 OID 108754)
-- Dependencies: 245
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.notifications (id, notofications, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3439 (class 0 OID 108629)
-- Dependencies: 231
-- Data for Name: price_options; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.price_options (id, options, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3433 (class 0 OID 108572)
-- Dependencies: 225
-- Data for Name: product_amount_options; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_amount_options (id, product_id, amount_option_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3465 (class 0 OID 108835)
-- Dependencies: 257
-- Data for Name: product_attributes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_attributes (id, product_id, category_attribute_value_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 108734)
-- Dependencies: 243
-- Data for Name: product_deliveries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_deliveries (id, user_id, product_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3429 (class 0 OID 108541)
-- Dependencies: 221
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_images (id, product_id, media_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3441 (class 0 OID 108640)
-- Dependencies: 233
-- Data for Name: product_price_options; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_price_options (id, product_id, price_option_id, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3447 (class 0 OID 108694)
-- Dependencies: 239
-- Data for Name: product_pricings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_pricings (id, product_id, price, duration, "interval", status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 109044)
-- Dependencies: 279
-- Data for Name: product_suspends; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_suspends (id, user_id, product_id, start_date, end_date) FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 108515)
-- Dependencies: 219
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, user_id, user_address_id, name, quantity, deposit, price_for_new_item, estimated_value, category_id, description, status, is_deleted, created_at, updated_at, totalviews) FROM stdin;
\.


--
-- TOC entry 3437 (class 0 OID 108609)
-- Dependencies: 229
-- Data for Name: request_for_reservations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.request_for_reservations (id, user_id, product_id, quantity, start_date, end_date, pickup_time, status, created_at, updated_at, handover, item_return, handover_date, item_return_date, amount, order_description, deposite_amount, order_number, per_day_price) FROM stdin;
\.


--
-- TOC entry 3491 (class 0 OID 109114)
-- Dependencies: 283
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reviews (id, request_for_reservation_id, sender_id, receiver_id, rating, feedback, created_at, updated_at, is_landlord) FROM stdin;
\.


--
-- TOC entry 3404 (class 0 OID 108355)
-- Dependencies: 196
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.schema_migrations (version) FROM stdin;
20181009115336
20181009115833
20181009120501
20181009121040
20181009124008
20181009130409
20181010125652
20181010130051
20181010130738
20181010131708
20181010132234
20181011042135
20181011042234
20181011042450
20181011043223
20181011044141
20181011044331
20181011044444
20181011044632
20181011045240
20181011045459
20181011045841
20181011050211
20181011050846
20181011051436
20181011051604
20181011051703
20181011051843
20181011051952
20181011052200
20181011052412
20181012094418
20181012094420
20181017051359
20181113081510
20181128053750
20181206060627
20181210052508
20181225054926
20181226062158
20181231073855
20190102114303
20190103091627
20190107071643
20190107072936
20190108081546
20190108081633
20190110080727
20190115063018
20190117060609
20190118122556
20190128140558
20190201100732
20190204055737
20190207050020
20190208113937
20190212131800
20190215104410
20190225043943
20190312102611
\.


--
-- TOC entry 3489 (class 0 OID 109097)
-- Dependencies: 281
-- Data for Name: transaction_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.transaction_details (id, request_for_reservation_id, amount, payment_status, trasactionid, rowdata, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 108498)
-- Dependencies: 217
-- Data for Name: user_addresses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_addresses (id, user_id, address, latitude, longitude, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3445 (class 0 OID 108677)
-- Dependencies: 237
-- Data for Name: user_availabilities; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_availabilities (id, user_id, sunday, monday, tuesday, wednesday, thursday, friday, saturday, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3419 (class 0 OID 108453)
-- Dependencies: 211
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_details (id, user_id, info, facebook_link, twitter_link, gogole_plus_link, linkedin_link, media, about_me, dob, passport_no, date_of_issue, issue_by, place_of_registration, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 108855)
-- Dependencies: 259
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_favorites (id, user_id, product_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3463 (class 0 OID 108815)
-- Dependencies: 255
-- Data for Name: user_norms; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_norms (id, user_id, norm_id, value, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 108765)
-- Dependencies: 247
-- Data for Name: user_notification_settings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_notification_settings (id, user_id, sms, email, status, created_at, updated_at, web, notification_type_id, notification_type) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 108929)
-- Dependencies: 269
-- Data for Name: user_securities; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_securities (id, token, user_agent, remote_ip, created_at, updated_at, user_id) FROM stdin;
\.


--
-- TOC entry 3413 (class 0 OID 108413)
-- Dependencies: 205
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, first_name, middle_name, last_name, email, phone_number, password_digest, verification_token, status, social_id, social_platform, created_at, updated_at, email_verified, phone_verified, additional_phone_number, city, description, gender, preferred_language) FROM stdin;
\.


--
-- TOC entry 3411 (class 0 OID 108396)
-- Dependencies: 203
-- Data for Name: website_language_data; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.website_language_data (id, website_language_id, label, value, label_type, sibling_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3409 (class 0 OID 108384)
-- Dependencies: 201
-- Data for Name: website_languages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.website_languages (id, language, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 262
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 266
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 264
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 260
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, false);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 222
-- Name: amount_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.amount_options_id_seq', 1, false);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 250
-- Name: auto_responders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auto_responders_id_seq', 1, false);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 198
-- Name: business_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.business_pages_id_seq', 1, false);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 206
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 214
-- Name: category_attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.category_attribute_values_id_seq', 1, false);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 208
-- Name: category_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.category_attributes_id_seq', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 272
-- Name: cc_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.cc_details_id_seq', 1, false);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 248
-- Name: commission_agreements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.commission_agreements_id_seq', 1, false);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 226
-- Name: enquaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.enquaries_id_seq', 1, false);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 284
-- Name: enquiry_tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.enquiry_tickets_id_seq', 1, false);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 274
-- Name: gateway_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.gateway_settings_id_seq', 1, false);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 270
-- Name: landlord_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.landlord_accounts_id_seq', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 212
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.media_id_seq', 1, false);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 234
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 240
-- Name: my_announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.my_announcements_id_seq', 1, false);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 252
-- Name: norms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.norms_id_seq', 1, false);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 276
-- Name: notification_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.notification_types_id_seq', 1, false);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 244
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 230
-- Name: price_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.price_options_id_seq', 1, false);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_amount_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_amount_options_id_seq', 1, false);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 256
-- Name: product_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_attributes_id_seq', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_deliveries_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 220
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_images_id_seq', 1, false);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 232
-- Name: product_price_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_price_options_id_seq', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 238
-- Name: product_pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_pricings_id_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 278
-- Name: product_suspends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_suspends_id_seq', 1, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 218
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 228
-- Name: request_for_reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.request_for_reservations_id_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 282
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 280
-- Name: transaction_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.transaction_details_id_seq', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 216
-- Name: user_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_addresses_id_seq', 1, false);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 236
-- Name: user_availabilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_availabilities_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_details_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 258
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_favorites_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 254
-- Name: user_norms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_norms_id_seq', 1, false);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 246
-- Name: user_notification_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_notification_settings_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 268
-- Name: user_securities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_securities_id_seq', 1, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 204
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 202
-- Name: website_language_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.website_language_data_id_seq', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 200
-- Name: website_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.website_languages_id_seq', 1, false);


--
-- TOC entry 3210 (class 2606 OID 108898)
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 108924)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 108912)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 108885)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3146 (class 2606 OID 108569)
-- Name: amount_options amount_options_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.amount_options
    ADD CONSTRAINT amount_options_pkey PRIMARY KEY (id);


--
-- TOC entry 3109 (class 2606 OID 108370)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 3190 (class 2606 OID 108801)
-- Name: auto_responders auto_responders_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auto_responders
    ADD CONSTRAINT auto_responders_pkey PRIMARY KEY (id);


--
-- TOC entry 3111 (class 2606 OID 108381)
-- Name: business_pages business_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.business_pages
    ADD CONSTRAINT business_pages_pkey PRIMARY KEY (id);


--
-- TOC entry 3121 (class 2606 OID 108433)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3131 (class 2606 OID 108489)
-- Name: category_attribute_values category_attribute_values_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attribute_values
    ADD CONSTRAINT category_attribute_values_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 108444)
-- Name: category_attributes category_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attributes
    ADD CONSTRAINT category_attributes_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 108994)
-- Name: cc_details cc_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cc_details
    ADD CONSTRAINT cc_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 108790)
-- Name: commission_agreements commission_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.commission_agreements
    ADD CONSTRAINT commission_agreements_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 108600)
-- Name: enquaries enquaries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquaries
    ADD CONSTRAINT enquaries_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 109149)
-- Name: enquiry_tickets enquiry_tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquiry_tickets
    ADD CONSTRAINT enquiry_tickets_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 109017)
-- Name: gateway_settings gateway_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gateway_settings
    ADD CONSTRAINT gateway_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 108976)
-- Name: landlord_accounts landlord_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.landlord_accounts
    ADD CONSTRAINT landlord_accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3129 (class 2606 OID 108478)
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- TOC entry 3167 (class 2606 OID 108668)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 108719)
-- Name: my_announcements my_announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.my_announcements
    ADD CONSTRAINT my_announcements_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 108812)
-- Name: norms norms_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.norms
    ADD CONSTRAINT norms_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 109028)
-- Name: notification_types notification_types_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notification_types
    ADD CONSTRAINT notification_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 108762)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3159 (class 2606 OID 108637)
-- Name: price_options price_options_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_options
    ADD CONSTRAINT price_options_pkey PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 108577)
-- Name: product_amount_options product_amount_options_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_amount_options
    ADD CONSTRAINT product_amount_options_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 108840)
-- Name: product_attributes product_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_attributes
    ADD CONSTRAINT product_attributes_pkey PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 108739)
-- Name: product_deliveries product_deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_deliveries
    ADD CONSTRAINT product_deliveries_pkey PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 108546)
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- TOC entry 3163 (class 2606 OID 108645)
-- Name: product_price_options product_price_options_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_price_options
    ADD CONSTRAINT product_price_options_pkey PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 108702)
-- Name: product_pricings product_pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_pricings
    ADD CONSTRAINT product_pricings_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 109049)
-- Name: product_suspends product_suspends_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_suspends
    ADD CONSTRAINT product_suspends_pkey PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 108525)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3157 (class 2606 OID 108614)
-- Name: request_for_reservations request_for_reservations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.request_for_reservations
    ADD CONSTRAINT request_for_reservations_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 109122)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- TOC entry 3107 (class 2606 OID 108362)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 3239 (class 2606 OID 109105)
-- Name: transaction_details transaction_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT transaction_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3135 (class 2606 OID 108506)
-- Name: user_addresses user_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_addresses
    ADD CONSTRAINT user_addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 108685)
-- Name: user_availabilities user_availabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_availabilities
    ADD CONSTRAINT user_availabilities_pkey PRIMARY KEY (id);


--
-- TOC entry 3127 (class 2606 OID 108461)
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 108860)
-- Name: user_favorites user_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_favorites
    ADD CONSTRAINT user_favorites_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 108820)
-- Name: user_norms user_norms_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_norms
    ADD CONSTRAINT user_norms_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 108773)
-- Name: user_notification_settings user_notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_notification_settings
    ADD CONSTRAINT user_notification_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 108937)
-- Name: user_securities user_securities_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_securities
    ADD CONSTRAINT user_securities_pkey PRIMARY KEY (id);


--
-- TOC entry 3119 (class 2606 OID 108422)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3117 (class 2606 OID 108404)
-- Name: website_language_data website_language_data_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.website_language_data
    ADD CONSTRAINT website_language_data_pkey PRIMARY KEY (id);


--
-- TOC entry 3114 (class 2606 OID 108392)
-- Name: website_languages website_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.website_languages
    ADD CONSTRAINT website_languages_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 1259 OID 108900)
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- TOC entry 3212 (class 1259 OID 108901)
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- TOC entry 3213 (class 1259 OID 108899)
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- TOC entry 3219 (class 1259 OID 108925)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 3220 (class 1259 OID 108926)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 3216 (class 1259 OID 108913)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 3207 (class 1259 OID 108886)
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- TOC entry 3208 (class 1259 OID 108887)
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- TOC entry 3132 (class 1259 OID 108495)
-- Name: index_category_attribute_values_on_category_attribute_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_category_attribute_values_on_category_attribute_id ON public.category_attribute_values USING btree (category_attribute_id);


--
-- TOC entry 3124 (class 1259 OID 108450)
-- Name: index_category_attributes_on_category_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_category_attributes_on_category_id ON public.category_attributes USING btree (category_id);


--
-- TOC entry 3228 (class 1259 OID 109000)
-- Name: index_cc_details_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_cc_details_on_user_id ON public.cc_details USING btree (user_id);


--
-- TOC entry 3153 (class 1259 OID 108606)
-- Name: index_enquaries_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_enquaries_on_user_id ON public.enquaries USING btree (user_id);


--
-- TOC entry 3245 (class 1259 OID 109155)
-- Name: index_enquiry_tickets_on_request_for_reservation_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_enquiry_tickets_on_request_for_reservation_id ON public.enquiry_tickets USING btree (request_for_reservation_id);


--
-- TOC entry 3223 (class 1259 OID 108982)
-- Name: index_landlord_accounts_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_landlord_accounts_on_user_id ON public.landlord_accounts USING btree (user_id);


--
-- TOC entry 3164 (class 1259 OID 108674)
-- Name: index_messages_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_messages_on_product_id ON public.messages USING btree (product_id);


--
-- TOC entry 3165 (class 1259 OID 109070)
-- Name: index_messages_on_request_for_reservation_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_messages_on_request_for_reservation_id ON public.messages USING btree (request_for_reservation_id);


--
-- TOC entry 3174 (class 1259 OID 108731)
-- Name: index_my_announcements_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_my_announcements_on_product_id ON public.my_announcements USING btree (product_id);


--
-- TOC entry 3175 (class 1259 OID 108730)
-- Name: index_my_announcements_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_my_announcements_on_user_id ON public.my_announcements USING btree (user_id);


--
-- TOC entry 3147 (class 1259 OID 108589)
-- Name: index_product_amount_options_on_amount_option_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_amount_options_on_amount_option_id ON public.product_amount_options USING btree (amount_option_id);


--
-- TOC entry 3148 (class 1259 OID 108588)
-- Name: index_product_amount_options_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_amount_options_on_product_id ON public.product_amount_options USING btree (product_id);


--
-- TOC entry 3197 (class 1259 OID 108852)
-- Name: index_product_attributes_on_category_attribute_value_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_attributes_on_category_attribute_value_id ON public.product_attributes USING btree (category_attribute_value_id);


--
-- TOC entry 3198 (class 1259 OID 108851)
-- Name: index_product_attributes_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_attributes_on_product_id ON public.product_attributes USING btree (product_id);


--
-- TOC entry 3178 (class 1259 OID 108751)
-- Name: index_product_deliveries_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_deliveries_on_product_id ON public.product_deliveries USING btree (product_id);


--
-- TOC entry 3179 (class 1259 OID 108750)
-- Name: index_product_deliveries_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_deliveries_on_user_id ON public.product_deliveries USING btree (user_id);


--
-- TOC entry 3141 (class 1259 OID 108558)
-- Name: index_product_images_on_media_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_images_on_media_id ON public.product_images USING btree (media_id);


--
-- TOC entry 3142 (class 1259 OID 108557)
-- Name: index_product_images_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_images_on_product_id ON public.product_images USING btree (product_id);


--
-- TOC entry 3160 (class 1259 OID 108657)
-- Name: index_product_price_options_on_price_option_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_price_options_on_price_option_id ON public.product_price_options USING btree (price_option_id);


--
-- TOC entry 3161 (class 1259 OID 108656)
-- Name: index_product_price_options_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_price_options_on_product_id ON public.product_price_options USING btree (product_id);


--
-- TOC entry 3171 (class 1259 OID 108708)
-- Name: index_product_pricings_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_pricings_on_product_id ON public.product_pricings USING btree (product_id);


--
-- TOC entry 3233 (class 1259 OID 109061)
-- Name: index_product_suspends_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_suspends_on_product_id ON public.product_suspends USING btree (product_id);


--
-- TOC entry 3234 (class 1259 OID 109060)
-- Name: index_product_suspends_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_product_suspends_on_user_id ON public.product_suspends USING btree (user_id);


--
-- TOC entry 3136 (class 1259 OID 108538)
-- Name: index_products_on_name; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_products_on_name ON public.products USING btree (name);


--
-- TOC entry 3137 (class 1259 OID 108537)
-- Name: index_products_on_user_address_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_products_on_user_address_id ON public.products USING btree (user_address_id);


--
-- TOC entry 3138 (class 1259 OID 108536)
-- Name: index_products_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_products_on_user_id ON public.products USING btree (user_id);


--
-- TOC entry 3154 (class 1259 OID 108626)
-- Name: index_request_for_reservations_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_request_for_reservations_on_product_id ON public.request_for_reservations USING btree (product_id);


--
-- TOC entry 3155 (class 1259 OID 108625)
-- Name: index_request_for_reservations_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_request_for_reservations_on_user_id ON public.request_for_reservations USING btree (user_id);


--
-- TOC entry 3240 (class 1259 OID 109128)
-- Name: index_reviews_on_request_for_reservation_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_reviews_on_request_for_reservation_id ON public.reviews USING btree (request_for_reservation_id);


--
-- TOC entry 3237 (class 1259 OID 109111)
-- Name: index_transaction_details_on_request_for_reservation_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_transaction_details_on_request_for_reservation_id ON public.transaction_details USING btree (request_for_reservation_id);


--
-- TOC entry 3133 (class 1259 OID 108512)
-- Name: index_user_addresses_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_addresses_on_user_id ON public.user_addresses USING btree (user_id);


--
-- TOC entry 3168 (class 1259 OID 108691)
-- Name: index_user_availabilities_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_availabilities_on_user_id ON public.user_availabilities USING btree (user_id);


--
-- TOC entry 3125 (class 1259 OID 108467)
-- Name: index_user_details_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_details_on_user_id ON public.user_details USING btree (user_id);


--
-- TOC entry 3201 (class 1259 OID 108872)
-- Name: index_user_favorites_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_favorites_on_product_id ON public.user_favorites USING btree (product_id);


--
-- TOC entry 3202 (class 1259 OID 108871)
-- Name: index_user_favorites_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_favorites_on_user_id ON public.user_favorites USING btree (user_id);


--
-- TOC entry 3193 (class 1259 OID 108832)
-- Name: index_user_norms_on_norm_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_norms_on_norm_id ON public.user_norms USING btree (norm_id);


--
-- TOC entry 3194 (class 1259 OID 108831)
-- Name: index_user_norms_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_norms_on_user_id ON public.user_norms USING btree (user_id);


--
-- TOC entry 3184 (class 1259 OID 108779)
-- Name: index_user_notification_settings_on_user_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_user_notification_settings_on_user_id ON public.user_notification_settings USING btree (user_id);


--
-- TOC entry 3115 (class 1259 OID 108410)
-- Name: index_website_language_data_on_website_language_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_website_language_data_on_website_language_id ON public.website_language_data USING btree (website_language_id);


--
-- TOC entry 3112 (class 1259 OID 108393)
-- Name: index_website_languages_on_language; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_website_languages_on_language ON public.website_languages USING btree (language);


--
-- TOC entry 3246 (class 2606 OID 108405)
-- Name: website_language_data fk_rails_043ef9c9d1; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.website_language_data
    ADD CONSTRAINT fk_rails_043ef9c9d1 FOREIGN KEY (website_language_id) REFERENCES public.website_languages(id);


--
-- TOC entry 3280 (class 2606 OID 109106)
-- Name: transaction_details fk_rails_081c907b02; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT fk_rails_081c907b02 FOREIGN KEY (request_for_reservation_id) REFERENCES public.request_for_reservations(id);


--
-- TOC entry 3266 (class 2606 OID 108725)
-- Name: my_announcements fk_rails_0d50d15c6a; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.my_announcements
    ADD CONSTRAINT fk_rails_0d50d15c6a FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3248 (class 2606 OID 108462)
-- Name: user_details fk_rails_12e0b3043d; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT fk_rails_12e0b3043d FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3261 (class 2606 OID 108651)
-- Name: product_price_options fk_rails_1b6e74c540; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_price_options
    ADD CONSTRAINT fk_rails_1b6e74c540 FOREIGN KEY (price_option_id) REFERENCES public.price_options(id);


--
-- TOC entry 3253 (class 2606 OID 108547)
-- Name: product_images fk_rails_1c991d3be6; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT fk_rails_1c991d3be6 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3274 (class 2606 OID 108861)
-- Name: user_favorites fk_rails_25ed4cb388; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_favorites
    ADD CONSTRAINT fk_rails_25ed4cb388 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3250 (class 2606 OID 108507)
-- Name: user_addresses fk_rails_2718c5b54a; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_addresses
    ADD CONSTRAINT fk_rails_2718c5b54a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3281 (class 2606 OID 109123)
-- Name: reviews fk_rails_2c5242c53c; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_2c5242c53c FOREIGN KEY (request_for_reservation_id) REFERENCES public.request_for_reservations(id);


--
-- TOC entry 3276 (class 2606 OID 108977)
-- Name: landlord_accounts fk_rails_3bdcf8c720; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.landlord_accounts
    ADD CONSTRAINT fk_rails_3bdcf8c720 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3275 (class 2606 OID 108866)
-- Name: user_favorites fk_rails_3c3a3b890d; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_favorites
    ADD CONSTRAINT fk_rails_3c3a3b890d FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3268 (class 2606 OID 108745)
-- Name: product_deliveries fk_rails_3ff0b294a6; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_deliveries
    ADD CONSTRAINT fk_rails_3ff0b294a6 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3279 (class 2606 OID 109055)
-- Name: product_suspends fk_rails_4452bac95f; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_suspends
    ADD CONSTRAINT fk_rails_4452bac95f FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3270 (class 2606 OID 108821)
-- Name: user_norms fk_rails_4bf12299f8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_norms
    ADD CONSTRAINT fk_rails_4bf12299f8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3269 (class 2606 OID 108774)
-- Name: user_notification_settings fk_rails_4e34dd0262; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_notification_settings
    ADD CONSTRAINT fk_rails_4e34dd0262 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3265 (class 2606 OID 108720)
-- Name: my_announcements fk_rails_53038c2468; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.my_announcements
    ADD CONSTRAINT fk_rails_53038c2468 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3259 (class 2606 OID 108620)
-- Name: request_for_reservations fk_rails_5ad77389c0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.request_for_reservations
    ADD CONSTRAINT fk_rails_5ad77389c0 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3257 (class 2606 OID 108601)
-- Name: enquaries fk_rails_64c18b0ad5; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquaries
    ADD CONSTRAINT fk_rails_64c18b0ad5 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3260 (class 2606 OID 108646)
-- Name: product_price_options fk_rails_6637b541fd; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_price_options
    ADD CONSTRAINT fk_rails_6637b541fd FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3254 (class 2606 OID 108552)
-- Name: product_images fk_rails_713a9cfec2; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT fk_rails_713a9cfec2 FOREIGN KEY (media_id) REFERENCES public.media(id);


--
-- TOC entry 3278 (class 2606 OID 109050)
-- Name: product_suspends fk_rails_725e30a3c6; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_suspends
    ADD CONSTRAINT fk_rails_725e30a3c6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3249 (class 2606 OID 108490)
-- Name: category_attribute_values fk_rails_7d6e379a6d; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attribute_values
    ADD CONSTRAINT fk_rails_7d6e379a6d FOREIGN KEY (category_attribute_id) REFERENCES public.category_attributes(id);


--
-- TOC entry 3262 (class 2606 OID 108669)
-- Name: messages fk_rails_8041917890; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_8041917890 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3264 (class 2606 OID 108703)
-- Name: product_pricings fk_rails_89cd9d47d0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_pricings
    ADD CONSTRAINT fk_rails_89cd9d47d0 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3252 (class 2606 OID 108531)
-- Name: products fk_rails_9068f9e1db; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_9068f9e1db FOREIGN KEY (user_address_id) REFERENCES public.user_addresses(id);


--
-- TOC entry 3277 (class 2606 OID 108995)
-- Name: cc_details fk_rails_a5d6c61d33; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cc_details
    ADD CONSTRAINT fk_rails_a5d6c61d33 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3267 (class 2606 OID 108740)
-- Name: product_deliveries fk_rails_a5d7c61e29; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_deliveries
    ADD CONSTRAINT fk_rails_a5d7c61e29 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3272 (class 2606 OID 108841)
-- Name: product_attributes fk_rails_b40a1c5acb; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_attributes
    ADD CONSTRAINT fk_rails_b40a1c5acb FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3255 (class 2606 OID 108578)
-- Name: product_amount_options fk_rails_b61cfe1531; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_amount_options
    ADD CONSTRAINT fk_rails_b61cfe1531 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3273 (class 2606 OID 108846)
-- Name: product_attributes fk_rails_b70869d191; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_attributes
    ADD CONSTRAINT fk_rails_b70869d191 FOREIGN KEY (category_attribute_value_id) REFERENCES public.category_attribute_values(id);


--
-- TOC entry 3256 (class 2606 OID 108583)
-- Name: product_amount_options fk_rails_bda1d179e4; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_amount_options
    ADD CONSTRAINT fk_rails_bda1d179e4 FOREIGN KEY (amount_option_id) REFERENCES public.amount_options(id);


--
-- TOC entry 3263 (class 2606 OID 108686)
-- Name: user_availabilities fk_rails_c4b4b763a8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_availabilities
    ADD CONSTRAINT fk_rails_c4b4b763a8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3247 (class 2606 OID 108445)
-- Name: category_attributes fk_rails_c520344b37; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.category_attributes
    ADD CONSTRAINT fk_rails_c520344b37 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3258 (class 2606 OID 108615)
-- Name: request_for_reservations fk_rails_cc648d74c7; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.request_for_reservations
    ADD CONSTRAINT fk_rails_cc648d74c7 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3251 (class 2606 OID 108526)
-- Name: products fk_rails_dee2631783; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_dee2631783 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3271 (class 2606 OID 108826)
-- Name: user_norms fk_rails_df5ccd3d8e; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_norms
    ADD CONSTRAINT fk_rails_df5ccd3d8e FOREIGN KEY (norm_id) REFERENCES public.norms(id);


--
-- TOC entry 3282 (class 2606 OID 109150)
-- Name: enquiry_tickets fk_rails_f526695d39; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.enquiry_tickets
    ADD CONSTRAINT fk_rails_f526695d39 FOREIGN KEY (request_for_reservation_id) REFERENCES public.request_for_reservations(id);


-- Completed on 2019-03-13 18:21:37 IST

--
-- PostgreSQL database dump complete
--

