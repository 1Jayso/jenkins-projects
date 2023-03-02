--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.9
-- Dumped by pg_dump version 9.3.9
-- Started on 2021-02-19 09:57:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;




--
-- TOC entry 182 (class 1259 OID 90872407)
-- Name: c3p0_conn_table; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE c3p0_conn_table (
    a character(1)
);


ALTER TABLE public.c3p0_conn_table OWNER TO gkspire;

--
-- TOC entry 184 (class 1259 OID 90872416)
-- Name: common_gkmedical_facility; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE common_gkmedical_facility (
    code character varying(64) NOT NULL,
    name character varying(255),
    other_properties text
);


ALTER TABLE public.common_gkmedical_facility OWNER TO gkspire;

--
-- TOC entry 187 (class 1259 OID 90872434)
-- Name: pcds_demarcation; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_demarcation (
    region character varying(64) NOT NULL,
    region_hasc character varying(16) NOT NULL,
    region_iso integer,
    department character varying(64) NOT NULL,
    departmen_hasc character varying(16) NOT NULL,
    department_iso integer,
    community character varying(64) NOT NULL,
    community_type character varying(8) NOT NULL,
    community_name character varying(64) NOT NULL,
    community_hasc character varying(16) NOT NULL,
    community_iso integer
);


ALTER TABLE public.pcds_demarcation OWNER TO gkspire;

--
-- TOC entry 189 (class 1259 OID 90872441)
-- Name: pcds_branch_centers; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_branch_centers (
    city_hasc text,
    registration_center_name text,
    registration_center_code text
);


ALTER TABLE public.pcds_branch_centers OWNER TO gkspire;

--
-- TOC entry 200 (class 1259 OID 90872505)
-- Name: det_member_reg; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_member_reg (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    member_reg_detail text
);


ALTER TABLE public.det_member_reg OWNER TO gkspire;

--
-- TOC entry 201 (class 1259 OID 90872511)
-- Name: det_pref_med_fac_ref; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_pref_med_fac_ref (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    preferred_facility text
);


ALTER TABLE public.det_pref_med_fac_ref OWNER TO gkspire;

--
-- TOC entry 202 (class 1259 OID 90872517)
-- Name: det_qualifications_list; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE det_qualifications_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    ext character varying(64),
    qualifications text
);


ALTER TABLE public.det_qualifications_list OWNER TO gkspire;

--
-- TOC entry 206 (class 1259 OID 90872541)
-- Name: generic_entity_detail; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE generic_entity_detail (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    member_id character varying(64)
);


ALTER TABLE public.generic_entity_detail OWNER TO gkspire;

--
-- TOC entry 215 (class 1259 OID 90872589)
-- Name: gkentity_transaction_failed; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gkentity_transaction_failed (
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
    original_entity_view bytea
);


ALTER TABLE public.gkentity_transaction_failed OWNER TO gkspire;

--
-- TOC entry 216 (class 1259 OID 90872595)
-- Name: gkentity_transaction_profile_pending; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE gkentity_transaction_profile_pending (
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
    entity_type character varying(64),
    failed_confirmation_text text,
    original_view bytea
);


ALTER TABLE public.gkentity_transaction_profile_pending OWNER TO gkspire;

--
-- TOC entry 223 (class 1259 OID 90872634)
-- Name: node_verification_data; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE node_verification_data (
    transaction_id character varying(255) NOT NULL,
    is_logged boolean,
    md_5hash character varying(255),
    member_number character varying(255),
    method character varying(255),
    request_id character varying(255),
    seek_time character varying(255),
    is_transmitted boolean,
    verification_data text
);


ALTER TABLE public.node_verification_data OWNER TO gkspire;

--
-- TOC entry 224 (class 1259 OID 90872640)
-- Name: pcds_1; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_1 (
    region text,
    region_hasc text,
    region_iso text,
    department text,
    department_hasc text,
    department_iso text,
    city text,
    city_hasc text,
    city_iso text
);


ALTER TABLE public.pcds_1 OWNER TO gkspire;

--
-- TOC entry 225 (class 1259 OID 90872646)
-- Name: pcds_branch_centers_org; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_branch_centers_org (
    city_hasc text,
    registration_center_name text,
    registration_center_code text
);


ALTER TABLE public.pcds_branch_centers_org OWNER TO gkspire;

--
-- TOC entry 226 (class 1259 OID 90872652)
-- Name: pcds_healthcenters; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_healthcenters (
    community_hasc character varying(32),
    facility_id character varying(32) NOT NULL,
    facility character varying(128),
    region character varying(32),
    department character varying(32),
    community character varying(32),
    otherdetails text,
    other_details text
);


ALTER TABLE public.pcds_healthcenters OWNER TO gkspire;

--
-- TOC entry 227 (class 1259 OID 90872658)
-- Name: pcds_schools; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcds_schools (
    community_hasc character varying(32),
    school_code character varying(32) NOT NULL,
    administrative_code character varying(32),
    school_name character varying(128),
    region character varying(32),
    department character varying(32),
    community character varying(32),
    otherdetails text,
    other_details text
);


ALTER TABLE public.pcds_schools OWNER TO gkspire;



--
-- TOC entry 241 (class 1259 OID 90872739)
-- Name: schools_final; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE schools_final (
    community_hasc character varying(16),
    school_code text NOT NULL,
    administrative_code text,
    school_name text,
    region character varying(64),
    department character varying(64),
    community character varying(64),
    org_region text,
    org_department text,
    org_community text
);


ALTER TABLE public.schools_final OWNER TO gkspire;

--
-- TOC entry 319 (class 1259 OID 90908475)
-- Name: sys_crd_card_sending_results; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_crd_card_sending_results (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    batch_size integer,
    cards_processed text,
    final_status character varying(255),
    finished timestamp without time zone,
    number_attempted integer,
    number_attempts integer,
    number_failed integer,
    number_no_response integer,
    number_serious_errors integer,
    number_successfull integer,
    session_initiator character varying(255),
    started timestamp without time zone
);


ALTER TABLE public.sys_crd_card_sending_results OWNER TO gkspire;

--
-- TOC entry 320 (class 1259 OID 90908483)
-- Name: sys_crd_cards_current; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_crd_cards_current (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    archived boolean,
    image_data bytea,
    confirmed_upload timestamp without time zone,
    last_changed_date timestamp without time zone,
    last_check_date timestamp without time zone,
    md5hash character varying(255),
    transaction_type character varying(255),
    replaced boolean,
    card_type character varying(8)
);


ALTER TABLE public.sys_crd_cards_current OWNER TO gkspire;

--
-- TOC entry 321 (class 1259 OID 90908491)
-- Name: sys_crd_cards_replaced; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_crd_cards_replaced (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    archived boolean,
    image_data bytea,
    confirmed_upload timestamp without time zone,
    last_changed_date timestamp without time zone,
    last_check_date timestamp without time zone,
    md5hash character varying(255),
    transaction_type character varying(255),
    replaced boolean,
    card_type character varying(8)
);


ALTER TABLE public.sys_crd_cards_replaced OWNER TO gkspire;

--
-- TOC entry 322 (class 1259 OID 90908499)
-- Name: sys_crd_exportedcard_responses; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_crd_exportedcard_responses (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    card_reference character varying(255),
    dismiss boolean,
    response text,
    result_status character varying(32),
    successful boolean
);


ALTER TABLE public.sys_crd_exportedcard_responses OWNER TO gkspire;

--
-- TOC entry 255 (class 1259 OID 90872811)
-- Name: sys_import_log_fatal; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_import_log_fatal (
    record_id character varying(64) NOT NULL,
    asoftimestamp timestamp without time zone,
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


ALTER TABLE public.sys_import_log_fatal OWNER TO gkspire;

--
-- TOC entry 256 (class 1259 OID 90872817)
-- Name: sys_import_log_reprocess; Type: TABLE; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE TABLE sys_import_log_reprocess (
    record_id character varying(64) NOT NULL,
    asoftime timestamp without time zone,
    created timestamp without time zone,
    ext character varying(64),
    groupid character varying(128),
    md5hash character varying(128),
    reprocessresult character varying(16),
    reprocesstime timestamp without time zone,
    status integer
);


ALTER TABLE public.sys_import_log_reprocess OWNER TO gkspire;


--
-- TOC entry 2447 (class 2606 OID 90872887)
-- Name: common_gkmedical_facility_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY common_gkmedical_facility
    ADD CONSTRAINT common_gkmedical_facility_pkey PRIMARY KEY (code);


--
-- TOC entry 2459 (class 2606 OID 90872911)
-- Name: det_member_reg_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_member_reg
    ADD CONSTRAINT det_member_reg_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2461 (class 2606 OID 90872913)
-- Name: det_pref_med_fac_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_pref_med_fac_ref
    ADD CONSTRAINT det_pref_med_fac_ref_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2463 (class 2606 OID 90872915)
-- Name: det_qualifications_list_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY det_qualifications_list
    ADD CONSTRAINT det_qualifications_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2465 (class 2606 OID 90872921)
-- Name: generic_entity_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY generic_entity_detail
    ADD CONSTRAINT generic_entity_detail_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2467 (class 2606 OID 90872941)
-- Name: gkentity_transaction_failed_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gkentity_transaction_failed
    ADD CONSTRAINT gkentity_transaction_failed_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2469 (class 2606 OID 90872943)
-- Name: gkentity_transaction_profile_pending_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY gkentity_transaction_profile_pending
    ADD CONSTRAINT gkentity_transaction_profile_pending_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2471 (class 2606 OID 90872961)
-- Name: node_verification_data_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY node_verification_data
    ADD CONSTRAINT node_verification_data_pkey PRIMARY KEY (transaction_id);





--
-- TOC entry 2456 (class 2606 OID 90872965)
-- Name: pcds_demarcation_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcds_demarcation
    ADD CONSTRAINT pcds_demarcation_pk PRIMARY KEY (community_hasc);


--
-- TOC entry 2475 (class 2606 OID 90872967)
-- Name: pcds_healthcenters_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcds_healthcenters
    ADD CONSTRAINT pcds_healthcenters_pk PRIMARY KEY (facility_id);


--
-- TOC entry 2479 (class 2606 OID 90872969)
-- Name: pcds_schools_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcds_schools
    ADD CONSTRAINT pcds_schools_pk PRIMARY KEY (school_code);


--
-- TOC entry 2488 (class 2606 OID 90872993)
-- Name: schools_final_pk; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY schools_final
    ADD CONSTRAINT schools_final_pk PRIMARY KEY (school_code);


--
-- TOC entry 2494 (class 2606 OID 90908482)
-- Name: sys_crd_card_sending_results_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_card_sending_results
    ADD CONSTRAINT sys_crd_card_sending_results_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2499 (class 2606 OID 90908490)
-- Name: sys_crd_cards_current_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_current
    ADD CONSTRAINT sys_crd_cards_current_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2511 (class 2606 OID 90908498)
-- Name: sys_crd_cards_replaced_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_replaced
    ADD CONSTRAINT sys_crd_cards_replaced_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2519 (class 2606 OID 90908506)
-- Name: sys_crd_exportedcard_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_exportedcard_responses
    ADD CONSTRAINT sys_crd_exportedcard_responses_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2490 (class 2606 OID 90873019)
-- Name: sys_import_log_fatal_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_import_log_fatal
    ADD CONSTRAINT sys_import_log_fatal_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2492 (class 2606 OID 90873023)
-- Name: sys_import_log_reprocess_pkey; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_import_log_reprocess
    ADD CONSTRAINT sys_import_log_reprocess_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2501 (class 2606 OID 90908513)
-- Name: uk_14ykipu90ed2ung0jhi1fgjsh; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_current
    ADD CONSTRAINT uk_14ykipu90ed2ung0jhi1fgjsh UNIQUE (md5hash);


--
-- TOC entry 2503 (class 2606 OID 90908517)
-- Name: uk_41h9l6d9unin5ofam0303nddg; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_current
    ADD CONSTRAINT uk_41h9l6d9unin5ofam0303nddg UNIQUE (gk_id, last_check_date);


--
-- TOC entry 2513 (class 2606 OID 90908523)
-- Name: uk_78ldhkj2vm4rthwgcl8bmopn0; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_replaced
    ADD CONSTRAINT uk_78ldhkj2vm4rthwgcl8bmopn0 UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2506 (class 2606 OID 90908511)
-- Name: uk_a9l42w46uvsdtorqnkhe1t4ke; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_current
    ADD CONSTRAINT uk_a9l42w46uvsdtorqnkhe1t4ke UNIQUE (gk_id);


--
-- TOC entry 2516 (class 2606 OID 90908521)
-- Name: uk_d3col40iq30k9ixw6k5x0gulj; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_replaced
    ADD CONSTRAINT uk_d3col40iq30k9ixw6k5x0gulj UNIQUE (md5hash);


--
-- TOC entry 2509 (class 2606 OID 90908515)
-- Name: uk_t5rr3utlmn4p51n7n82wrjyc0; Type: CONSTRAINT; Schema: public; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY sys_crd_cards_current
    ADD CONSTRAINT uk_t5rr3utlmn4p51n7n82wrjyc0 UNIQUE (gk_id, last_changed_date);



--
-- TOC entry 2457 (class 1259 OID 90873064)
-- Name: pcds_branch_centers_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_branch_centers_idx1 ON pcds_branch_centers USING btree (registration_center_code);


--
-- TOC entry 2448 (class 1259 OID 90873065)
-- Name: pcds_demarcation_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx1 ON pcds_demarcation USING btree (region_hasc);


--
-- TOC entry 2449 (class 1259 OID 90873066)
-- Name: pcds_demarcation_idx2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx2 ON pcds_demarcation USING btree (departmen_hasc);


--
-- TOC entry 2450 (class 1259 OID 90873067)
-- Name: pcds_demarcation_idx3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx3 ON pcds_demarcation USING btree (region);


--
-- TOC entry 2451 (class 1259 OID 90873068)
-- Name: pcds_demarcation_idx4; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx4 ON pcds_demarcation USING btree (department);


--
-- TOC entry 2452 (class 1259 OID 90873069)
-- Name: pcds_demarcation_idx5; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx5 ON pcds_demarcation USING btree (community);


--
-- TOC entry 2453 (class 1259 OID 90873070)
-- Name: pcds_demarcation_idx6; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx6 ON pcds_demarcation USING btree (community_type);


--
-- TOC entry 2454 (class 1259 OID 90873071)
-- Name: pcds_demarcation_idx7; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_demarcation_idx7 ON pcds_demarcation USING btree (departmen_hasc, community_type);


--
-- TOC entry 2472 (class 1259 OID 90873072)
-- Name: pcds_healthcenters_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_healthcenters_idx1 ON pcds_healthcenters USING btree (community_hasc);


--
-- TOC entry 2473 (class 1259 OID 90873073)
-- Name: pcds_healthcenters_idx2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_healthcenters_idx2 ON pcds_healthcenters USING btree (community_hasc, facility);


--
-- TOC entry 2476 (class 1259 OID 90873074)
-- Name: pcds_schools_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_schools_idx1 ON pcds_schools USING btree (community_hasc);


--
-- TOC entry 2477 (class 1259 OID 90873075)
-- Name: pcds_schools_idx2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_schools_idx2 ON pcds_schools USING btree (community_hasc, school_name);


--
-- TOC entry 2484 (class 1259 OID 90873079)
-- Name: schools_final_idx1; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX schools_final_idx1 ON schools_final USING btree (administrative_code);


--
-- TOC entry 2485 (class 1259 OID 90873080)
-- Name: schools_final_idx2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX schools_final_idx2 ON schools_final USING btree (community_hasc);


--
-- TOC entry 2486 (class 1259 OID 90873081)
-- Name: schools_final_idx3; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX schools_final_idx3 ON schools_final USING btree (school_name);


--
-- TOC entry 2495 (class 1259 OID 90908508)
-- Name: uk_4nv5dmy5mfaqc41s5p92jg29y; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_4nv5dmy5mfaqc41s5p92jg29y ON sys_crd_card_sending_results USING btree (final_status);


--
-- TOC entry 2496 (class 1259 OID 90908509)
-- Name: uk_667nb53b3njdgl5536g4329i7; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_667nb53b3njdgl5536g4329i7 ON sys_crd_card_sending_results USING btree (started);




--
-- TOC entry 2514 (class 1259 OID 90908524)
-- Name: uk_91ly76x3ex7jmpatp9dwh0d9g; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_91ly76x3ex7jmpatp9dwh0d9g ON sys_crd_cards_replaced USING btree (gk_id);


--
-- TOC entry 2504 (class 1259 OID 90908519)
-- Name: uk_937ljb6ycabh6u3qi607o1aav; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_937ljb6ycabh6u3qi607o1aav ON sys_crd_cards_current USING btree (archived, last_changed_date);


--
-- TOC entry 2497 (class 1259 OID 90908507)
-- Name: uk_au84t7lya6ukg60yqgub2m173; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_au84t7lya6ukg60yqgub2m173 ON sys_crd_card_sending_results USING btree (session_initiator);


--
-- TOC entry 2520 (class 1259 OID 90908526)
-- Name: uk_bf9h7y97uqbc95hfh4e249evx; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_bf9h7y97uqbc95hfh4e249evx ON sys_crd_exportedcard_responses USING btree (gk_id);




--
-- TOC entry 2521 (class 1259 OID 90908528)
-- Name: uk_bwtnqdwfsrsdqtoxbb6dcfnox; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_bwtnqdwfsrsdqtoxbb6dcfnox ON sys_crd_exportedcard_responses USING btree (created);


--
-- TOC entry 2507 (class 1259 OID 90908518)
-- Name: uk_g1jw3e5akv0siu40ssyu0su1b; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_g1jw3e5akv0siu40ssyu0su1b ON sys_crd_cards_current USING btree (created);




--
-- TOC entry 2517 (class 1259 OID 90908525)
-- Name: uk_nmrh3ouf9bcagd9cy06yprlo2; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_nmrh3ouf9bcagd9cy06yprlo2 ON sys_crd_cards_replaced USING btree (created);


--
-- TOC entry 2522 (class 1259 OID 90908527)
-- Name: uk_pyw6lg4i9wwdbm3lid8aeowy7; Type: INDEX; Schema: public; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_pyw6lg4i9wwdbm3lid8aeowy7 ON sys_crd_exportedcard_responses USING btree (card_reference);


-- Completed on 2021-02-19 09:57:43

--
-- PostgreSQL database dump complete
--

