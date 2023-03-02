
CREATE SCHEMA demsim;


ALTER SCHEMA demsim OWNER TO gkspire;

-- TOC entry 178 (class 1259 OID 91742510)
-- Name: sys_demarcation_center; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_demarcation_center (
    dem_ext character varying(8),
    dem_version character varying(64),
    centerid character varying(64) NOT NULL,
    ctr_description character varying(128),
    externalreference character varying(64),
    otherdetails character varying(128),
    dem_parent character varying(64),
    building_type_id character varying(32),
    building_description character varying(64),
    x_longitud character varying(16),
    y_latitude character varying(16)
);


ALTER TABLE demsim.sys_demarcation_center OWNER TO gkspire;

--
-- TOC entry 287 (class 1259 OID 91744348)
-- Name: sys_demarcation_center_base; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_demarcation_center_base (
    dem_ext character varying(8),
    dem_version character varying(64),
    centerid character varying(64),
    ctr_description character varying(128),
    externalreference character varying(64),
    otherdetails character varying(128),
    dem_parent character varying(64),
    building_type_id character varying(32),
    building_description character varying(64),
    x_longitud character varying(16),
    y_latitude character varying(16)
);


ALTER TABLE demsim.sys_demarcation_center_base OWNER TO gkspire;

--
-- TOC entry 177 (class 1259 OID 91742504)
-- Name: sys_demarcation_entry; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_demarcation_entry (
    dem_version character varying(64),
    dem_level integer,
    dem_parent character varying(64),
    gkid character varying(64) NOT NULL,
    ex_id integer,
    ex_description character varying(128),
    ex_ref character varying(64),
    ex_postcode character varying(32)
);


ALTER TABLE demsim.sys_demarcation_entry OWNER TO gkspire;

--
-- TOC entry 288 (class 1259 OID 91744354)
-- Name: sys_demarcation_entry_base; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_demarcation_entry_base (
    dem_version character varying(64),
    dem_level integer,
    dem_parent character varying(64),
    gkid character varying(64),
    ex_id integer,
    ex_description character varying(128),
    ex_ref character varying(64),
    ex_postcode character varying(32)
);


ALTER TABLE demsim.sys_demarcation_entry_base OWNER TO gkspire;

--
-- TOC entry 174 (class 1259 OID 91742477)
-- Name: sys_sim_lock; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_sim_lock (
    location character varying(64) NOT NULL,
    created timestamp without time zone,
    operator character varying(64),
    tasks text,
    version_ integer
);


ALTER TABLE demsim.sys_sim_lock OWNER TO gkspire;

--
-- TOC entry 175 (class 1259 OID 91742485)
-- Name: sys_simulation_document; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_simulation_document (
    document_uuid character varying(64) NOT NULL,
    content bytea,
    date_of_upload timestamp without time zone,
    description character varying(256),
    format character varying(16),
    officerid character varying(64),
    other_details text,
    status character varying(32),
    taskuuid character varying(64)
);


ALTER TABLE demsim.sys_simulation_document OWNER TO gkspire;

--
-- TOC entry 176 (class 1259 OID 91742494)
-- Name: sys_simulation_tasks; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.sys_simulation_tasks (
    uuid character varying(64) NOT NULL,
    applied timestamp without time zone,
    applied_officer character varying(64),
    approval_officer character varying(64),
    simulationdate timestamp without time zone,
    reviewed timestamp without time zone,
    demarcation_version character varying(64),
    failure_reson character varying(256),
    lock_details text,
    officerid character varying(64),
    reject_reason character varying(256),
    taskstatus character varying(32),
    step_details text,
    reason_change character varying(256)
);


ALTER TABLE demsim.sys_simulation_tasks OWNER TO gkspire;

--
-- TOC entry 179 (class 1259 OID 91742519)
-- Name: voter_move; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.voter_move (
    record_id bigint NOT NULL,
    created timestamp without time zone,
    dem_ext character varying(8),
    dem_version character varying(64),
    gkid character varying(64) NOT NULL,
    voterid character varying(64),
    surname character varying(64),
    firstnames character varying(64),
    org_center character varying(32),
    new_center character varying(32),
    processor integer
);


ALTER TABLE demsim.voter_move OWNER TO gkspire;

--
-- TOC entry 181 (class 1259 OID 91742529)
-- Name: voter_move_m_lookup; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.voter_move_m_lookup (
    dem_version character varying(64) NOT NULL,
    gkid character varying(64) NOT NULL
);


ALTER TABLE demsim.voter_move_m_lookup OWNER TO gkspire;

--
-- TOC entry 180 (class 1259 OID 91742524)
-- Name: voter_move_multiple; Type: TABLE; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE TABLE demsim.voter_move_multiple (
    record_id bigint NOT NULL,
    created timestamp without time zone,
    dem_ext character varying(8),
    dem_version character varying(64),
    gkid character varying(64) NOT NULL,
    voterid character varying(64),
    surname character varying(64),
    firstnames character varying(64),
    org_center character varying(32),
    new_center character varying(32),
    processor integer
);


ALTER TABLE demsim.voter_move_multiple OWNER TO gkspire;

--
-- TOC entry 2348 (class 2606 OID 91742517)
-- Name: sys_demarcation_center_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.sys_demarcation_center
    ADD CONSTRAINT sys_demarcation_center_pkey PRIMARY KEY (centerid);


--
-- TOC entry 2345 (class 2606 OID 91742508)
-- Name: sys_demarcation_entry_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.sys_demarcation_entry
    ADD CONSTRAINT sys_demarcation_entry_pkey PRIMARY KEY (gkid);


--
-- TOC entry 2335 (class 2606 OID 91742484)
-- Name: sys_sim_lock_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.sys_sim_lock
    ADD CONSTRAINT sys_sim_lock_pkey PRIMARY KEY (location);


--
-- TOC entry 2338 (class 2606 OID 91742492)
-- Name: sys_simulation_document_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.sys_simulation_document
    ADD CONSTRAINT sys_simulation_document_pkey PRIMARY KEY (document_uuid);


--
-- TOC entry 2342 (class 2606 OID 91742501)
-- Name: sys_simulation_tasks_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.sys_simulation_tasks
    ADD CONSTRAINT sys_simulation_tasks_pkey PRIMARY KEY (uuid);


--
-- TOC entry 2356 (class 2606 OID 91742533)
-- Name: voter_move_m_lookup_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.voter_move_m_lookup
    ADD CONSTRAINT voter_move_m_lookup_pkey PRIMARY KEY (dem_version, gkid);


--
-- TOC entry 2354 (class 2606 OID 91742528)
-- Name: voter_move_multiple_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.voter_move_multiple
    ADD CONSTRAINT voter_move_multiple_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2352 (class 2606 OID 91742523)
-- Name: voter_move_pkey; Type: CONSTRAINT; Schema: demsim; Owner: gkspire; Tablespace: 
--

ALTER TABLE ONLY demsim.voter_move
    ADD CONSTRAINT voter_move_pkey PRIMARY KEY (record_id);


--
-- TOC entry 2346 (class 1259 OID 91742518)
-- Name: sys_demarcation_center_idx1; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_demarcation_center_idx1 ON demsim.sys_demarcation_center USING btree (dem_ext, dem_version, dem_parent, externalreference);


--
-- TOC entry 2343 (class 1259 OID 91742509)
-- Name: sys_demarcation_entry_idx1; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_demarcation_entry_idx1 ON demsim.sys_demarcation_entry USING btree (dem_version, dem_level, dem_parent, ex_id);


--
-- TOC entry 2336 (class 1259 OID 91742493)
-- Name: sys_simulation_document_idx1; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_simulation_document_idx1 ON demsim.sys_simulation_document USING btree (taskuuid);


--
-- TOC entry 2339 (class 1259 OID 91742502)
-- Name: sys_simulation_tasks_idx1; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_simulation_tasks_idx1 ON demsim.sys_simulation_tasks USING btree (simulationdate, taskstatus);


--
-- TOC entry 2340 (class 1259 OID 91742503)
-- Name: sys_simulation_tasks_idx2; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX sys_simulation_tasks_idx2 ON demsim.sys_simulation_tasks USING btree (officerid, simulationdate, taskstatus);


--
-- TOC entry 2349 (class 1259 OID 91742534)
-- Name: voter_move_idx1; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX voter_move_idx1 ON demsim.voter_move USING btree (dem_ext, dem_version, processor, org_center, new_center);


--
-- TOC entry 2350 (class 1259 OID 91742535)
-- Name: voter_move_idx2; Type: INDEX; Schema: demsim; Owner: gkspire; Tablespace: 
--

CREATE INDEX voter_move_idx2 ON demsim.voter_move USING btree (dem_ext, gkid);


--
-- TOC entry 2479 (class 0 OID 0)
-- Dependencies: 6
-- Name: demsim; Type: ACL; Schema: -; Owner: gkspire
--

REVOKE ALL ON SCHEMA demsim FROM PUBLIC;
REVOKE ALL ON SCHEMA demsim FROM gkspire;
GRANT ALL ON SCHEMA demsim TO gkspire;
GRANT ALL ON SCHEMA demsim TO PUBLIC;


-- Completed on 2021-02-16 11:21:05

--
-- PostgreSQL database dump complete
--

