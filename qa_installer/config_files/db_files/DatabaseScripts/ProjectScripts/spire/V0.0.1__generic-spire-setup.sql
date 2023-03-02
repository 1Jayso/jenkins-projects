--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.9
-- Dumped by pg_dump version 9.3.9
-- Started on 2021-02-02 10:54:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 91743382)
-- Name: adj_case_lookup; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE adj_case_lookup (
    case_id character varying(64) NOT NULL,
    adjudication_decision character varying(64),
    adjudication_review_decision character varying(64),
    created timestamp without time zone,
    current_step character varying(64),
    primary_person character varying(64),
    record_status character varying(16),
    secondary_person character varying(64),
    updated timestamp without time zone,
    version_ integer,
    case_type character varying(8),
    abisduplicateid character varying(64),
    abisprofileid character varying(64),
    adjudication_comment character varying(256),
    case_details character varying(512),
    normalized_biographic_score integer,
    normalized_facial_score integer,
    normalized_score integer
);


ALTER TABLE public.adj_case_lookup OWNER TO gkspire;

--
-- TOC entry 184 (class 1259 OID 91743388)
-- Name: averification_node; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE averification_node (
    transaction_id character varying(255) NOT NULL,
    is_logged boolean,
    md_5hash character varying(255),
    member_number character varying(255),
    method character varying(255),
    request_id character varying(255),
    seek_time character varying(255),
    is_transmitted boolean
);


ALTER TABLE public.averification_node OWNER TO gkspire;

--
-- TOC entry 185 (class 1259 OID 91743394)
-- Name: basic_person_data; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE UNLOGGED TABLE basic_person_data (
    gk_id character varying(64) NOT NULL,
    public_person_id character varying(64),
    firstnames character varying(64),
    surname character varying(64),
    date_of_birth character varying(32),
    ageatregistration character varying(16),
    place_of_birth_code character varying(64),
    residential_address character varying(64),
    gender character varying(8),
    fathersfirstname character varying(64),
    fathersname character varying(64),
    mothersfirstname character varying(64),
    mothersname character varying(64),
    occupation character varying(128),
    identification_doc character varying(32),
    refugee_status character varying(8),
    small_photo text
);


ALTER TABLE public.basic_person_data OWNER TO gkspire;

--
-- TOC entry 186 (class 1259 OID 91743400)
-- Name: basic_person_data2; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE UNLOGGED TABLE basic_person_data2 (
    gk_id character varying(64) NOT NULL,
    public_person_id character varying(64),
    firstnames character varying(64),
    surname character varying(64),
    date_of_birth character varying(32),
    ageatregistration character varying(16),
    place_of_birth_code character varying(64),
    residential_address character varying(64),
    gender character varying(16),
    fathersfirstname character varying(64),
    fathersname character varying(64),
    mothersfirstname character varying(64),
    mothersname character varying(64),
    occupation character varying(128),
    identification_doc character varying(32),
    refugee_status character varying(16),
    photo text
);


ALTER TABLE public.basic_person_data2 OWNER TO gkspire;

--
-- TOC entry 192 (class 1259 OID 91743433)
-- Name: common_center; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE common_center (
    center_id character varying(64) NOT NULL,
    ext character varying(64) NOT NULL,
    building_description character varying(255),
    building_type_id character varying(255),
    ctr_description character varying(255),
    external_reference character varying(64),
    parent_demarcation_code character varying(32),
    other_details text
);


ALTER TABLE public.common_center OWNER TO gkspire;

--
-- TOC entry 193 (class 1259 OID 91743439)
-- Name: common_officer; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE common_officer (
    ext character varying(64) NOT NULL,
    officer_id character varying(64) NOT NULL,
    actived_on timestamp without time zone,
    de_actived_on timestamp without time zone,
    gk_person_id character varying(64),
    is_active boolean,
    is_system boolean,
    officer_name character varying(255),
    other_details text
);


ALTER TABLE public.common_officer OWNER TO gkspire;

--
-- TOC entry 194 (class 1259 OID 91743445)
-- Name: common_station; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE common_station (
    process_station_id character varying(64) NOT NULL,
    ext character varying(64) NOT NULL,
    is_bvr boolean,
    other_details text
);


ALTER TABLE public.common_station OWNER TO gkspire;

--
-- TOC entry 195 (class 1259 OID 91743451)
-- Name: complete_person_data; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE UNLOGGED TABLE complete_person_data (
    group_id character varying(64),
    center_id character varying(32),
    prefacture_code character varying(8),
    prefacture character varying(64),
    sub_prefacture_code character varying(8),
    sub_prefacture text,
    community_code character varying(16),
    community text,
    village_code character varying(16),
    village text,
    center_code character varying(32),
    center text,
    public_person_id character varying(64),
    firstnames character varying(64),
    surname character varying(64),
    date_of_birth character varying(32),
    ageatregistration character varying(16),
    place_of_birth_code character varying(64),
    residential_address character varying(64),
    gender character varying(16),
    fathersfirstname character varying(64),
    fathersname character varying(64),
    mothersfirstname character varying(64),
    mothersname character varying(64),
    occupation character varying(128),
    identification_doc character varying(32),
    refugee_status character varying(16),
    thumbnail text,
    adjudication_status character varying(255),
    eligibility_status character varying(255),
    photo text
);


ALTER TABLE public.complete_person_data OWNER TO gkspire;

--
-- TOC entry 196 (class 1259 OID 91743457)
-- Name: det_address_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_address_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    addresses text
);


ALTER TABLE public.det_address_list OWNER TO gkspire;

--
-- TOC entry 197 (class 1259 OID 91743463)
-- Name: det_changerequest_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_changerequest_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    change_requests text
);


ALTER TABLE public.det_changerequest_list OWNER TO gkspire;

--
-- TOC entry 198 (class 1259 OID 91743469)
-- Name: det_citizenships_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_citizenships_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    citizenships text
);


ALTER TABLE public.det_citizenships_list OWNER TO gkspire;

--
-- TOC entry 199 (class 1259 OID 91743475)
-- Name: det_civil_record; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_civil_record (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    civil_record text
);


ALTER TABLE public.det_civil_record OWNER TO gkspire;

--
-- TOC entry 200 (class 1259 OID 91743481)
-- Name: det_contacts_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_contacts_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    contacts text
);


ALTER TABLE public.det_contacts_list OWNER TO gkspire;

--
-- TOC entry 201 (class 1259 OID 91743487)
-- Name: det_dependent_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_dependent_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    dependents text
);


ALTER TABLE public.det_dependent_list OWNER TO gkspire;

--
-- TOC entry 202 (class 1259 OID 91743493)
-- Name: det_docheader_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_docheader_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    documents text
);


ALTER TABLE public.det_docheader_list OWNER TO gkspire;

--
-- TOC entry 203 (class 1259 OID 91743499)
-- Name: det_document_content; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_document_content (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    document text,
    pages bytea
);


ALTER TABLE public.det_document_content OWNER TO gkspire;

--
-- TOC entry 204 (class 1259 OID 91743505)
-- Name: det_document_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_document_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    documents text
);


ALTER TABLE public.det_document_list OWNER TO gkspire;

--
-- TOC entry 205 (class 1259 OID 91743511)
-- Name: det_electoral_record; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_electoral_record (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    electoral_record text
);


ALTER TABLE public.det_electoral_record OWNER TO gkspire;

--
-- TOC entry 206 (class 1259 OID 91743517)
-- Name: det_idcard_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_idcard_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    idcards text
);


ALTER TABLE public.det_idcard_list OWNER TO gkspire;

--
-- TOC entry 207 (class 1259 OID 91743523)
-- Name: det_regclient_protocol; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_regclient_protocol (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    reg_client_protocol text
);


ALTER TABLE public.det_regclient_protocol OWNER TO gkspire;

--
-- TOC entry 208 (class 1259 OID 91743529)
-- Name: det_single_document; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_single_document (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    version_ integer,
    md_5hash character varying(255),
    document text,
    replaces character varying(64),
    ext character varying(64)
);


ALTER TABLE public.det_single_document OWNER TO gkspire;

--
-- TOC entry 209 (class 1259 OID 91743535)
-- Name: det_traumaorg_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_traumaorg_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    traumas text
);


ALTER TABLE public.det_traumaorg_list OWNER TO gkspire;

--
-- TOC entry 210 (class 1259 OID 91743541)
-- Name: gk_domain_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_domain_profile (
    pk_id character varying(255) NOT NULL,
    time_stamp bigint,
    fk_domain_id character varying(255),
    biographic_id character varying(255) NOT NULL,
    biographic_xml text,
    registration_xml text,
    photo bytea
);


ALTER TABLE public.gk_domain_profile OWNER TO gkspire;

--
-- TOC entry 211 (class 1259 OID 91743547)
-- Name: gk_group_stats; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_group_stats (
    group_id character varying(64) NOT NULL,
    confirmed timestamp without time zone,
    created timestamp without time zone,
    is_in_search boolean,
    members_search bigint,
    members_spire bigint
);


ALTER TABLE public.gk_group_stats OWNER TO gkspire;

--
-- TOC entry 189 (class 1259 OID 91743418)
-- Name: gk_person; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person (
    gk_id character varying(64) NOT NULL,
    adjudication_cases_ref character varying(64),
    adjudication_profile_ref character varying(64),
    biometric_profile_ref character varying(64),
    biometric_profile_updates_ref character varying(64),
    common_profile_ref character varying(64),
    created timestamp without time zone,
    facial_ref character varying(64),
    group_membership_ref character varying(64),
    identifications_ref character varying(64),
    primary_group_ref character varying(64),
    registration_profile_ref character varying(64),
    trauma_profiles_ref character varying(64),
    updated timestamp without time zone,
    version_ integer,
    eligibility_profile_ref character varying(64)
);


ALTER TABLE public.gk_person OWNER TO gkspire;

--
-- TOC entry 212 (class 1259 OID 91743550)
-- Name: gk_person_black_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_black_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    node character varying(64),
    record_status character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    transactions_rejected text
);


ALTER TABLE public.gk_person_black_list OWNER TO gkspire;

--
-- TOC entry 213 (class 1259 OID 91743556)
-- Name: gk_person_detail; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_detail (
    ext character varying(64) NOT NULL,
    detailed_references text,
    member_id character varying(64),
    version_ integer,
    gk_person character varying(64) NOT NULL
);


ALTER TABLE public.gk_person_detail OWNER TO gkspire;

--
-- TOC entry 214 (class 1259 OID 91743562)
-- Name: gk_person_detail_history; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_detail_history (
    ext character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer,
    gk_person character varying(64) NOT NULL
);


ALTER TABLE public.gk_person_detail_history OWNER TO gkspire;

--
-- TOC entry 215 (class 1259 OID 91743568)
-- Name: gk_person_detail_history_test; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_detail_history_test (
    ext character varying(64),
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer,
    gk_person character varying(64)
);


ALTER TABLE public.gk_person_detail_history_test OWNER TO gkspire;

--
-- TOC entry 216 (class 1259 OID 91743574)
-- Name: gk_person_primary_history; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_primary_history (
    gk_id character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer
);


ALTER TABLE public.gk_person_primary_history OWNER TO gkspire;

--
-- TOC entry 217 (class 1259 OID 91743580)
-- Name: gk_person_safe_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gk_person_safe_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    node character varying(64),
    record_status character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    correct_gkperson_id character varying(64),
    transactions_mapped text
);


ALTER TABLE public.gk_person_safe_list OWNER TO gkspire;

--
-- TOC entry 218 (class 1259 OID 91743586)
-- Name: prim_grouppmt; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_grouppmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    group_id character varying(255),
    pmt_version character varying(255),
    pmt text,
    screening text,
    survey_header text
);


ALTER TABLE public.prim_grouppmt OWNER TO gkspire;

--
-- TOC entry 220 (class 1259 OID 91743597)
-- Name: prim_adj_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_adj_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    adjudication_status character varying(255),
    bio_hash character varying(255),
    comment_ character varying(255),
    date_duplicated timestamp without time zone,
    date_entered timestamp without time zone,
    eligibility_change_id character varying(64),
    external_process_id character varying(64),
    last_date_duplicated timestamp without time zone,
    process_error_code character varying(255),
    process_status character varying(255)
);


ALTER TABLE public.prim_adj_profile OWNER TO gkspire;

--
-- TOC entry 221 (class 1259 OID 91743603)
-- Name: prim_eligibility_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_eligibility_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    current_status character varying(255),
    date_last_changed timestamp without time zone,
    other_properties text,
    date_primary_review timestamp without time zone,
    date_secondary_review timestamp without time zone
);


ALTER TABLE public.prim_eligibility_profile OWNER TO gkspire;

--
-- TOC entry 222 (class 1259 OID 91743609)
-- Name: prim_facial_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_facial_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    version_ integer,
    distance_between_eyes integer,
    force_accepted boolean,
    format character varying(255),
    height integer,
    horizontal_eye_angle double precision,
    image_data bytea,
    md_5hash character varying(255),
    sub_type character varying(255),
    width integer,
    replaces character varying(64)
);


ALTER TABLE public.prim_facial_profile OWNER TO gkspire;

--
-- TOC entry 190 (class 1259 OID 91743424)
-- Name: prim_memberpmt; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_memberpmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    member_of character varying(255),
    other_details text,
    person_status character varying(32),
    pmt_version character varying(255),
    pmt text,
    ext_memberid character varying(128)
);


ALTER TABLE public.prim_memberpmt OWNER TO gkspire;

--
-- TOC entry 223 (class 1259 OID 91743615)
-- Name: prim_registration_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_registration_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone
);


ALTER TABLE public.prim_registration_profile OWNER TO gkspire;

--
-- TOC entry 191 (class 1259 OID 91743430)
-- Name: prim_relations; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_relations (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    group_id character varying(64),
    related_to character varying(64),
    relationship character varying(64)
);


ALTER TABLE public.prim_relations OWNER TO gkspire;

--
-- TOC entry 226 (class 1259 OID 91743634)
-- Name: sys_search_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_search_log (
    ext character varying(32) NOT NULL,
    isgroup boolean NOT NULL,
    id character varying(64) NOT NULL,
    summaryname character varying(64) NOT NULL,
    isconfirmed boolean,
    created timestamp without time zone,
    known_group character varying(64),
    prev_version bigint,
    process_flag integer,
    summary_content bytea,
    is_update boolean,
    version bigint
);


ALTER TABLE public.sys_search_log OWNER TO gkspire;

--
-- TOC entry 231 (class 1259 OID 91743664)
-- Name: necto_comment_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_comment_log (
    date_and_time timestamp without time zone NOT NULL,
    record_id character varying(64) NOT NULL,
    comment text,
    event character varying(64),
    operatorid character varying(64)
);


ALTER TABLE public.necto_comment_log OWNER TO gkspire;

--
-- TOC entry 232 (class 1259 OID 91743670)
-- Name: necto_event_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_event_log (
    date_and_time timestamp without time zone NOT NULL,
    record_id character varying(64) NOT NULL,
    comment text,
    event character varying(64),
    operatorid character varying(64)
);


ALTER TABLE public.necto_event_log OWNER TO gkspire;

--
-- TOC entry 233 (class 1259 OID 91743676)
-- Name: necto_external_clients; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_external_clients (
    client character varying(64) NOT NULL,
    client_registration_id character varying(64) NOT NULL,
    entrydate timestamp without time zone,
    exitdate timestamp without time zone
);


ALTER TABLE public.necto_external_clients OWNER TO gkspire;

--
-- TOC entry 234 (class 1259 OID 91743679)
-- Name: necto_external_operators; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_external_operators (
    client character varying(64) NOT NULL,
    userid character varying(64) NOT NULL,
    entrydate timestamp without time zone,
    exitdate timestamp without time zone,
    dbtemplates bytea,
    pw character varying(64),
    role character varying(64)
);


ALTER TABLE public.necto_external_operators OWNER TO gkspire;

--
-- TOC entry 235 (class 1259 OID 91743685)
-- Name: necto_external_watchlist; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_external_watchlist (
    client character varying(64) NOT NULL,
    subject_id character varying(64) NOT NULL,
    comment character varying(256),
    entrydate timestamp without time zone,
    exitdate timestamp without time zone,
    dbtemplates bytea
);


ALTER TABLE public.necto_external_watchlist OWNER TO gkspire;

--
-- TOC entry 236 (class 1259 OID 91743691)
-- Name: necto_log_comments; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_log_comments (
    record_id character varying(64) NOT NULL,
    comment text,
    event character varying(64),
    operatorid character varying(64),
    station_id character varying(64),
    date_and_time timestamp without time zone
);


ALTER TABLE public.necto_log_comments OWNER TO gkspire;

--
-- TOC entry 237 (class 1259 OID 91743697)
-- Name: necto_log_events; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_log_events (
    record_id character varying(64) NOT NULL,
    comment text,
    event character varying(64),
    operatorid character varying(64),
    station_id character varying(64),
    date_and_time timestamp without time zone
);


ALTER TABLE public.necto_log_events OWNER TO gkspire;

--
-- TOC entry 238 (class 1259 OID 91743703)
-- Name: necto_station_record; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_station_record (
    station_id character varying(64) NOT NULL,
    ext character varying(64) NOT NULL,
    imei character varying(64),
    mac character varying(64),
    os character varying(255),
    current_status character varying(255),
    date_last_transaction timestamp without time zone,
    date_last_update timestamp without time zone,
    date_activation timestamp without time zone,
    date_registration timestamp without time zone,
    l1 bytea,
    l1_key character varying(64),
    l2 bytea,
    l2_key character varying(64),
    status character varying(64)
);


ALTER TABLE public.necto_station_record OWNER TO gkspire;

--
-- TOC entry 239 (class 1259 OID 91743709)
-- Name: necto_station_record_backup; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_station_record_backup (
    station_id character varying(64),
    ext character varying(64),
    imei character varying(64),
    mac character varying(64),
    os character varying(255),
    current_status character varying(255),
    date_last_transaction timestamp without time zone,
    date_last_update timestamp without time zone,
    date_activation timestamp without time zone,
    date_registration timestamp without time zone,
    l1 bytea,
    l1_key character varying(64),
    l2 bytea,
    l2_key character varying(64),
    status character varying(64)
);


ALTER TABLE public.necto_station_record_backup OWNER TO gkspire;

--
-- TOC entry 240 (class 1259 OID 91743715)
-- Name: necto_synch_comments; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_synch_comments (
    record_id character varying(64) NOT NULL,
    date_and_time timestamp without time zone
);


ALTER TABLE public.necto_synch_comments OWNER TO gkspire;

--
-- TOC entry 241 (class 1259 OID 91743718)
-- Name: necto_synch_events; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_synch_events (
    record_id character varying(64) NOT NULL,
    date_and_time timestamp without time zone
);


ALTER TABLE public.necto_synch_events OWNER TO gkspire;

--
-- TOC entry 242 (class 1259 OID 91743721)
-- Name: necto_synch_regs; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_synch_regs (
    record_id character varying(64) NOT NULL,
    date_and_time timestamp without time zone,
    registration_id character varying(64)
);


ALTER TABLE public.necto_synch_regs OWNER TO gkspire;

--
-- TOC entry 243 (class 1259 OID 91743724)
-- Name: necto_synch_verifications; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_synch_verifications (
    record_id character varying(64) NOT NULL,
    date_and_time timestamp without time zone,
    registration_id character varying(64)
);


ALTER TABLE public.necto_synch_verifications OWNER TO gkspire;

--
-- TOC entry 244 (class 1259 OID 91743727)
-- Name: necto_verification_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE necto_verification_log (
    record_id character varying(64) NOT NULL,
    center_id character varying(64),
    latitude character varying(64),
    longitude character varying(64),
    operatorid character varying(64),
    registration_id character varying(64),
    supervisor_id character varying(64),
    verificationdate timestamp without time zone,
    result character varying(255)
);


ALTER TABLE public.necto_verification_log OWNER TO gkspire;

--
-- TOC entry 245 (class 1259 OID 91743733)
-- Name: prim_adjudication_cases; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_adjudication_cases (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    adjudication_cases text
);


ALTER TABLE public.prim_adjudication_cases OWNER TO gkspire;

--
-- TOC entry 246 (class 1259 OID 91743739)
-- Name: prim_biometric_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_biometric_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    version_ integer,
    archived boolean,
    biometric_profile bytea,
    operation character varying(16),
    processed integer,
    replaces character varying(64),
    process_error_code character varying(255),
    bio_hash_data bytea
);


ALTER TABLE public.prim_biometric_profile OWNER TO gkspire;

--
-- TOC entry 247 (class 1259 OID 91743745)
-- Name: prim_biometric_profile_updates; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_biometric_profile_updates (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    archived boolean,
    bio_hash_data bytea,
    biometric_profile bytea,
    operation character varying(16),
    process_error_code character varying(255),
    processed integer
);


ALTER TABLE public.prim_biometric_profile_updates OWNER TO gkspire;

--
-- TOC entry 248 (class 1259 OID 91743751)
-- Name: prim_identification_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_identification_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    identifications text
);


ALTER TABLE public.prim_identification_list OWNER TO gkspire;

--
-- TOC entry 249 (class 1259 OID 91743757)
-- Name: prim_membergrouppmt; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_membergrouppmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    other_details text,
    pmt_version character varying(255),
    pmt text
);


ALTER TABLE public.prim_membergrouppmt OWNER TO gkspire;

--
-- TOC entry 250 (class 1259 OID 91743763)
-- Name: prim_trauma_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE prim_trauma_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    traumas text
);


ALTER TABLE public.prim_trauma_list OWNER TO gkspire;

--
-- TOC entry 251 (class 1259 OID 91743769)
-- Name: production_current_regs_summary; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE production_current_regs_summary (
    gk_id character varying(64) NOT NULL,
    bio_profile_created timestamp without time zone,
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    station_id character varying(256),
    registration_officeid character varying(64),
    transaction_date timestamp without time zone,
    group_id character varying(64),
    related_to character varying(64),
    relationship character varying(64),
    ext_memberid character varying(128)
);


ALTER TABLE public.production_current_regs_summary OWNER TO gkspire;

--
-- TOC entry 252 (class 1259 OID 91743775)
-- Name: resetvotingstation; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE resetvotingstation (
    gk_id text,
    station_id_tmp text,
    curr_center_code text,
    new_center_code text
);


ALTER TABLE public.resetvotingstation OWNER TO gkspire;

--
-- TOC entry 254 (class 1259 OID 91743787)
-- Name: sec_group; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_group (
    sec_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    name character varying(64),
    record_status character varying(16),
    roles text,
    tenant character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    description character varying(255)
);


ALTER TABLE public.sec_group OWNER TO gkspire;

--
-- TOC entry 255 (class 1259 OID 91743793)
-- Name: sec_group_roles; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_group_roles (
    sec_principal_id character varying(64) NOT NULL,
    sec_role_name character varying(32) NOT NULL
);


ALTER TABLE public.sec_group_roles OWNER TO gkspire;

--
-- TOC entry 256 (class 1259 OID 91743796)
-- Name: sec_roles; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_roles (
    name character varying(32) NOT NULL,
    permissions text
);


ALTER TABLE public.sec_roles OWNER TO gkspire;

--
-- TOC entry 257 (class 1259 OID 91743802)
-- Name: sec_user; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_user (
    sec_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    name character varying(64),
    record_status character varying(16),
    roles text,
    tenant character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    email_address character varying(64),
    first_name character varying(32),
    image bytea,
    image_content_type character varying(255),
    internal_key character varying(255),
    last_name character varying(32),
    last_password_changed_date date,
    password character varying(64),
    password_expired boolean,
    securitystatus character varying(255),
    biometrics bytea
);


ALTER TABLE public.sec_user OWNER TO gkspire;

--
-- TOC entry 258 (class 1259 OID 91743808)
-- Name: sec_user_groups; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_user_groups (
    sec_group_id character varying(64) NOT NULL,
    sec_user_id character varying(64) NOT NULL
);


ALTER TABLE public.sec_user_groups OWNER TO gkspire;

--
-- TOC entry 259 (class 1259 OID 91743811)
-- Name: sec_user_roles; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sec_user_roles (
    sec_principal_id character varying(64) NOT NULL,
    sec_role_name character varying(32) NOT NULL
);


ALTER TABLE public.sec_user_roles OWNER TO gkspire;

--
-- TOC entry 263 (class 1259 OID 91743828)
-- Name: sys_center_record; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_center_record (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    node character varying(64),
    record_status character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    content bytea,
    country character varying(3),
    center_version character varying(64),
    ext character varying(32)
);


ALTER TABLE public.sys_center_record OWNER TO gkspire;

--
-- TOC entry 264 (class 1259 OID 91743834)
-- Name: sys_db_lock; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_db_lock (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    version_ integer
);


ALTER TABLE public.sys_db_lock OWNER TO gkspire;

--
-- TOC entry 265 (class 1259 OID 91743837)
-- Name: sys_dedup_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_dedup_log (
    record_id character varying(64) NOT NULL,
    gk_id character varying(64) NOT NULL,
    created timestamp without time zone,
    modality integer,
    version_ integer
);


ALTER TABLE public.sys_dedup_log OWNER TO gkspire;

--
-- TOC entry 266 (class 1259 OID 91743840)
-- Name: sys_dedup_log_error; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_dedup_log_error (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    error_details text,
    error_text text,
    gk_id character varying(64),
    match_details text,
    modality integer,
    version_ integer
);


ALTER TABLE public.sys_dedup_log_error OWNER TO gkspire;

--
-- TOC entry 267 (class 1259 OID 91743846)
-- Name: sys_deleted_transactions; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_deleted_transactions (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone,
    transaction_reason character varying(255),
    transaction_type character varying(255),
    deleted_date timestamp without time zone
);


ALTER TABLE public.sys_deleted_transactions OWNER TO gkspire;

--
-- TOC entry 268 (class 1259 OID 91743852)
-- Name: sys_demarcation_record; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_demarcation_record (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    node character varying(64),
    record_status character varying(16),
    updated timestamp without time zone,
    updated_by character varying(64),
    version_ integer,
    content bytea,
    country character varying(3)
);


ALTER TABLE public.sys_demarcation_record OWNER TO gkspire;

--
-- TOC entry 269 (class 1259 OID 91743858)
-- Name: sys_ex_rev_result; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_ex_rev_result (
    record_id character varying(64) NOT NULL,
    add_info text,
    as_of_date timestamp without time zone,
    error text,
    is_member boolean,
    response_code integer,
    source character varying(64),
    md_5hash_info character varying(32),
    md_5hash_error character varying(32),
    location character varying(64),
    posted_date timestamp without time zone,
    record_id_external character varying(64),
    group_id character varying(64),
    ext_member_id character varying(128)
);


ALTER TABLE public.sys_ex_rev_result OWNER TO gkspire;

--
-- TOC entry 270 (class 1259 OID 91743864)
-- Name: sys_failed_transactions; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_failed_transactions (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone,
    transaction_reason character varying(255),
    transaction_type character varying(255),
    error character varying(64),
    failed_confirmation_text text,
    original_view bytea
);


ALTER TABLE public.sys_failed_transactions OWNER TO gkspire;

--
-- TOC entry 271 (class 1259 OID 91743870)
-- Name: sys_import_log; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_import_log (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    ext character varying(64),
    groupid character varying(128),
    officer_id character varying(256),
    officer_detail text,
    original_text bytea,
    process_log text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    result character varying(32),
    version_ integer
);


ALTER TABLE public.sys_import_log OWNER TO gkspire;

--
-- TOC entry 272 (class 1259 OID 91743876)
-- Name: sys_pending_export; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_pending_export (
    record_id character varying(64) NOT NULL,
    transaction_record_id character varying(64),
    group_id character varying(64),
    gk_id character varying(64),
    isgroup boolean,
    created timestamp without time zone,
    transactiontype character varying(32),
    member_id character varying(64),
    newrecord boolean,
    confirmed timestamp without time zone
);


ALTER TABLE public.sys_pending_export OWNER TO gkspire;

--
-- TOC entry 275 (class 1259 OID 91743887)
-- Name: sys_pending_export_processed; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_pending_export_processed (
    record_id character varying(64),
    transaction_record_id character varying(64),
    group_id character varying(64),
    gk_id character varying(64),
    isgroup boolean,
    created timestamp without time zone,
    transactiontype character varying(32),
    member_id character varying(64),
    newrecord boolean,
    confirmed timestamp without time zone
);


ALTER TABLE public.sys_pending_export_processed OWNER TO gkspire;

--
-- TOC entry 276 (class 1259 OID 91743890)
-- Name: sys_pending_export_processor; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_pending_export_processor (
    pid bigint NOT NULL,
    comment character varying(128)
);


ALTER TABLE public.sys_pending_export_processor OWNER TO gkspire;

--
-- TOC entry 277 (class 1259 OID 91743893)
-- Name: sys_pending_remote_transactions; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_pending_remote_transactions (
    sequence_id bigint NOT NULL,
    confirmed boolean,
    transaction bytea,
    created timestamp without time zone,
    gk_id character varying(255),
    group_id character varying(255),
    md_5hash character varying(255),
    transmitted boolean
);


ALTER TABLE public.sys_pending_remote_transactions OWNER TO gkspire;

--
-- TOC entry 278 (class 1259 OID 91743899)
-- Name: sys_pending_transactions; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_pending_transactions (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone,
    transaction_reason character varying(255),
    transaction_type character varying(255),
    error character varying(64),
    failed_confirmation_text text,
    original_view bytea
);


ALTER TABLE public.sys_pending_transactions OWNER TO gkspire;

--
-- TOC entry 279 (class 1259 OID 91743905)
-- Name: sys_transaction_confirmations; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_transaction_confirmations (
    transaction_id character varying(255) NOT NULL,
    created_by character varying(255),
    created_on timestamp without time zone,
    error character varying(64),
    errordetails_properties text,
    from_source character varying(64),
    has_warnings boolean NOT NULL,
    is_processed_successfull boolean,
    received_on timestamp without time zone,
    received_transaction_id character varying(64),
    source_ character varying(255),
    transaction_sequence bigint,
    transaction_type character varying(255),
    version_ integer,
    warning character varying(64),
    warningdetails_properties text
);


ALTER TABLE public.sys_transaction_confirmations OWNER TO gkspire;

--
-- TOC entry 280 (class 1259 OID 91743911)
-- Name: sys_transaction_logger; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_transaction_logger (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone,
    exported_date timestamp without time zone,
    group_id character varying(64),
    is_group_update boolean,
    relation_ship character varying(255),
    update_log text
);


ALTER TABLE public.sys_transaction_logger OWNER TO gkspire;

--
-- TOC entry 281 (class 1259 OID 91743917)
-- Name: sys_transaction_profile; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_transaction_profile (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    gps_location character varying(128),
    member_id character varying(64),
    officer_id character varying(256),
    officer_detail text,
    other_properties text,
    station_id character varying(256),
    station_detail text,
    registration_officeid character varying(64),
    registration_office_detail text,
    transaction_date timestamp without time zone,
    transaction_reason character varying(255),
    transaction_type character varying(255)
);


ALTER TABLE public.sys_transaction_profile OWNER TO gkspire;

--
-- TOC entry 2294 (class 2606 OID 91743941)
-- Name: adj_case_lookup_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY adj_case_lookup
    ADD CONSTRAINT adj_case_lookup_pkey PRIMARY KEY (case_id);


--
-- TOC entry 2300 (class 2606 OID 91743943)
-- Name: averification_node_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY averification_node
    ADD CONSTRAINT averification_node_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2304 (class 2606 OID 91743945)
-- Name: basic_person_data2_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY basic_person_data2
    ADD CONSTRAINT basic_person_data2_pk PRIMARY KEY (gk_id);


--
-- TOC entry 2302 (class 2606 OID 91743947)
-- Name: basic_person_data_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY basic_person_data
    ADD CONSTRAINT basic_person_data_pk PRIMARY KEY (gk_id);


--
-- TOC entry 2313 (class 2606 OID 91743953)
-- Name: common_center_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY common_center
    ADD CONSTRAINT common_center_pkey PRIMARY KEY (center_id, ext);


--
-- TOC entry 2315 (class 2606 OID 91743955)
-- Name: common_officer_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY common_officer
    ADD CONSTRAINT common_officer_pkey PRIMARY KEY (ext, officer_id);


--
-- TOC entry 2317 (class 2606 OID 91743957)
-- Name: common_station_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY common_station
    ADD CONSTRAINT common_station_pkey PRIMARY KEY (process_station_id, ext);


--
-- TOC entry 2319 (class 2606 OID 91743959)
-- Name: det_address_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_address_list
    ADD CONSTRAINT det_address_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2321 (class 2606 OID 91743961)
-- Name: det_changerequest_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_changerequest_list
    ADD CONSTRAINT det_changerequest_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2323 (class 2606 OID 91743963)
-- Name: det_citizenships_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_citizenships_list
    ADD CONSTRAINT det_citizenships_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2325 (class 2606 OID 91743965)
-- Name: det_civil_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_civil_record
    ADD CONSTRAINT det_civil_record_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2327 (class 2606 OID 91743967)
-- Name: det_contacts_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_contacts_list
    ADD CONSTRAINT det_contacts_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2329 (class 2606 OID 91743969)
-- Name: det_dependent_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_dependent_list
    ADD CONSTRAINT det_dependent_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2331 (class 2606 OID 91743971)
-- Name: det_docheader_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_docheader_list
    ADD CONSTRAINT det_docheader_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2333 (class 2606 OID 91743973)
-- Name: det_document_content_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_document_content
    ADD CONSTRAINT det_document_content_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2335 (class 2606 OID 91743975)
-- Name: det_document_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_document_list
    ADD CONSTRAINT det_document_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2337 (class 2606 OID 91743977)
-- Name: det_electoral_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_electoral_record
    ADD CONSTRAINT det_electoral_record_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2339 (class 2606 OID 91743979)
-- Name: det_idcard_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_idcard_list
    ADD CONSTRAINT det_idcard_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2341 (class 2606 OID 91743981)
-- Name: det_regclient_protocol_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_regclient_protocol
    ADD CONSTRAINT det_regclient_protocol_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2345 (class 2606 OID 91743983)
-- Name: det_traumaorg_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_traumaorg_list
    ADD CONSTRAINT det_traumaorg_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2349 (class 2606 OID 91743985)
-- Name: gk_domain_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_domain_profile
    ADD CONSTRAINT gk_domain_profile_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2351 (class 2606 OID 91743987)
-- Name: gk_group_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_group_stats
    ADD CONSTRAINT gk_group_stats_pkey PRIMARY KEY (group_id);


--
-- TOC entry 2353 (class 2606 OID 91743989)
-- Name: gk_person_black_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_black_list
    ADD CONSTRAINT gk_person_black_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2359 (class 2606 OID 91743991)
-- Name: gk_person_detail_history_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_detail_history
    ADD CONSTRAINT gk_person_detail_history_pkey PRIMARY KEY (ext, gk_person);


--
-- TOC entry 2355 (class 2606 OID 91743993)
-- Name: gk_person_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_detail
    ADD CONSTRAINT gk_person_detail_pkey PRIMARY KEY (ext, gk_person);


--
-- TOC entry 2306 (class 2606 OID 91743995)
-- Name: gk_person_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person
    ADD CONSTRAINT gk_person_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2361 (class 2606 OID 91743997)
-- Name: gk_person_primary_history_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_primary_history
    ADD CONSTRAINT gk_person_primary_history_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2363 (class 2606 OID 91743999)
-- Name: gk_person_safe_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_safe_list
    ADD CONSTRAINT gk_person_safe_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2429 (class 2606 OID 91744001)
-- Name: gkbiometric_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_biometric_profile
    ADD CONSTRAINT gkbiometric_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2373 (class 2606 OID 91744003)
-- Name: gkfacial_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_facial_profile
    ADD CONSTRAINT gkfacial_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2382 (class 2606 OID 91744009)
-- Name: necto_comment_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_comment_log
    ADD CONSTRAINT necto_comment_log_pkey PRIMARY KEY (date_and_time, record_id);


--
-- TOC entry 2385 (class 2606 OID 91744011)
-- Name: necto_event_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_event_log
    ADD CONSTRAINT necto_event_log_pkey PRIMARY KEY (date_and_time, record_id);


--
-- TOC entry 2388 (class 2606 OID 91744013)
-- Name: necto_external_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_external_clients
    ADD CONSTRAINT necto_external_clients_pkey PRIMARY KEY (client, client_registration_id);


--
-- TOC entry 2392 (class 2606 OID 91744015)
-- Name: necto_external_operators_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_external_operators
    ADD CONSTRAINT necto_external_operators_pkey PRIMARY KEY (client, userid);


--
-- TOC entry 2396 (class 2606 OID 91744017)
-- Name: necto_external_watchlist_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_external_watchlist
    ADD CONSTRAINT necto_external_watchlist_pkey PRIMARY KEY (client, subject_id);


--
-- TOC entry 2400 (class 2606 OID 91744019)
-- Name: necto_log_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_log_comments
    ADD CONSTRAINT necto_log_comments_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2405 (class 2606 OID 91744021)
-- Name: necto_log_events_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_log_events
    ADD CONSTRAINT necto_log_events_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2410 (class 2606 OID 91744023)
-- Name: necto_station_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_station_record
    ADD CONSTRAINT necto_station_record_pkey PRIMARY KEY (station_id, ext);


--
-- TOC entry 2414 (class 2606 OID 91744025)
-- Name: necto_synch_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_synch_comments
    ADD CONSTRAINT necto_synch_comments_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2416 (class 2606 OID 91744027)
-- Name: necto_synch_events_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_synch_events
    ADD CONSTRAINT necto_synch_events_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2418 (class 2606 OID 91744029)
-- Name: necto_synch_regs_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_synch_regs
    ADD CONSTRAINT necto_synch_regs_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2420 (class 2606 OID 91744031)
-- Name: necto_synch_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_synch_verifications
    ADD CONSTRAINT necto_synch_verifications_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2422 (class 2606 OID 91744033)
-- Name: necto_verification_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_verification_log
    ADD CONSTRAINT necto_verification_log_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2343 (class 2606 OID 91744035)
-- Name: node_document_content_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_single_document
    ADD CONSTRAINT node_document_content_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2448 (class 2606 OID 91744037)
-- Name: p_c_r_s_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY production_current_regs_summary
    ADD CONSTRAINT p_c_r_s_pk PRIMARY KEY (gk_id);


--
-- TOC entry 2367 (class 2606 OID 91744039)
-- Name: prim_adj_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_adj_profile
    ADD CONSTRAINT prim_adj_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2427 (class 2606 OID 91744041)
-- Name: prim_adjudication_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_adjudication_cases
    ADD CONSTRAINT prim_adjudication_cases_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2434 (class 2606 OID 91744043)
-- Name: prim_biometric_profile_updates_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_biometric_profile_updates
    ADD CONSTRAINT prim_biometric_profile_updates_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2370 (class 2606 OID 91744045)
-- Name: prim_eligibility_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_eligibility_profile
    ADD CONSTRAINT prim_eligibility_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2365 (class 2606 OID 91744047)
-- Name: prim_grouppmt_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_grouppmt
    ADD CONSTRAINT prim_grouppmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2440 (class 2606 OID 91744049)
-- Name: prim_identification_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_identification_list
    ADD CONSTRAINT prim_identification_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2442 (class 2606 OID 91744051)
-- Name: prim_membergrouppmt_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_membergrouppmt
    ADD CONSTRAINT prim_membergrouppmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2308 (class 2606 OID 91744053)
-- Name: prim_memberpmt_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_memberpmt
    ADD CONSTRAINT prim_memberpmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2375 (class 2606 OID 91744055)
-- Name: prim_registration_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_registration_profile
    ADD CONSTRAINT prim_registration_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2311 (class 2606 OID 91744057)
-- Name: prim_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_relations
    ADD CONSTRAINT prim_relations_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2444 (class 2606 OID 91744059)
-- Name: prim_trauma_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY prim_trauma_list
    ADD CONSTRAINT prim_trauma_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2450 (class 2606 OID 91744061)
-- Name: sec_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_group
    ADD CONSTRAINT sec_group_pkey PRIMARY KEY (sec_id);


--
-- TOC entry 2452 (class 2606 OID 91744063)
-- Name: sec_group_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_group_roles
    ADD CONSTRAINT sec_group_roles_pkey PRIMARY KEY (sec_principal_id, sec_role_name);


--
-- TOC entry 2456 (class 2606 OID 91744065)
-- Name: sec_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_roles
    ADD CONSTRAINT sec_roles_pkey PRIMARY KEY (name);


--
-- TOC entry 2463 (class 2606 OID 91744067)
-- Name: sec_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_user_groups
    ADD CONSTRAINT sec_user_groups_pkey PRIMARY KEY (sec_group_id, sec_user_id);


--
-- TOC entry 2458 (class 2606 OID 91744069)
-- Name: sec_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_user
    ADD CONSTRAINT sec_user_pkey PRIMARY KEY (sec_id);


--
-- TOC entry 2467 (class 2606 OID 91744071)
-- Name: sec_user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_user_roles
    ADD CONSTRAINT sec_user_roles_pkey PRIMARY KEY (sec_principal_id, sec_role_name);


--
-- TOC entry 2471 (class 2606 OID 91744073)
-- Name: sys_center_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_center_record
    ADD CONSTRAINT sys_center_record_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2474 (class 2606 OID 91744075)
-- Name: sys_db_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_db_lock
    ADD CONSTRAINT sys_db_lock_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2481 (class 2606 OID 91744077)
-- Name: sys_dedup_log_error_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_dedup_log_error
    ADD CONSTRAINT sys_dedup_log_error_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2479 (class 2606 OID 91744079)
-- Name: sys_dedup_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_dedup_log
    ADD CONSTRAINT sys_dedup_log_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2483 (class 2606 OID 91744081)
-- Name: sys_deleted_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_deleted_transactions
    ADD CONSTRAINT sys_deleted_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2487 (class 2606 OID 91744083)
-- Name: sys_demarcation_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_demarcation_record
    ADD CONSTRAINT sys_demarcation_record_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2489 (class 2606 OID 91744085)
-- Name: sys_ex_rev_result_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_ex_rev_result
    ADD CONSTRAINT sys_ex_rev_result_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2495 (class 2606 OID 91744087)
-- Name: sys_failed_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_failed_transactions
    ADD CONSTRAINT sys_failed_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2497 (class 2606 OID 91744089)
-- Name: sys_import_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_import_log
    ADD CONSTRAINT sys_import_log_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2503 (class 2606 OID 91744091)
-- Name: sys_pen_ex_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_export
    ADD CONSTRAINT sys_pen_ex_pk PRIMARY KEY (record_id);


--
-- TOC entry 2506 (class 2606 OID 91744093)
-- Name: sys_pending_export_processor_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_export_processor
    ADD CONSTRAINT sys_pending_export_processor_pk PRIMARY KEY (pid);


--
-- TOC entry 2508 (class 2606 OID 91744095)
-- Name: sys_pending_remote_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_remote_transactions
    ADD CONSTRAINT sys_pending_remote_transactions_pkey PRIMARY KEY (sequence_id);


--
-- TOC entry 2514 (class 2606 OID 91744097)
-- Name: sys_pending_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_transactions
    ADD CONSTRAINT sys_pending_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2380 (class 2606 OID 91744099)
-- Name: sys_search_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_search_log
    ADD CONSTRAINT sys_search_log_pkey PRIMARY KEY (ext, isgroup, id, summaryname);


--
-- TOC entry 2520 (class 2606 OID 91744101)
-- Name: sys_transaction_confirmations_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_transaction_confirmations
    ADD CONSTRAINT sys_transaction_confirmations_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2522 (class 2606 OID 91744103)
-- Name: sys_transaction_logger_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_transaction_logger
    ADD CONSTRAINT sys_transaction_logger_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2527 (class 2606 OID 91744105)
-- Name: sys_transaction_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_transaction_profile
    ADD CONSTRAINT sys_transaction_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2357 (class 2606 OID 91744111)
-- Name: uk_48x60b1r8ccgc2byflvsvolj7; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gk_person_detail
    ADD CONSTRAINT uk_48x60b1r8ccgc2byflvsvolj7 UNIQUE (ext, member_id);


--
-- TOC entry 2460 (class 2606 OID 91744113)
-- Name: uk_4uf00k7pgn39gclagovgekl76; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sec_user
    ADD CONSTRAINT uk_4uf00k7pgn39gclagovgekl76 UNIQUE (tenant, name);


--
-- TOC entry 2511 (class 2606 OID 91744115)
-- Name: uk_7fdd6x39kotovf197o3g6pu63; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_remote_transactions
    ADD CONSTRAINT uk_7fdd6x39kotovf197o3g6pu63 UNIQUE (sequence_id, confirmed);


--
-- TOC entry 2517 (class 2606 OID 91744117)
-- Name: uk_apvcyn57fmprehnm8qui8jqpj; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_pending_transactions
    ADD CONSTRAINT uk_apvcyn57fmprehnm8qui8jqpj UNIQUE (ext, member_id);


--
-- TOC entry 2412 (class 2606 OID 91744119)
-- Name: uk_hk4mmmhyjqu4gugjab3303v6d; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY necto_station_record
    ADD CONSTRAINT uk_hk4mmmhyjqu4gugjab3303v6d UNIQUE (mac);


--
-- TOC entry 2346 (class 1259 OID 91744126)
-- Name: biographicid_index; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX biographicid_index ON gk_domain_profile USING btree (biographic_id);


--
-- TOC entry 2472 (class 1259 OID 91744127)
-- Name: dblock_index_1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX dblock_index_1 ON sys_db_lock USING btree (created_by);


--
-- TOC entry 2347 (class 1259 OID 91744128)
-- Name: domain_profile_ts_index; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX domain_profile_ts_index ON gk_domain_profile USING btree (time_stamp);


--
-- TOC entry 2445 (class 1259 OID 91744132)
-- Name: p_c_r_s__i1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX p_c_r_s__i1 ON production_current_regs_summary USING btree (ext_memberid);


--
-- TOC entry 2446 (class 1259 OID 91744133)
-- Name: p_c_r_s_i2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX p_c_r_s_i2 ON production_current_regs_summary USING btree (group_id);


--
-- TOC entry 2435 (class 1259 OID 91744134)
-- Name: prim_biometric_profile_updatesuk_3snsa5mhcxkhm8r71pfvwmjpl; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX prim_biometric_profile_updatesuk_3snsa5mhcxkhm8r71pfvwmjpl ON prim_biometric_profile_updates USING btree (operation);


--
-- TOC entry 2436 (class 1259 OID 91744135)
-- Name: prim_biometric_profile_updatesuk_b81gdxdahmqec6x0kd75d98b3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX prim_biometric_profile_updatesuk_b81gdxdahmqec6x0kd75d98b3 ON prim_biometric_profile_updates USING btree (gk_id);


--
-- TOC entry 2437 (class 1259 OID 91744136)
-- Name: prim_biometric_profile_updatesuk_egpr0acsypekfyqk4a1y92vfg; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX prim_biometric_profile_updatesuk_egpr0acsypekfyqk4a1y92vfg ON prim_biometric_profile_updates USING btree (processed);


--
-- TOC entry 2309 (class 1259 OID 91744137)
-- Name: prim_relations_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX prim_relations_idx1 ON prim_relations USING btree (group_id);


--
-- TOC entry 2475 (class 1259 OID 91744138)
-- Name: sys_dedup_log_1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_dedup_log_1 ON sys_dedup_log USING btree (modality);


--
-- TOC entry 2476 (class 1259 OID 91744139)
-- Name: sys_dedup_log_2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_dedup_log_2 ON sys_dedup_log USING btree (gk_id, modality);


--
-- TOC entry 2477 (class 1259 OID 91744140)
-- Name: sys_dedup_log_3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_dedup_log_3 ON sys_dedup_log USING btree (gk_id);


--
-- TOC entry 2498 (class 1259 OID 91744141)
-- Name: sys_pen_ex3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_pen_ex3 ON sys_pending_export USING btree (transaction_record_id);


--
-- TOC entry 2499 (class 1259 OID 91744142)
-- Name: sys_pen_ex_1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_pen_ex_1 ON sys_pending_export USING btree (group_id);


--
-- TOC entry 2500 (class 1259 OID 91744143)
-- Name: sys_pen_ex_2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_pen_ex_2 ON sys_pending_export USING btree (created);


--
-- TOC entry 2501 (class 1259 OID 91744144)
-- Name: sys_pen_ex_ex1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_pen_ex_ex1 ON sys_pending_export USING btree (gk_id, created DESC, confirmed DESC) WHERE ((NOT isgroup) AND ((gk_id)::text <> (group_id)::text));


--
-- TOC entry 2504 (class 1259 OID 91744147)
-- Name: sys_pending_export_ee1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_pending_export_ee1 ON sys_pending_export USING btree (((created)::date));


--
-- TOC entry 2376 (class 1259 OID 91744148)
-- Name: sys_search_log_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_search_log_idx1 ON sys_search_log USING btree (summaryname);


--
-- TOC entry 2377 (class 1259 OID 91744149)
-- Name: sys_search_log_idx2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_search_log_idx2 ON sys_search_log USING btree (id);


--
-- TOC entry 2378 (class 1259 OID 91744150)
-- Name: sys_search_log_idx3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_search_log_idx3 ON sys_search_log USING btree (known_group);


--
-- TOC entry 2389 (class 1259 OID 91744151)
-- Name: uk_1vemgw2hcwx4kbqe6kv1smqpo; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_1vemgw2hcwx4kbqe6kv1smqpo ON necto_external_clients USING btree (exitdate);


--
-- TOC entry 2401 (class 1259 OID 91744152)
-- Name: uk_27jmlxho8ypjanx27ch3defxa; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_27jmlxho8ypjanx27ch3defxa ON necto_log_comments USING btree (operatorid);


--
-- TOC entry 2484 (class 1259 OID 91744153)
-- Name: uk_2c5grkmd0wxnk76wq2h5ca9j8; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_2c5grkmd0wxnk76wq2h5ca9j8 ON sys_deleted_transactions USING btree (gk_id);


--
-- TOC entry 2368 (class 1259 OID 91744154)
-- Name: uk_33fs1srh1p2pf9cbiamln6x78; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_33fs1srh1p2pf9cbiamln6x78 ON prim_adj_profile USING btree (gk_id);


--
-- TOC entry 2430 (class 1259 OID 91744155)
-- Name: uk_3snsa5mhcxkhm8r71pfvwmjpl; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_3snsa5mhcxkhm8r71pfvwmjpl ON prim_biometric_profile USING btree (operation);


--
-- TOC entry 2393 (class 1259 OID 91744156)
-- Name: uk_4c6v5y8jnfukun7eg49iwx92l; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_4c6v5y8jnfukun7eg49iwx92l ON necto_external_operators USING btree (exitdate);


--
-- TOC entry 2423 (class 1259 OID 91744157)
-- Name: uk_4wnbp63vofs1mi2xan5xwyc5; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_4wnbp63vofs1mi2xan5xwyc5 ON necto_verification_log USING btree (operatorid);


--
-- TOC entry 2490 (class 1259 OID 91744158)
-- Name: uk_56kre7v14xfaptpqeyfu0w5bc; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_56kre7v14xfaptpqeyfu0w5bc ON sys_ex_rev_result USING btree (source, md_5hash_error, md_5hash_info);


--
-- TOC entry 2485 (class 1259 OID 91744159)
-- Name: uk_5tbyxvmpys382gxhjlkw9u7va; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_5tbyxvmpys382gxhjlkw9u7va ON sys_deleted_transactions USING btree (transaction_date);


--
-- TOC entry 2523 (class 1259 OID 91744160)
-- Name: uk_618p2o08o8rr6msms7ufmv73y; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_618p2o08o8rr6msms7ufmv73y ON sys_transaction_logger USING btree (group_id);


--
-- TOC entry 2491 (class 1259 OID 91744161)
-- Name: uk_620m9p5b1mjqetpkw9f3qieoy; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_620m9p5b1mjqetpkw9f3qieoy ON sys_ex_rev_result USING btree (location, group_id, is_member, ext_member_id);


--
-- TOC entry 2453 (class 1259 OID 91744162)
-- Name: uk_62ovk4dt6ys3q5swypl346lio; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_62ovk4dt6ys3q5swypl346lio ON sec_group_roles USING btree (sec_principal_id);


--
-- TOC entry 2515 (class 1259 OID 91744163)
-- Name: uk_68fa3wf4r10winqxj02q2rg2l; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_68fa3wf4r10winqxj02q2rg2l ON sys_pending_transactions USING btree (gk_id);


--
-- TOC entry 2397 (class 1259 OID 91744164)
-- Name: uk_6n3strlwdhcjp2ey9lueu0m20; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_6n3strlwdhcjp2ey9lueu0m20 ON necto_external_watchlist USING btree (exitdate);


--
-- TOC entry 2295 (class 1259 OID 91744165)
-- Name: uk_6qywr2s0v6bybpj5qx2l60lf5; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_6qywr2s0v6bybpj5qx2l60lf5 ON adj_case_lookup USING btree (normalized_score);


--
-- TOC entry 2509 (class 1259 OID 91744166)
-- Name: uk_6wcng47ikj7hfypcj0hru2iu6; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_6wcng47ikj7hfypcj0hru2iu6 ON sys_pending_remote_transactions USING btree (confirmed);


--
-- TOC entry 2371 (class 1259 OID 91744167)
-- Name: uk_785rek3c8v9qndqi4f8dlbtup; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_785rek3c8v9qndqi4f8dlbtup ON prim_eligibility_profile USING btree (gk_id);


--
-- TOC entry 2394 (class 1259 OID 91744168)
-- Name: uk_7srbpk34k9q1bjvm2oowtrdo0; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_7srbpk34k9q1bjvm2oowtrdo0 ON necto_external_operators USING btree (entrydate);


--
-- TOC entry 2296 (class 1259 OID 91744169)
-- Name: uk_8ww7452k1yrhj95i6w4q0cqpn; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_8ww7452k1yrhj95i6w4q0cqpn ON adj_case_lookup USING btree (primary_person);


--
-- TOC entry 2424 (class 1259 OID 91744170)
-- Name: uk_8y25x6xv2jmoag1cokw0doj6m; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_8y25x6xv2jmoag1cokw0doj6m ON necto_verification_log USING btree (verificationdate);


--
-- TOC entry 2454 (class 1259 OID 91744171)
-- Name: uk_95g9cnxaxjb2e3mda14p9bdpx; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_95g9cnxaxjb2e3mda14p9bdpx ON sec_group_roles USING btree (sec_role_name);


--
-- TOC entry 2431 (class 1259 OID 91744173)
-- Name: uk_b81gdxdahmqec6x0kd75d98b3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_b81gdxdahmqec6x0kd75d98b3 ON prim_biometric_profile USING btree (gk_id);


--
-- TOC entry 2402 (class 1259 OID 91744174)
-- Name: uk_baenl5m0ixm375w58db75a2ur; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_baenl5m0ixm375w58db75a2ur ON necto_log_comments USING btree (station_id, date_and_time);


--
-- TOC entry 2406 (class 1259 OID 91744175)
-- Name: uk_bh3ro6ag474cpv5eel0w63uo0; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_bh3ro6ag474cpv5eel0w63uo0 ON necto_log_events USING btree (operatorid);


--
-- TOC entry 2297 (class 1259 OID 91744176)
-- Name: uk_bm932yhj5e9vohwjrn3nuaoyb; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_bm932yhj5e9vohwjrn3nuaoyb ON adj_case_lookup USING btree (current_step);


--
-- TOC entry 2432 (class 1259 OID 91744177)
-- Name: uk_egpr0acsypekfyqk4a1y92vfg; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_egpr0acsypekfyqk4a1y92vfg ON prim_biometric_profile USING btree (processed);


--
-- TOC entry 2518 (class 1259 OID 91744178)
-- Name: uk_fr9r2mkw611edvf6migqwg8gd; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_fr9r2mkw611edvf6migqwg8gd ON sys_pending_transactions USING btree (transaction_date);


--
-- TOC entry 2524 (class 1259 OID 91744179)
-- Name: uk_fsivulfb6ycutt0254wllfv4a; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_fsivulfb6ycutt0254wllfv4a ON sys_transaction_logger USING btree (transaction_date);


--
-- TOC entry 2425 (class 1259 OID 91744180)
-- Name: uk_gk6tqr6yra1rgp791a1udg7xx; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_gk6tqr6yra1rgp791a1udg7xx ON necto_verification_log USING btree (registration_id);


--
-- TOC entry 2461 (class 1259 OID 91744182)
-- Name: uk_gxfjmqgh3sjs1suuvy5l88w0c; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_gxfjmqgh3sjs1suuvy5l88w0c ON sec_user USING btree (name);


--
-- TOC entry 2438 (class 1259 OID 91744183)
-- Name: uk_h4dxciq9gmj41jigmruvc47sl; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_h4dxciq9gmj41jigmruvc47sl ON prim_biometric_profile_updates USING btree (gk_id);


--
-- TOC entry 2512 (class 1259 OID 91744184)
-- Name: uk_hjenayxtm87jsancv0xvv6bkd; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_hjenayxtm87jsancv0xvv6bkd ON sys_pending_remote_transactions USING btree (group_id);


--
-- TOC entry 2492 (class 1259 OID 91744185)
-- Name: uk_ht35lkrl4tgpgxgiefm53i3iv; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ht35lkrl4tgpgxgiefm53i3iv ON sys_ex_rev_result USING btree (as_of_date);


--
-- TOC entry 2390 (class 1259 OID 91744187)
-- Name: uk_jbnsqcwty5yf8gf6nkk8ka5w2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_jbnsqcwty5yf8gf6nkk8ka5w2 ON necto_external_clients USING btree (entrydate);


--
-- TOC entry 2383 (class 1259 OID 91744188)
-- Name: uk_jqgl6ligd3mdgm1q024hs0gh2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_jqgl6ligd3mdgm1q024hs0gh2 ON necto_comment_log USING btree (operatorid);


--
-- TOC entry 2403 (class 1259 OID 91744189)
-- Name: uk_kqdgcqhcxwia5es6e27cs4xt7; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_kqdgcqhcxwia5es6e27cs4xt7 ON necto_log_comments USING btree (station_id);


--
-- TOC entry 2468 (class 1259 OID 91744190)
-- Name: uk_kr1gpxita28rwje6l4gsk8c9o; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_kr1gpxita28rwje6l4gsk8c9o ON sec_user_roles USING btree (sec_principal_id);


--
-- TOC entry 2493 (class 1259 OID 91744191)
-- Name: uk_kwlknmylx23l7m3y0ayu3emlj; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_kwlknmylx23l7m3y0ayu3emlj ON sys_ex_rev_result USING btree (source);


--
-- TOC entry 2398 (class 1259 OID 91744192)
-- Name: uk_l4rryf8wymiu4bt39qhqcre4f; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_l4rryf8wymiu4bt39qhqcre4f ON necto_external_watchlist USING btree (entrydate);


--
-- TOC entry 2386 (class 1259 OID 91744193)
-- Name: uk_lqf8o9o66c6dwpru332uhowxp; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_lqf8o9o66c6dwpru332uhowxp ON necto_event_log USING btree (operatorid);


--
-- TOC entry 2298 (class 1259 OID 91744194)
-- Name: uk_lu417mgqy1q2bds7lgvlganbh; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_lu417mgqy1q2bds7lgvlganbh ON adj_case_lookup USING btree (secondary_person);


--
-- TOC entry 2464 (class 1259 OID 91744195)
-- Name: uk_ma8xv8yfc41tpceiyqvrmlw3j; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ma8xv8yfc41tpceiyqvrmlw3j ON sec_user_groups USING btree (sec_user_id);


--
-- TOC entry 2525 (class 1259 OID 91744196)
-- Name: uk_munxxr63be3j2wx5j9n7eu5uw; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_munxxr63be3j2wx5j9n7eu5uw ON sys_transaction_logger USING btree (exported_date);


--
-- TOC entry 2469 (class 1259 OID 91744197)
-- Name: uk_pu3dagd4kvhi294wbs56dve98; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_pu3dagd4kvhi294wbs56dve98 ON sec_user_roles USING btree (sec_role_name);


--
-- TOC entry 2407 (class 1259 OID 91744198)
-- Name: uk_q93crmpufgkkgy35q0gbl0x72; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_q93crmpufgkkgy35q0gbl0x72 ON necto_log_events USING btree (station_id, date_and_time);


--
-- TOC entry 2465 (class 1259 OID 91744199)
-- Name: uk_sdkutdi4nva0avgxv0a0btx6c; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_sdkutdi4nva0avgxv0a0btx6c ON sec_user_groups USING btree (sec_group_id);


--
-- TOC entry 2408 (class 1259 OID 91744201)
-- Name: uk_tquwuoojje254peo6pi9a07og; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_tquwuoojje254peo6pi9a07og ON necto_log_events USING btree (station_id);

CREATE OR REPLACE FUNCTION tg_refresh_sys_pending_export_daily_pending()
  RETURNS trigger AS
$BODY$
BEGIN
    REFRESH MATERIALIZED VIEW  sys_pending_export_daily_pending;
    RETURN NULL;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION tg_refresh_sys_pending_export_daily_pending()
  OWNER TO gkspire;

--
-- TOC entry 2536 (class 2620 OID 91744202)
-- Name: tg_refresh_sys_pending_export_daily_pending; Type: TRIGGER; Schema: public; Owner: gkspire
--

CREATE TRIGGER tg_refresh_sys_pending_export_daily_pending AFTER INSERT OR UPDATE ON sys_pending_export_processor FOR EACH STATEMENT EXECUTE PROCEDURE tg_refresh_sys_pending_export_daily_pending();


--
-- TOC entry 2531 (class 2606 OID 91744203)
-- Name: fk_62ovk4dt6ys3q5swypl346lio; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_group_roles
    ADD CONSTRAINT fk_62ovk4dt6ys3q5swypl346lio FOREIGN KEY (sec_principal_id) REFERENCES sec_group(sec_id);


--
-- TOC entry 2530 (class 2606 OID 91744208)
-- Name: fk_95g9cnxaxjb2e3mda14p9bdpx; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_group_roles
    ADD CONSTRAINT fk_95g9cnxaxjb2e3mda14p9bdpx FOREIGN KEY (sec_role_name) REFERENCES sec_roles(name);


--
-- TOC entry 2529 (class 2606 OID 91744213)
-- Name: fk_a2y4c90gpijpckaiogycsq5oy; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY gk_person_detail_history
    ADD CONSTRAINT fk_a2y4c90gpijpckaiogycsq5oy FOREIGN KEY (gk_person) REFERENCES gk_person(gk_id);


--
-- TOC entry 2528 (class 2606 OID 91744218)
-- Name: fk_gwmu2527py4ro83ifo3movrjr; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY gk_person_detail
    ADD CONSTRAINT fk_gwmu2527py4ro83ifo3movrjr FOREIGN KEY (gk_person) REFERENCES gk_person(gk_id);


--
-- TOC entry 2535 (class 2606 OID 91744223)
-- Name: fk_kr1gpxita28rwje6l4gsk8c9o; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_user_roles
    ADD CONSTRAINT fk_kr1gpxita28rwje6l4gsk8c9o FOREIGN KEY (sec_principal_id) REFERENCES sec_user(sec_id);


--
-- TOC entry 2533 (class 2606 OID 91744228)
-- Name: fk_ma8xv8yfc41tpceiyqvrmlw3j; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_user_groups
    ADD CONSTRAINT fk_ma8xv8yfc41tpceiyqvrmlw3j FOREIGN KEY (sec_user_id) REFERENCES sec_user(sec_id);


--
-- TOC entry 2534 (class 2606 OID 91744233)
-- Name: fk_pu3dagd4kvhi294wbs56dve98; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_user_roles
    ADD CONSTRAINT fk_pu3dagd4kvhi294wbs56dve98 FOREIGN KEY (sec_role_name) REFERENCES sec_roles(name);


--
-- TOC entry 2532 (class 2606 OID 91744238)
-- Name: fk_sdkutdi4nva0avgxv0a0btx6c; Type: FK CONSTRAINT; Schema: public; Owner: gkspire
--

ALTER TABLE ONLY sec_user_groups
    ADD CONSTRAINT fk_sdkutdi4nva0avgxv0a0btx6c FOREIGN KEY (sec_group_id) REFERENCES sec_group(sec_id);


--
-- TOC entry 2659 (class 0 OID 0)
-- Dependencies: 276
-- Name: sys_pending_export_processor; Type: ACL; Schema: public; Owner: gkspire
--

REVOKE ALL ON TABLE sys_pending_export_processor FROM PUBLIC;
REVOKE ALL ON TABLE sys_pending_export_processor FROM gkspire;
GRANT ALL ON TABLE sys_pending_export_processor TO gkspire;
GRANT ALL ON TABLE sys_pending_export_processor TO PUBLIC;


-- Completed on 2021-02-02 10:54:46

--
-- PostgreSQL database dump complete
--

