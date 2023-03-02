
--
-- TOC entry 9 (class 2615 OID 90873163)
-- Name: license; Type: SCHEMA; Schema: -; Owner: gkspire
--

CREATE SCHEMA license;


ALTER SCHEMA license OWNER TO gkspire;

--
-- TOC entry 11 (class 2615 OID 90900266)
-- Name: pcdscards; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pcdscards;


ALTER SCHEMA pcdscards OWNER TO postgres;

--
-- TOC entry 2797 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA pcdscards; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pcdscards IS 'card management';


--
-- TOC entry 6 (class 2615 OID 90872371)
-- Name: pcdsimport; Type: SCHEMA; Schema: -; Owner: gkspire
--

CREATE SCHEMA pcdsimport;


ALTER SCHEMA pcdsimport OWNER TO gkspire;

--
-- TOC entry 10 (class 2615 OID 90873164)
-- Name: vehicle; Type: SCHEMA; Schema: -; Owner: gkspire
--

CREATE SCHEMA vehicle;


ALTER SCHEMA vehicle OWNER TO gkspire;



--
-- TOC entry 267 (class 1259 OID 90873165)
-- Name: ent_license_addresses; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_addresses (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    addresses text,
    entity_type character varying(255)
);


ALTER TABLE license.ent_license_addresses OWNER TO gkspire;

--
-- TOC entry 268 (class 1259 OID 90873171)
-- Name: ent_license_document_list; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_document_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    documents text,
    entity_type character varying(255)
);


ALTER TABLE license.ent_license_document_list OWNER TO gkspire;

--
-- TOC entry 269 (class 1259 OID 90873177)
-- Name: ent_license_failed_transactions; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_failed_transactions (
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


ALTER TABLE license.ent_license_failed_transactions OWNER TO gkspire;

--
-- TOC entry 270 (class 1259 OID 90873183)
-- Name: ent_license_grouppmt; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_grouppmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    pmt text,
    group_id character varying(255),
    pmt_version character varying(255),
    screening text,
    survey_header text
);


ALTER TABLE license.ent_license_grouppmt OWNER TO gkspire;

--
-- TOC entry 271 (class 1259 OID 90873189)
-- Name: ent_license_pending_transactions; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_pending_transactions (
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


ALTER TABLE license.ent_license_pending_transactions OWNER TO gkspire;

--
-- TOC entry 272 (class 1259 OID 90873195)
-- Name: ent_license_registration; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_registration (
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


ALTER TABLE license.ent_license_registration OWNER TO gkspire;

--
-- TOC entry 273 (class 1259 OID 90873201)
-- Name: ent_license_relation; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_relation (
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


ALTER TABLE license.ent_license_relation OWNER TO gkspire;

--
-- TOC entry 274 (class 1259 OID 90873204)
-- Name: ent_license_search_log; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_search_log (
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


ALTER TABLE license.ent_license_search_log OWNER TO gkspire;

--
-- TOC entry 275 (class 1259 OID 90873210)
-- Name: ent_license_single_document; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_single_document (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    document text
);


ALTER TABLE license.ent_license_single_document OWNER TO gkspire;

--
-- TOC entry 276 (class 1259 OID 90873216)
-- Name: ent_license_task_refs; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_license_task_refs (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    task_refs text
);


ALTER TABLE license.ent_license_task_refs OWNER TO gkspire;

--
-- TOC entry 277 (class 1259 OID 90873222)
-- Name: ent_licensepmt; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_licensepmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    details text,
    pmt text,
    entity_status character varying(32),
    ext_entityid character varying(128),
    member_of character varying(255),
    other_details text,
    pmt_version character varying(255)
);


ALTER TABLE license.ent_licensepmt OWNER TO gkspire;

--
-- TOC entry 278 (class 1259 OID 90873228)
-- Name: ent_personpmt; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_personpmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    company_name character varying(256),
    date_of_birth date,
    entity_status character varying(32),
    entity_type character varying(64),
    firstnames character varying(128),
    natural_person boolean,
    other_details text,
    pmt text,
    person_role character varying(64),
    personuuid character varying(255),
    pmt_version character varying(255),
    presence_status character varying(64),
    registration_source character varying(256),
    registered boolean,
    surname character varying(128)
);


ALTER TABLE license.ent_personpmt OWNER TO gkspire;

--
-- TOC entry 279 (class 1259 OID 90873234)
-- Name: ent_taskspmt; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.ent_taskspmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    actor_pmt text,
    date_executed date,
    pmt text,
    entity_status character varying(32),
    other_entityid character varying(128),
    other_entitytype character varying(128),
    other_details text,
    parent_entity character varying(255),
    pmt_version character varying(255),
    task_type character varying(64)
);


ALTER TABLE license.ent_taskspmt OWNER TO gkspire;

--
-- TOC entry 280 (class 1259 OID 90873240)
-- Name: gk_license; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license (
    gk_id character varying(64) NOT NULL,
    addresses_ref character varying(64),
    created timestamp without time zone,
    document_headers_ref character varying(64),
    entity_profile_ref character varying(64),
    group_membership_ref character varying(64),
    person_ref character varying(64),
    primary_group_ref character varying(64),
    registration_profile_ref character varying(64),
    task_ref character varying(64),
    updated timestamp without time zone,
    version_ integer,
    entity_type character varying(255)
);


ALTER TABLE license.gk_license OWNER TO gkspire;

--
-- TOC entry 281 (class 1259 OID 90873246)
-- Name: gk_license_blacklist; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license_blacklist (
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


ALTER TABLE license.gk_license_blacklist OWNER TO gkspire;

--
-- TOC entry 282 (class 1259 OID 90873252)
-- Name: gk_license_detail; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license_detail (
    ext character varying(64) NOT NULL,
    detailed_references text,
    ext_entityid character varying(64),
    version_ integer,
    gk_entity character varying(64) NOT NULL
);


ALTER TABLE license.gk_license_detail OWNER TO gkspire;

--
-- TOC entry 283 (class 1259 OID 90873258)
-- Name: gk_license_detail_history; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license_detail_history (
    ext character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer,
    gk_entity character varying(64) NOT NULL
);


ALTER TABLE license.gk_license_detail_history OWNER TO gkspire;

--
-- TOC entry 284 (class 1259 OID 90873264)
-- Name: gk_license_history; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license_history (
    gk_id character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer
);


ALTER TABLE license.gk_license_history OWNER TO gkspire;

--
-- TOC entry 285 (class 1259 OID 90873270)
-- Name: gk_license_safelist; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.gk_license_safelist (
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


ALTER TABLE license.gk_license_safelist OWNER TO gkspire;

--
-- TOC entry 286 (class 1259 OID 90873276)
-- Name: license_transaction_confirmation; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.license_transaction_confirmation (
    transaction_id character varying(255) NOT NULL
);


ALTER TABLE license.license_transaction_confirmation OWNER TO gkspire;

--
-- TOC entry 287 (class 1259 OID 90873279)
-- Name: license_transaction_profile; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.license_transaction_profile (
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


ALTER TABLE license.license_transaction_profile OWNER TO gkspire;

--
-- TOC entry 288 (class 1259 OID 90873285)
-- Name: reindex_groups; Type: TABLE; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE TABLE license.reindex_groups (
    group_id character varying(255) NOT NULL,
    processor integer
);


ALTER TABLE license.reindex_groups OWNER TO gkspire;



--
-- TOC entry 312 (class 1259 OID 90900267)
-- Name: pcds_card_sending_results; Type: TABLE; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdscards.pcds_card_sending_results (
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


ALTER TABLE pcdscards.pcds_card_sending_results OWNER TO gkspire;

--
-- TOC entry 313 (class 1259 OID 90900273)
-- Name: pcds_cards_current; Type: TABLE; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdscards.pcds_cards_current (
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
    md5hash character varying(255),
    transaction_type character varying(255),
    replaced boolean,
    last_check_date timestamp without time zone
);


ALTER TABLE pcdscards.pcds_cards_current OWNER TO gkspire;

--
-- TOC entry 314 (class 1259 OID 90900279)
-- Name: pcds_cards_replaced; Type: TABLE; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdscards.pcds_cards_replaced (
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
    md5hash character varying(255),
    transaction_type character varying(255),
    replaced boolean,
    last_check_date timestamp without time zone
);


ALTER TABLE pcdscards.pcds_cards_replaced OWNER TO gkspire;

--
-- TOC entry 315 (class 1259 OID 90900285)
-- Name: pcds_exportedcard_responses; Type: TABLE; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdscards.pcds_exportedcard_responses (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    ext character varying(64),
    response text,
    successful boolean,
    card_reference character varying(255),
    dismiss boolean,
    result_status character varying(32)
);


ALTER TABLE pcdscards.pcds_exportedcard_responses OWNER TO gkspire;

--
-- TOC entry 316 (class 1259 OID 90900291)
-- Name: pcds_last_transaction; Type: VIEW; Schema: pcdscards; Owner: gkspire
--

CREATE VIEW pcdscards.pcds_last_transaction AS
 SELECT p.gk_id,
    to_timestamp(((s_l.version / 1000))::double precision) AS last_activity,
    p_e.current_status,
    p_b.processed,
    card.last_changed_date,
    card.md5hash,
    card.last_check_date
   FROM (((((public.gk_person p
     JOIN public.prim_eligibility_profile p_e ON (((p.eligibility_profile_ref)::text = (p_e.record_id)::text)))
     JOIN public.prim_biometric_profile p_b ON (((p.biometric_profile_ref)::text = (p_b.record_id)::text)))
     JOIN public.sys_search_log s_l ON ((((p.gk_id)::text = (s_l.id)::text) AND (NOT s_l.isgroup))))
     JOIN public.prim_eligibility_profile el ON (((p.eligibility_profile_ref)::text = (el.record_id)::text)))
     LEFT JOIN pcdscards.pcds_cards_current card ON (((p.gk_id)::text = (card.gk_id)::text)));


ALTER TABLE pcdscards.pcds_last_transaction OWNER TO gkspire;

--
-- TOC entry 317 (class 1259 OID 90900296)
-- Name: temp_pcds_cards_current; Type: TABLE; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdscards.temp_pcds_cards_current (
    record_id character varying(64),
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
    md5hash character varying(255),
    transaction_type character varying(255),
    replaced boolean,
    last_check_date timestamp without time zone
);


ALTER TABLE pcdscards.temp_pcds_cards_current OWNER TO gkspire;



--
-- TOC entry 175 (class 1259 OID 90872373)
-- Name: pcds_import_log_groups; Type: TABLE; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdsimport.pcds_import_log_groups (
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
    version_ integer,
    end_loading bigint NOT NULL,
    error_text character varying(255),
    loading_time_biographics bigint NOT NULL,
    loading_time_biometrics bigint NOT NULL,
    loading_time_facial bigint NOT NULL,
    number_threads_used integer NOT NULL,
    processing_timespire bigint NOT NULL,
    start_loading bigint NOT NULL,
    subjects_attempted integer NOT NULL,
    subjects_planned integer NOT NULL,
    success boolean NOT NULL,
    total_failed integer NOT NULL,
    total_fatal integer NOT NULL,
    total_success integer NOT NULL,
    virtual_person character varying(64)
);


ALTER TABLE pcdsimport.pcds_import_log_groups OWNER TO gkspire;

--
-- TOC entry 176 (class 1259 OID 90872379)
-- Name: pcds_import_log_persons; Type: TABLE; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

CREATE TABLE pcdsimport.pcds_import_log_persons (
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
    version_ integer,
    personuuid character varying(64)
);


ALTER TABLE pcdsimport.pcds_import_log_persons OWNER TO gkspire;


--
-- TOC entry 289 (class 1259 OID 90873288)
-- Name: ent_personpmt; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_personpmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    company_name character varying(256),
    date_of_birth date,
    entity_status character varying(32),
    entity_type character varying(64),
    firstnames character varying(128),
    natural_person boolean,
    other_details text,
    pmt text,
    person_role character varying(64),
    personuuid character varying(255),
    pmt_version character varying(255),
    presence_status character varying(64),
    registration_source character varying(256),
    registered boolean,
    surname character varying(128)
);


ALTER TABLE vehicle.ent_personpmt OWNER TO gkspire;

--
-- TOC entry 290 (class 1259 OID 90873294)
-- Name: ent_taskspmt; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_taskspmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    actor_pmt text,
    date_executed date,
    pmt text,
    entity_status character varying(32),
    other_entityid character varying(128),
    other_entitytype character varying(128),
    other_details text,
    parent_entity character varying(255),
    pmt_version character varying(255),
    task_type character varying(64)
);


ALTER TABLE vehicle.ent_taskspmt OWNER TO gkspire;

--
-- TOC entry 291 (class 1259 OID 90873300)
-- Name: ent_vehicle_addresses; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_addresses (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    addresses text,
    entity_type character varying(255)
);


ALTER TABLE vehicle.ent_vehicle_addresses OWNER TO gkspire;

--
-- TOC entry 292 (class 1259 OID 90873306)
-- Name: ent_vehicle_document_list; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_document_list (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    documents text,
    entity_type character varying(255)
);


ALTER TABLE vehicle.ent_vehicle_document_list OWNER TO gkspire;

--
-- TOC entry 293 (class 1259 OID 90873312)
-- Name: ent_vehicle_failed_transactions; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_failed_transactions (
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


ALTER TABLE vehicle.ent_vehicle_failed_transactions OWNER TO gkspire;

--
-- TOC entry 294 (class 1259 OID 90873318)
-- Name: ent_vehicle_grouppmt; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_grouppmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    pmt text,
    group_id character varying(255),
    pmt_version character varying(255),
    screening text,
    survey_header text
);


ALTER TABLE vehicle.ent_vehicle_grouppmt OWNER TO gkspire;

--
-- TOC entry 295 (class 1259 OID 90873324)
-- Name: ent_vehicle_pending_transactions; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_pending_transactions (
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


ALTER TABLE vehicle.ent_vehicle_pending_transactions OWNER TO gkspire;

--
-- TOC entry 296 (class 1259 OID 90873330)
-- Name: ent_vehicle_registration; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_registration (
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


ALTER TABLE vehicle.ent_vehicle_registration OWNER TO gkspire;

--
-- TOC entry 297 (class 1259 OID 90873336)
-- Name: ent_vehicle_relation; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_relation (
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


ALTER TABLE vehicle.ent_vehicle_relation OWNER TO gkspire;

--
-- TOC entry 298 (class 1259 OID 90873339)
-- Name: ent_vehicle_search_log; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_search_log (
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


ALTER TABLE vehicle.ent_vehicle_search_log OWNER TO gkspire;

--
-- TOC entry 299 (class 1259 OID 90873345)
-- Name: ent_vehicle_single_document; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_single_document (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    md_5hash character varying(255),
    document text
);


ALTER TABLE vehicle.ent_vehicle_single_document OWNER TO gkspire;

--
-- TOC entry 300 (class 1259 OID 90873351)
-- Name: ent_vehicle_task_refs; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehicle_task_refs (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    task_refs text
);


ALTER TABLE vehicle.ent_vehicle_task_refs OWNER TO gkspire;

--
-- TOC entry 301 (class 1259 OID 90873357)
-- Name: ent_vehiclepmt; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.ent_vehiclepmt (
    record_id character varying(64) NOT NULL,
    created timestamp without time zone,
    created_by character varying(64),
    gk_id character varying(64),
    record_status character varying(16),
    replaces character varying(64),
    version_ integer,
    date_first_registered date,
    details text,
    pmt text,
    entity_status character varying(32),
    ext_entityid character varying(128),
    member_of character varying(255),
    other_details text,
    pmt_version character varying(255)
);


ALTER TABLE vehicle.ent_vehiclepmt OWNER TO gkspire;

--
-- TOC entry 302 (class 1259 OID 90873363)
-- Name: gk_vehicle; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle (
    gk_id character varying(64) NOT NULL,
    addresses_ref character varying(64),
    created timestamp without time zone,
    document_headers_ref character varying(64),
    entity_profile_ref character varying(64),
    group_membership_ref character varying(64),
    person_ref character varying(64),
    primary_group_ref character varying(64),
    registration_profile_ref character varying(64),
    task_ref character varying(64),
    updated timestamp without time zone,
    version_ integer,
    entity_type character varying(255)
);


ALTER TABLE vehicle.gk_vehicle OWNER TO gkspire;

--
-- TOC entry 303 (class 1259 OID 90873369)
-- Name: gk_vehicle_blacklist; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle_blacklist (
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


ALTER TABLE vehicle.gk_vehicle_blacklist OWNER TO gkspire;

--
-- TOC entry 304 (class 1259 OID 90873375)
-- Name: gk_vehicle_detail; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle_detail (
    ext character varying(64) NOT NULL,
    detailed_references text,
    ext_entityid character varying(64),
    version_ integer,
    gk_entity character varying(64) NOT NULL
);


ALTER TABLE vehicle.gk_vehicle_detail OWNER TO gkspire;

--
-- TOC entry 305 (class 1259 OID 90873381)
-- Name: gk_vehicle_detail_history; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle_detail_history (
    ext character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer,
    gk_entity character varying(64) NOT NULL
);


ALTER TABLE vehicle.gk_vehicle_detail_history OWNER TO gkspire;

--
-- TOC entry 306 (class 1259 OID 90873387)
-- Name: gk_vehicle_history; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle_history (
    gk_id character varying(64) NOT NULL,
    last_ext character varying(64),
    last_transaction character varying(64),
    last_transaction_date timestamp without time zone,
    update_log_history text,
    version_ integer
);


ALTER TABLE vehicle.gk_vehicle_history OWNER TO gkspire;

--
-- TOC entry 307 (class 1259 OID 90873393)
-- Name: gk_vehicle_safelist; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.gk_vehicle_safelist (
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


ALTER TABLE vehicle.gk_vehicle_safelist OWNER TO gkspire;

--
-- TOC entry 308 (class 1259 OID 90873399)
-- Name: reindex_groups; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.reindex_groups (
    group_id character varying(255) NOT NULL,
    processor integer
);


ALTER TABLE vehicle.reindex_groups OWNER TO gkspire;

--
-- TOC entry 309 (class 1259 OID 90873402)
-- Name: vehicle_transaction_confirmation; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.vehicle_transaction_confirmation (
    transaction_id character varying(255) NOT NULL
);


ALTER TABLE vehicle.vehicle_transaction_confirmation OWNER TO gkspire;

--
-- TOC entry 310 (class 1259 OID 90873405)
-- Name: vehicle_transaction_profile; Type: TABLE; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE TABLE vehicle.vehicle_transaction_profile (
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


ALTER TABLE vehicle.vehicle_transaction_profile OWNER TO gkspire;



--
-- TOC entry 2500 (class 2606 OID 90873412)
-- Name: ent_license_addresses_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_addresses
    ADD CONSTRAINT ent_license_addresses_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2502 (class 2606 OID 90873414)
-- Name: ent_license_document_list_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_document_list
    ADD CONSTRAINT ent_license_document_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2504 (class 2606 OID 90873416)
-- Name: ent_license_failed_transactions_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_failed_transactions
    ADD CONSTRAINT ent_license_failed_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2506 (class 2606 OID 90873418)
-- Name: ent_license_grouppmt_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_grouppmt
    ADD CONSTRAINT ent_license_grouppmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2508 (class 2606 OID 90873420)
-- Name: ent_license_pending_transactions_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_pending_transactions
    ADD CONSTRAINT ent_license_pending_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2515 (class 2606 OID 90873422)
-- Name: ent_license_registration_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_registration
    ADD CONSTRAINT ent_license_registration_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2517 (class 2606 OID 90873424)
-- Name: ent_license_relation_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_relation
    ADD CONSTRAINT ent_license_relation_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2519 (class 2606 OID 90873426)
-- Name: ent_license_search_log_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_search_log
    ADD CONSTRAINT ent_license_search_log_pkey PRIMARY KEY (ext, isgroup, id, summaryname);


--
-- TOC entry 2521 (class 2606 OID 90873428)
-- Name: ent_license_single_document_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_single_document
    ADD CONSTRAINT ent_license_single_document_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2523 (class 2606 OID 90873430)
-- Name: ent_license_task_refs_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_task_refs
    ADD CONSTRAINT ent_license_task_refs_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2525 (class 2606 OID 90873432)
-- Name: ent_licensepmt_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_licensepmt
    ADD CONSTRAINT ent_licensepmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2527 (class 2606 OID 90873434)
-- Name: ent_personpmt_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_personpmt
    ADD CONSTRAINT ent_personpmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2529 (class 2606 OID 90873436)
-- Name: ent_taskspmt_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_taskspmt
    ADD CONSTRAINT ent_taskspmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2533 (class 2606 OID 90873438)
-- Name: gk_license_blacklist_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_blacklist
    ADD CONSTRAINT gk_license_blacklist_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2539 (class 2606 OID 90873440)
-- Name: gk_license_detail_history_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_detail_history
    ADD CONSTRAINT gk_license_detail_history_pkey PRIMARY KEY (ext, gk_entity);


--
-- TOC entry 2535 (class 2606 OID 90873442)
-- Name: gk_license_detail_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_detail
    ADD CONSTRAINT gk_license_detail_pkey PRIMARY KEY (ext, gk_entity);


--
-- TOC entry 2541 (class 2606 OID 90873444)
-- Name: gk_license_history_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_history
    ADD CONSTRAINT gk_license_history_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2531 (class 2606 OID 90873446)
-- Name: gk_license_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license
    ADD CONSTRAINT gk_license_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2543 (class 2606 OID 90873448)
-- Name: gk_license_safelist_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_safelist
    ADD CONSTRAINT gk_license_safelist_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2545 (class 2606 OID 90873450)
-- Name: license_transaction_confirmation_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.license_transaction_confirmation
    ADD CONSTRAINT license_transaction_confirmation_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2547 (class 2606 OID 90873452)
-- Name: license_transaction_profile_pkey; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.license_transaction_profile
    ADD CONSTRAINT license_transaction_profile_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2549 (class 2606 OID 90873454)
-- Name: reindx_pk; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.reindex_groups
    ADD CONSTRAINT reindx_pk PRIMARY KEY (group_id);


--
-- TOC entry 2511 (class 2606 OID 90873456)
-- Name: uk_ffkpnlrqhlm4xmw7msceqmovs; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.ent_license_pending_transactions
    ADD CONSTRAINT uk_ffkpnlrqhlm4xmw7msceqmovs UNIQUE (entity_type, ext, member_id);


--
-- TOC entry 2537 (class 2606 OID 90873458)
-- Name: uk_ltid56esgmmq44g6hg11096ah; Type: CONSTRAINT; Schema: license; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY license.gk_license_detail
    ADD CONSTRAINT uk_ltid56esgmmq44g6hg11096ah UNIQUE (ext, ext_entityid);




--
-- TOC entry 2602 (class 2606 OID 90900303)
-- Name: pcds_card_sending_results_pkey; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_card_sending_results
    ADD CONSTRAINT pcds_card_sending_results_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2613 (class 2606 OID 90900305)
-- Name: pcds_cards_current_pkey; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT pcds_cards_current_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2635 (class 2606 OID 90900307)
-- Name: pcds_cards_replaced_idx1; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT pcds_cards_replaced_idx1 UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2637 (class 2606 OID 90900309)
-- Name: pcds_cards_replaced_idx2; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT pcds_cards_replaced_idx2 UNIQUE (md5hash);


--
-- TOC entry 2641 (class 2606 OID 90900311)
-- Name: pcds_cards_replaced_pkey; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT pcds_cards_replaced_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2658 (class 2606 OID 90900313)
-- Name: pcds_exportedcard_responses_pkey; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_exportedcard_responses
    ADD CONSTRAINT pcds_exportedcard_responses_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2615 (class 2606 OID 90900315)
-- Name: uk_27b6o24ayq50lpent7iwhfdw2; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_27b6o24ayq50lpent7iwhfdw2 UNIQUE (md5hash);


--
-- TOC entry 2617 (class 2606 OID 90900317)
-- Name: uk_2l6x47i423f5dxevj4qf7llud; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_2l6x47i423f5dxevj4qf7llud UNIQUE (gk_id);


--
-- TOC entry 2645 (class 2606 OID 90900360)
-- Name: uk_2q8et7ka71ssd6rr77a9p8u47; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT uk_2q8et7ka71ssd6rr77a9p8u47 UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2619 (class 2606 OID 90900354)
-- Name: uk_345o15gxok1k9yld3dy7mf5wo; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_345o15gxok1k9yld3dy7mf5wo UNIQUE (gk_id, last_check_date);


--
-- TOC entry 2621 (class 2606 OID 90900352)
-- Name: uk_3sj8mj1mf4adco9we5ae88y0h; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_3sj8mj1mf4adco9we5ae88y0h UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2625 (class 2606 OID 90900350)
-- Name: uk_a9f9nptqpech9dndyf4v835fc; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_a9f9nptqpech9dndyf4v835fc UNIQUE (md5hash);


--
-- TOC entry 2627 (class 2606 OID 90900319)
-- Name: uk_ea1fbs4oyxurry4eoknk22jvi; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_ea1fbs4oyxurry4eoknk22jvi UNIQUE (gk_id, last_check_date);


--
-- TOC entry 2647 (class 2606 OID 90900321)
-- Name: uk_ei8yy6bww0p9bco8ktg2upvgi; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT uk_ei8yy6bww0p9bco8ktg2upvgi UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2631 (class 2606 OID 90900323)
-- Name: uk_ljy7akeykl6fdrhxwsa14thhw; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_ljy7akeykl6fdrhxwsa14thhw UNIQUE (gk_id, last_changed_date);


--
-- TOC entry 2651 (class 2606 OID 90900325)
-- Name: uk_nfdwbg75buerlg2yk1vkh17ta; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT uk_nfdwbg75buerlg2yk1vkh17ta UNIQUE (md5hash);


--
-- TOC entry 2633 (class 2606 OID 90900348)
-- Name: uk_p4wwaaiqqd9igmymm7wbvj80p; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_current
    ADD CONSTRAINT uk_p4wwaaiqqd9igmymm7wbvj80p UNIQUE (gk_id);


--
-- TOC entry 2653 (class 2606 OID 90900358)
-- Name: uk_sw59nf84riojm73u1iypqvigq; Type: CONSTRAINT; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdscards.pcds_cards_replaced
    ADD CONSTRAINT uk_sw59nf84riojm73u1iypqvigq UNIQUE (md5hash);




--
-- TOC entry 2493 (class 2606 OID 90872875)
-- Name: pcds_import_log_groups_pkey; Type: CONSTRAINT; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdsimport.pcds_import_log_groups
    ADD CONSTRAINT pcds_import_log_groups_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2496 (class 2606 OID 90872877)
-- Name: pcds_import_log_persons_pkey; Type: CONSTRAINT; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY pcdsimport.pcds_import_log_persons
    ADD CONSTRAINT pcds_import_log_persons_pkey PRIMARY KEY (record_id);




--
-- TOC entry 2551 (class 2606 OID 90873460)
-- Name: ent_personpmt_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_personpmt
    ADD CONSTRAINT ent_personpmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2553 (class 2606 OID 90873462)
-- Name: ent_taskspmt_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_taskspmt
    ADD CONSTRAINT ent_taskspmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2555 (class 2606 OID 90873464)
-- Name: ent_vehicle_addresses_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_addresses
    ADD CONSTRAINT ent_vehicle_addresses_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2557 (class 2606 OID 90873466)
-- Name: ent_vehicle_document_list_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_document_list
    ADD CONSTRAINT ent_vehicle_document_list_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2559 (class 2606 OID 90873468)
-- Name: ent_vehicle_failed_transactions_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_failed_transactions
    ADD CONSTRAINT ent_vehicle_failed_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2561 (class 2606 OID 90873470)
-- Name: ent_vehicle_grouppmt_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_grouppmt
    ADD CONSTRAINT ent_vehicle_grouppmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2563 (class 2606 OID 90873472)
-- Name: ent_vehicle_pending_transactions_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_pending_transactions
    ADD CONSTRAINT ent_vehicle_pending_transactions_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2570 (class 2606 OID 90873474)
-- Name: ent_vehicle_registration_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_registration
    ADD CONSTRAINT ent_vehicle_registration_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2572 (class 2606 OID 90873476)
-- Name: ent_vehicle_relation_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_relation
    ADD CONSTRAINT ent_vehicle_relation_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2574 (class 2606 OID 90873478)
-- Name: ent_vehicle_search_log_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_search_log
    ADD CONSTRAINT ent_vehicle_search_log_pkey PRIMARY KEY (ext, isgroup, id, summaryname);


--
-- TOC entry 2576 (class 2606 OID 90873480)
-- Name: ent_vehicle_single_document_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_single_document
    ADD CONSTRAINT ent_vehicle_single_document_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2578 (class 2606 OID 90873482)
-- Name: ent_vehicle_task_refs_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_task_refs
    ADD CONSTRAINT ent_vehicle_task_refs_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2580 (class 2606 OID 90873484)
-- Name: ent_vehiclepmt_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehiclepmt
    ADD CONSTRAINT ent_vehiclepmt_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2584 (class 2606 OID 90873486)
-- Name: gk_vehicle_blacklist_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_blacklist
    ADD CONSTRAINT gk_vehicle_blacklist_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2590 (class 2606 OID 90873488)
-- Name: gk_vehicle_detail_history_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_detail_history
    ADD CONSTRAINT gk_vehicle_detail_history_pkey PRIMARY KEY (ext, gk_entity);


--
-- TOC entry 2586 (class 2606 OID 90873490)
-- Name: gk_vehicle_detail_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_detail
    ADD CONSTRAINT gk_vehicle_detail_pkey PRIMARY KEY (ext, gk_entity);


--
-- TOC entry 2592 (class 2606 OID 90873492)
-- Name: gk_vehicle_history_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_history
    ADD CONSTRAINT gk_vehicle_history_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2582 (class 2606 OID 90873494)
-- Name: gk_vehicle_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle
    ADD CONSTRAINT gk_vehicle_pkey PRIMARY KEY (gk_id);


--
-- TOC entry 2594 (class 2606 OID 90873496)
-- Name: gk_vehicle_safelist_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_safelist
    ADD CONSTRAINT gk_vehicle_safelist_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2596 (class 2606 OID 90873498)
-- Name: reindx_pk; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.reindex_groups
    ADD CONSTRAINT reindx_pk PRIMARY KEY (group_id);


--
-- TOC entry 2565 (class 2606 OID 90873500)
-- Name: uk_fmpehl554cqsyftsueocb78ul; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.ent_vehicle_pending_transactions
    ADD CONSTRAINT uk_fmpehl554cqsyftsueocb78ul UNIQUE (entity_type, ext, member_id);


--
-- TOC entry 2588 (class 2606 OID 90873502)
-- Name: uk_mxuy6mg3hgmy89c9ro4gexddd; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.gk_vehicle_detail
    ADD CONSTRAINT uk_mxuy6mg3hgmy89c9ro4gexddd UNIQUE (ext, ext_entityid);


--
-- TOC entry 2598 (class 2606 OID 90873504)
-- Name: vehicle_transaction_confirmation_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.vehicle_transaction_confirmation
    ADD CONSTRAINT vehicle_transaction_confirmation_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2600 (class 2606 OID 90873506)
-- Name: vehicle_transaction_profile_pkey; Type: CONSTRAINT; Schema: vehicle; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY vehicle.vehicle_transaction_profile
    ADD CONSTRAINT vehicle_transaction_profile_pkey PRIMARY KEY (record_id);




--
-- TOC entry 2509 (class 1259 OID 90873507)
-- Name: uk_amd9u3gdlk2m45qxmilgttaou; Type: INDEX; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_amd9u3gdlk2m45qxmilgttaou ON license.ent_license_pending_transactions USING btree (entity_type);


--
-- TOC entry 2512 (class 1259 OID 90873508)
-- Name: uk_mnncag6t0209a84kx26dygjkv; Type: INDEX; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_mnncag6t0209a84kx26dygjkv ON license.ent_license_pending_transactions USING btree (gk_id);


--
-- TOC entry 2513 (class 1259 OID 90873509)
-- Name: uk_nuc2f6gca4chbb7i23r27bd6l; Type: INDEX; Schema: license; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_nuc2f6gca4chbb7i23r27bd6l ON license.ent_license_pending_transactions USING btree (transaction_date);




--
-- TOC entry 2609 (class 1259 OID 90900326)
-- Name: pcds_cards_current_idx10; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_cards_current_idx10 ON pcdscards.pcds_cards_current USING btree (last_changed_date NULLS FIRST);


--
-- TOC entry 2610 (class 1259 OID 90900327)
-- Name: pcds_cards_current_idx4; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_cards_current_idx4 ON pcdscards.pcds_cards_current USING btree (created);


--
-- TOC entry 2611 (class 1259 OID 90900328)
-- Name: pcds_cards_current_idx5; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_cards_current_idx5 ON pcdscards.pcds_cards_current USING btree (archived, last_changed_date);


--
-- TOC entry 2638 (class 1259 OID 90900329)
-- Name: pcds_cards_replaced_idx3; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_cards_replaced_idx3 ON pcdscards.pcds_cards_replaced USING btree (created);


--
-- TOC entry 2639 (class 1259 OID 90900330)
-- Name: pcds_cards_replaced_idx4; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_cards_replaced_idx4 ON pcdscards.pcds_cards_replaced USING btree (gk_id);


--
-- TOC entry 2654 (class 1259 OID 90900331)
-- Name: pcds_exportedcard_responses_idx1; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_exportedcard_responses_idx1 ON pcdscards.pcds_exportedcard_responses USING btree (card_reference);


--
-- TOC entry 2655 (class 1259 OID 90900332)
-- Name: pcds_exportedcard_responses_idx2; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_exportedcard_responses_idx2 ON pcdscards.pcds_exportedcard_responses USING btree (gk_id);


--
-- TOC entry 2656 (class 1259 OID 90900333)
-- Name: pcds_exportedcard_responses_idx3; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX pcds_exportedcard_responses_idx3 ON pcdscards.pcds_exportedcard_responses USING btree (created);


--
-- TOC entry 2642 (class 1259 OID 90900334)
-- Name: uk_1b9g3ah1tnauybqms14omj08i; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_1b9g3ah1tnauybqms14omj08i ON pcdscards.pcds_cards_replaced USING btree (created);


--
-- TOC entry 2603 (class 1259 OID 90900335)
-- Name: uk_1bjnyu2qqvxkwftl9lreavg1; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_1bjnyu2qqvxkwftl9lreavg1 ON pcdscards.pcds_card_sending_results USING btree (final_status);


--
-- TOC entry 2643 (class 1259 OID 90900336)
-- Name: uk_1o9moksh9kh2cmll7vctaj9wi; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_1o9moksh9kh2cmll7vctaj9wi ON pcdscards.pcds_cards_replaced USING btree (gk_id);


--
-- TOC entry 2604 (class 1259 OID 90900346)
-- Name: uk_3ghfh4sg53vdte68sxxdt082g; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_3ghfh4sg53vdte68sxxdt082g ON pcdscards.pcds_card_sending_results USING btree (started);


--
-- TOC entry 2622 (class 1259 OID 90900355)
-- Name: uk_7xibo822peul474l27qw8j5cl; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_7xibo822peul474l27qw8j5cl ON pcdscards.pcds_cards_current USING btree (created);


--
-- TOC entry 2623 (class 1259 OID 90900337)
-- Name: uk_8gup4ucnv9f2v9bjy76vgrqs9; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_8gup4ucnv9f2v9bjy76vgrqs9 ON pcdscards.pcds_cards_current USING btree (created);


--
-- TOC entry 2659 (class 1259 OID 90900338)
-- Name: uk_8s76cp4lcct7kyfxo55mx0i54; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_8s76cp4lcct7kyfxo55mx0i54 ON pcdscards.pcds_exportedcard_responses USING btree (card_reference);


--
-- TOC entry 2660 (class 1259 OID 90900339)
-- Name: uk_9h6b9813jj5kevlc96hnvyfkd; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_9h6b9813jj5kevlc96hnvyfkd ON pcdscards.pcds_exportedcard_responses USING btree (gk_id);


--
-- TOC entry 2605 (class 1259 OID 90900340)
-- Name: uk_cqg2y9sqq3d49gm1x45muiwmh; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_cqg2y9sqq3d49gm1x45muiwmh ON pcdscards.pcds_card_sending_results USING btree (session_initiator);


--
-- TOC entry 2661 (class 1259 OID 90900341)
-- Name: uk_eca2smq27ulfkoyo4r0ev2cp2; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_eca2smq27ulfkoyo4r0ev2cp2 ON pcdscards.pcds_exportedcard_responses USING btree (created);


--
-- TOC entry 2628 (class 1259 OID 90900356)
-- Name: uk_eh564in8lfe4hyq8mcy028dfc; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_eh564in8lfe4hyq8mcy028dfc ON pcdscards.pcds_cards_current USING btree (archived, last_changed_date);


--
-- TOC entry 2662 (class 1259 OID 90900364)
-- Name: uk_fqrgtg6n7ntqj8sds019opsiv; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_fqrgtg6n7ntqj8sds019opsiv ON pcdscards.pcds_exportedcard_responses USING btree (card_reference);


--
-- TOC entry 2648 (class 1259 OID 90900361)
-- Name: uk_ftk7ljbin6yv3q996jklil3fm; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ftk7ljbin6yv3q996jklil3fm ON pcdscards.pcds_cards_replaced USING btree (gk_id);


--
-- TOC entry 2649 (class 1259 OID 90900362)
-- Name: uk_he0xhj3s2f1ckn6fuvebl5f4d; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_he0xhj3s2f1ckn6fuvebl5f4d ON pcdscards.pcds_cards_replaced USING btree (created);


--
-- TOC entry 2663 (class 1259 OID 90900363)
-- Name: uk_ho9cun0flw4bcttunqodtmlu2; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ho9cun0flw4bcttunqodtmlu2 ON pcdscards.pcds_exportedcard_responses USING btree (gk_id);


--
-- TOC entry 2606 (class 1259 OID 90900345)
-- Name: uk_ixk7f32ptmuomc2ymr2rubxag; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ixk7f32ptmuomc2ymr2rubxag ON pcdscards.pcds_card_sending_results USING btree (final_status);


--
-- TOC entry 2629 (class 1259 OID 90900342)
-- Name: uk_jk4cyqrj52v95mwnxc7i6a340; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_jk4cyqrj52v95mwnxc7i6a340 ON pcdscards.pcds_cards_current USING btree (archived, last_changed_date);


--
-- TOC entry 2607 (class 1259 OID 90900343)
-- Name: uk_q8vl5qmajbon1vdk9ocgk9ye9; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_q8vl5qmajbon1vdk9ocgk9ye9 ON pcdscards.pcds_card_sending_results USING btree (started);


--
-- TOC entry 2608 (class 1259 OID 90900344)
-- Name: uk_rtbh6564im7i48tmoakm45j23; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_rtbh6564im7i48tmoakm45j23 ON pcdscards.pcds_card_sending_results USING btree (session_initiator);


--
-- TOC entry 2664 (class 1259 OID 90900365)
-- Name: uk_tehclt940vvoif83bx0by6yvl; Type: INDEX; Schema: pcdscards; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_tehclt940vvoif83bx0by6yvl ON pcdscards.pcds_exportedcard_responses USING btree (created);




--
-- TOC entry 2494 (class 1259 OID 90873056)
-- Name: uk_ba2vn9sngkde1i5ltljbh28mi; Type: INDEX; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_ba2vn9sngkde1i5ltljbh28mi ON pcdsimport.pcds_import_log_groups USING btree (groupid);


--
-- TOC entry 2497 (class 1259 OID 90873057)
-- Name: uk_err4k4531bfe5extok1t1s1ym; Type: INDEX; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_err4k4531bfe5extok1t1s1ym ON pcdsimport.pcds_import_log_persons USING btree (groupid);


--
-- TOC entry 2498 (class 1259 OID 90873058)
-- Name: uk_few09dobp0as0a8pkvot63ylh; Type: INDEX; Schema: pcdsimport; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_few09dobp0as0a8pkvot63ylh ON pcdsimport.pcds_import_log_persons USING btree (personuuid);




--
-- TOC entry 2566 (class 1259 OID 90873510)
-- Name: uk_jifnui0t3rlfljag9jit8emtc; Type: INDEX; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_jifnui0t3rlfljag9jit8emtc ON vehicle.ent_vehicle_pending_transactions USING btree (gk_id);


--
-- TOC entry 2567 (class 1259 OID 90873511)
-- Name: uk_lmvbgfys70riomdigcfdrx3pi; Type: INDEX; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_lmvbgfys70riomdigcfdrx3pi ON vehicle.ent_vehicle_pending_transactions USING btree (entity_type);


--
-- TOC entry 2568 (class 1259 OID 90873512)
-- Name: uk_nmfgluc1egcdf43g0tumvjoqb; Type: INDEX; Schema: vehicle; Owner: gkspire; Tablespace: 
--

CREATE INDEX uk_nmfgluc1egcdf43g0tumvjoqb ON vehicle.ent_vehicle_pending_transactions USING btree (transaction_date);




--
-- TOC entry 2665 (class 2606 OID 90873513)
-- Name: fk_671gvnnsvo4sco4xsc7afxx4j; Type: FK CONSTRAINT; Schema: license; Owner: gkspire
--

ALTER TABLE ONLY license.gk_license_detail
    ADD CONSTRAINT fk_671gvnnsvo4sco4xsc7afxx4j FOREIGN KEY (gk_entity) REFERENCES license.gk_license(gk_id);


--
-- TOC entry 2666 (class 2606 OID 90873518)
-- Name: fk_87nbdmhyglfmpyxrnohvdp1b8; Type: FK CONSTRAINT; Schema: license; Owner: gkspire
--

ALTER TABLE ONLY license.gk_license_detail_history
    ADD CONSTRAINT fk_87nbdmhyglfmpyxrnohvdp1b8 FOREIGN KEY (gk_entity) REFERENCES license.gk_license(gk_id);




--
-- TOC entry 2667 (class 2606 OID 90873523)
-- Name: fk_6pnetd39myvucmm1bs3x3e00n; Type: FK CONSTRAINT; Schema: vehicle; Owner: gkspire
--

ALTER TABLE ONLY vehicle.gk_vehicle_detail
    ADD CONSTRAINT fk_6pnetd39myvucmm1bs3x3e00n FOREIGN KEY (gk_entity) REFERENCES vehicle.gk_vehicle(gk_id);


--
-- TOC entry 2668 (class 2606 OID 90873528)
-- Name: fk_iktpu4uax5ndujhm6k5xdmdkf; Type: FK CONSTRAINT; Schema: vehicle; Owner: gkspire
--

ALTER TABLE ONLY vehicle.gk_vehicle_detail_history
    ADD CONSTRAINT fk_iktpu4uax5ndujhm6k5xdmdkf FOREIGN KEY (gk_entity) REFERENCES vehicle.gk_vehicle(gk_id);


--
-- TOC entry 2796 (class 0 OID 0)
-- Dependencies: 9
-- Name: license; Type: ACL; Schema: -; Owner: gkspire
--

REVOKE ALL ON SCHEMA license FROM PUBLIC;
REVOKE ALL ON SCHEMA license FROM gkspire;
GRANT ALL ON SCHEMA license TO gkspire;
GRANT ALL ON SCHEMA license TO PUBLIC;


--
-- TOC entry 2798 (class 0 OID 0)
-- Dependencies: 11
-- Name: pcdscards; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA pcdscards FROM PUBLIC;
REVOKE ALL ON SCHEMA pcdscards FROM postgres;
GRANT ALL ON SCHEMA pcdscards TO postgres;
GRANT ALL ON SCHEMA pcdscards TO PUBLIC;


--
-- TOC entry 2799 (class 0 OID 0)
-- Dependencies: 10
-- Name: vehicle; Type: ACL; Schema: -; Owner: gkspire
--

REVOKE ALL ON SCHEMA vehicle FROM PUBLIC;
REVOKE ALL ON SCHEMA vehicle FROM gkspire;
GRANT ALL ON SCHEMA vehicle TO gkspire;
GRANT ALL ON SCHEMA vehicle TO PUBLIC;


-- Completed on 2021-02-19 10:01:48

--
-- PostgreSQL database dump complete
--

