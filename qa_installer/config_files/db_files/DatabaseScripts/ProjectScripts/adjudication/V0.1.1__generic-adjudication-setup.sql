--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.9
-- Dumped by pg_dump version 9.3.9
-- Started on 2021-02-02 11:53:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 210 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 210
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 91383250)
-- Name: act_evt_log; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_evt_log (
    log_nr_ integer NOT NULL,
    type_ character varying(64),
    proc_def_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    time_stamp_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    data_ bytea,
    lock_owner_ character varying(255),
    lock_time_ timestamp without time zone,
    is_processed_ smallint DEFAULT 0
);


ALTER TABLE public.act_evt_log OWNER TO gkadjudication;

--
-- TOC entry 171 (class 1259 OID 91383257)
-- Name: act_evt_log_log_nr__seq; Type: SEQUENCE; Schema: public; Owner: gkadjudication
--

CREATE SEQUENCE act_evt_log_log_nr__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.act_evt_log_log_nr__seq OWNER TO gkadjudication;

--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 171
-- Name: act_evt_log_log_nr__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gkadjudication
--

ALTER SEQUENCE act_evt_log_log_nr__seq OWNED BY act_evt_log.log_nr_;


--
-- TOC entry 172 (class 1259 OID 91383259)
-- Name: act_ge_bytearray; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ge_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    deployment_id_ character varying(64),
    bytes_ bytea,
    generated_ boolean
);


ALTER TABLE public.act_ge_bytearray OWNER TO gkadjudication;

--
-- TOC entry 173 (class 1259 OID 91383265)
-- Name: act_ge_property; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);


ALTER TABLE public.act_ge_property OWNER TO gkadjudication;

--
-- TOC entry 174 (class 1259 OID 91383268)
-- Name: act_hi_actinst; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_actinst (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_hi_actinst OWNER TO gkadjudication;

--
-- TOC entry 175 (class 1259 OID 91383275)
-- Name: act_hi_attachment; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_attachment (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(255),
    name_ character varying(255),
    description_ character varying(4000),
    type_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    url_ character varying(4000),
    content_id_ character varying(64),
    time_ timestamp without time zone
);


ALTER TABLE public.act_hi_attachment OWNER TO gkadjudication;

--
-- TOC entry 176 (class 1259 OID 91383281)
-- Name: act_hi_comment; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_comment (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    time_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    action_ character varying(255),
    message_ character varying(4000),
    full_msg_ bytea
);


ALTER TABLE public.act_hi_comment OWNER TO gkadjudication;

--
-- TOC entry 177 (class 1259 OID 91383287)
-- Name: act_hi_detail; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_detail (
    id_ character varying(64) NOT NULL,
    type_ character varying(255) NOT NULL,
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    act_inst_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(64),
    rev_ integer,
    time_ timestamp without time zone NOT NULL,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);


ALTER TABLE public.act_hi_detail OWNER TO gkadjudication;

--
-- TOC entry 178 (class 1259 OID 91383293)
-- Name: act_hi_identitylink; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_identitylink (
    id_ character varying(64) NOT NULL,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64)
);


ALTER TABLE public.act_hi_identitylink OWNER TO gkadjudication;

--
-- TOC entry 179 (class 1259 OID 91383299)
-- Name: act_hi_procinst; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_procinst (
    id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    start_user_id_ character varying(255),
    start_act_id_ character varying(255),
    end_act_id_ character varying(255),
    super_process_instance_id_ character varying(64),
    delete_reason_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    name_ character varying(255)
);


ALTER TABLE public.act_hi_procinst OWNER TO gkadjudication;

--
-- TOC entry 180 (class 1259 OID 91383306)
-- Name: act_hi_taskinst; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_taskinst (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64),
    task_def_key_ character varying(255),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    owner_ character varying(255),
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    claim_time_ timestamp without time zone,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    priority_ integer,
    due_date_ timestamp without time zone,
    form_key_ character varying(255),
    category_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_hi_taskinst OWNER TO gkadjudication;

--
-- TOC entry 181 (class 1259 OID 91383313)
-- Name: act_hi_varinst; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_hi_varinst (
    id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(100),
    rev_ integer,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    create_time_ timestamp without time zone,
    last_updated_time_ timestamp without time zone
);


ALTER TABLE public.act_hi_varinst OWNER TO gkadjudication;

--
-- TOC entry 182 (class 1259 OID 91383319)
-- Name: act_id_group; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);


ALTER TABLE public.act_id_group OWNER TO gkadjudication;

--
-- TOC entry 183 (class 1259 OID 91383325)
-- Name: act_id_info; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_id_info (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(64),
    type_ character varying(64),
    key_ character varying(255),
    value_ character varying(255),
    password_ bytea,
    parent_id_ character varying(255)
);


ALTER TABLE public.act_id_info OWNER TO gkadjudication;

--
-- TOC entry 184 (class 1259 OID 91383331)
-- Name: act_id_membership; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);


ALTER TABLE public.act_id_membership OWNER TO gkadjudication;

--
-- TOC entry 185 (class 1259 OID 91383334)
-- Name: act_id_user; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_id_user (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    first_ character varying(255),
    last_ character varying(255),
    email_ character varying(255),
    pwd_ character varying(255),
    picture_id_ character varying(64)
);


ALTER TABLE public.act_id_user OWNER TO gkadjudication;

--
-- TOC entry 186 (class 1259 OID 91383340)
-- Name: act_procdef_info; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_procdef_info (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64) NOT NULL,
    rev_ integer,
    info_json_id_ character varying(64)
);


ALTER TABLE public.act_procdef_info OWNER TO gkadjudication;

--
-- TOC entry 187 (class 1259 OID 91383343)
-- Name: act_re_deployment; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    deploy_time_ timestamp without time zone
);


ALTER TABLE public.act_re_deployment OWNER TO gkadjudication;

--
-- TOC entry 188 (class 1259 OID 91383350)
-- Name: act_re_model; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_re_model (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    key_ character varying(255),
    category_ character varying(255),
    create_time_ timestamp without time zone,
    last_update_time_ timestamp without time zone,
    version_ integer,
    meta_info_ character varying(4000),
    deployment_id_ character varying(64),
    editor_source_value_id_ character varying(64),
    editor_source_extra_value_id_ character varying(64),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_re_model OWNER TO gkadjudication;

--
-- TOC entry 189 (class 1259 OID 91383357)
-- Name: act_re_procdef; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_re_procdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    description_ character varying(4000),
    has_start_form_key_ boolean,
    has_graphical_notation_ boolean,
    suspension_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_re_procdef OWNER TO gkadjudication;

--
-- TOC entry 190 (class 1259 OID 91383364)
-- Name: act_ru_event_subscr; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_event_subscr (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    event_type_ character varying(255) NOT NULL,
    event_name_ character varying(255),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    activity_id_ character varying(64),
    configuration_ character varying(255),
    created_ timestamp without time zone NOT NULL,
    proc_def_id_ character varying(64),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_ru_event_subscr OWNER TO gkadjudication;

--
-- TOC entry 191 (class 1259 OID 91383371)
-- Name: act_ru_execution; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    proc_inst_id_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    proc_def_id_ character varying(64),
    super_exec_ character varying(64),
    act_id_ character varying(255),
    is_active_ boolean,
    is_concurrent_ boolean,
    is_scope_ boolean,
    is_event_scope_ boolean,
    suspension_state_ integer,
    cached_ent_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    name_ character varying(255),
    lock_time_ timestamp without time zone
);


ALTER TABLE public.act_ru_execution OWNER TO gkadjudication;

--
-- TOC entry 192 (class 1259 OID 91383378)
-- Name: act_ru_identitylink; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_identitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64)
);


ALTER TABLE public.act_ru_identitylink OWNER TO gkadjudication;

--
-- TOC entry 193 (class 1259 OID 91383384)
-- Name: act_ru_job; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    proc_def_id_ character varying(64),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.act_ru_job OWNER TO gkadjudication;

--
-- TOC entry 194 (class 1259 OID 91383391)
-- Name: act_ru_task; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_task (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    task_def_key_ character varying(255),
    owner_ character varying(255),
    assignee_ character varying(255),
    delegation_ character varying(64),
    priority_ integer,
    create_time_ timestamp without time zone,
    due_date_ timestamp without time zone,
    category_ character varying(255),
    suspension_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    form_key_ character varying(255)
);


ALTER TABLE public.act_ru_task OWNER TO gkadjudication;

--
-- TOC entry 195 (class 1259 OID 91383398)
-- Name: act_ru_variable; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE act_ru_variable (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    task_id_ character varying(64),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);


ALTER TABLE public.act_ru_variable OWNER TO gkadjudication;

--
-- TOC entry 196 (class 1259 OID 91383404)
-- Name: adjdocumentlongid; Type: SEQUENCE; Schema: public; Owner: gkadjudication
--

CREATE SEQUENCE adjdocumentlongid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adjdocumentlongid OWNER TO gkadjudication;

--
-- TOC entry 197 (class 1259 OID 91383406)
-- Name: c3p0_conn_table; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE c3p0_conn_table (
    a character(1)
);


ALTER TABLE public.c3p0_conn_table OWNER TO gkadjudication;

--
-- TOC entry 198 (class 1259 OID 91383409)
-- Name: gk_adj_log; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_log (
    pk_id character varying(255) NOT NULL,
    primaryabissubject character varying(255) NOT NULL,
    matchingabissubject character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    username character varying(255),
    comments character varying(255),
    final_adjudication_decision character varying(255) NOT NULL,
    current_step character varying(255),
    tenant character varying(255) NOT NULL,
    casetype character varying(255)
);


ALTER TABLE public.gk_adj_log OWNER TO gkadjudication;

--
-- TOC entry 199 (class 1259 OID 91383415)
-- Name: decisions_view; Type: VIEW; Schema: public; Owner: gkadjudication
--

CREATE VIEW decisions_view AS
 SELECT row_number() OVER () AS pid,
    gk_adj_log.final_adjudication_decision AS finaldecision,
    count(gk_adj_log.final_adjudication_decision) AS numberofcases,
    to_date(to_char(gk_adj_log.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) AS datecompleted
   FROM gk_adj_log
  WHERE ((gk_adj_log.final_adjudication_decision)::text <> 'IN_REVIEW'::text)
  GROUP BY gk_adj_log.final_adjudication_decision, to_date(to_char(gk_adj_log.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text)
  ORDER BY count(gk_adj_log.final_adjudication_decision), to_date(to_char(gk_adj_log.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text);


ALTER TABLE public.decisions_view OWNER TO gkadjudication;

--
-- TOC entry 209 (class 1259 OID 91438398)
-- Name: gk_adj_autoadj_record; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_autoadj_record (
    pk_id character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    comments character varying(255),
    username character varying(255),
    item character varying(255),
    identifier character varying(255),
    details text
);


ALTER TABLE public.gk_adj_autoadj_record OWNER TO gkadjudication;

--
-- TOC entry 200 (class 1259 OID 91383419)
-- Name: gk_adj_doc; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_doc (
    pk_id character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    comments character varying(255),
    username character varying(255),
    document_type character varying(255),
    case_reference bigint NOT NULL,
    fk_adjudication_step_id character varying(255)
);


ALTER TABLE public.gk_adj_doc OWNER TO gkadjudication;

--
-- TOC entry 201 (class 1259 OID 91383425)
-- Name: gk_adj_error_record; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_error_record (
    pk_id character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    comments character varying(255),
    username character varying(255),
    item character varying(255),
    identifier character varying(255),
    details text
);


ALTER TABLE public.gk_adj_error_record OWNER TO gkadjudication;

--
-- TOC entry 202 (class 1259 OID 91383431)
-- Name: gk_adj_step; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_step (
    pk_id character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    comments character varying(255),
    username character varying(255),
    adjudication_decision character varying(255) NOT NULL,
    adjudication_task_type character varying(255) NOT NULL,
    fk_adjudication_log_id character varying(255)
);


ALTER TABLE public.gk_adj_step OWNER TO gkadjudication;

--
-- TOC entry 203 (class 1259 OID 91383437)
-- Name: gk_adj_step_detail; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_adj_step_detail (
    pk_id character varying(255) NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_completed timestamp without time zone,
    comments character varying(255),
    username character varying(255),
    review_decision character varying(255) NOT NULL,
    review_type character varying(255) NOT NULL,
    review_detail character varying(255),
    fk_adjudication_step_id character varying(255)
);


ALTER TABLE public.gk_adj_step_detail OWNER TO gkadjudication;

--
-- TOC entry 204 (class 1259 OID 91383443)
-- Name: gk_user_extension; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE gk_user_extension (
    pk_id character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    user_status integer NOT NULL,
    picture text,
    last_password_change date
);


ALTER TABLE public.gk_user_extension OWNER TO gkadjudication;

--
-- TOC entry 205 (class 1259 OID 91383449)
-- Name: number_added_cases_view; Type: TABLE; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE TABLE number_added_cases_view (
    pid integer NOT NULL,
    datecompleted date,
    casesadded integer
);


ALTER TABLE public.number_added_cases_view OWNER TO gkadjudication;

--
-- TOC entry 206 (class 1259 OID 91383452)
-- Name: step_decisions_view; Type: VIEW; Schema: public; Owner: gkadjudication
--

CREATE VIEW step_decisions_view AS
 SELECT row_number() OVER () AS pid,
    gk_adj_step.adjudication_decision AS finaldecision,
    gk_adj_step.adjudication_task_type AS tasktype,
    count(gk_adj_step.adjudication_decision) AS numberofcases,
    to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) AS datecompleted
   FROM gk_adj_step
  WHERE ((gk_adj_step.adjudication_decision)::text <> 'UNKNOWN'::text)
  GROUP BY gk_adj_step.adjudication_decision, gk_adj_step.adjudication_task_type, to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text)
  ORDER BY gk_adj_step.adjudication_task_type;


ALTER TABLE public.step_decisions_view OWNER TO gkadjudication;

--
-- TOC entry 207 (class 1259 OID 91383456)
-- Name: user_cases_view; Type: VIEW; Schema: public; Owner: gkadjudication
--

CREATE VIEW user_cases_view AS
 SELECT row_number() OVER () AS pid,
    gk_adj_step.username AS "user",
    count(gk_adj_step.username) AS numberofcases,
    to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) AS datecompleted
   FROM gk_adj_step
  WHERE ((((gk_adj_step.username)::text <> ''::text) OR (NOT (gk_adj_step.username IS NULL))) AND ((gk_adj_step.adjudication_decision)::text <> 'UNKNOWN'::text))
  GROUP BY gk_adj_step.username, to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text)
  ORDER BY gk_adj_step.username, to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text);


ALTER TABLE public.user_cases_view OWNER TO gkadjudication;

--
-- TOC entry 208 (class 1259 OID 91383460)
-- Name: user_decisions_view; Type: VIEW; Schema: public; Owner: gkadjudication
--

CREATE VIEW user_decisions_view AS
 SELECT row_number() OVER () AS pid,
    gk_adj_step.username AS "user",
    gk_adj_step.adjudication_task_type AS tasktype,
    gk_adj_step.adjudication_decision AS finaldecision,
    count(gk_adj_step.adjudication_decision) AS numberofcases,
    to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) AS datecompleted
   FROM gk_adj_step
  WHERE ((((gk_adj_step.username)::text <> ''::text) OR (NOT (gk_adj_step.username IS NULL))) AND ((gk_adj_step.adjudication_decision)::text <> 'UNKNOWN'::text))
  GROUP BY gk_adj_step.username, gk_adj_step.adjudication_task_type, gk_adj_step.adjudication_decision, to_date(to_char(gk_adj_step.date_completed, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text)
  ORDER BY gk_adj_step.username, gk_adj_step.adjudication_task_type;


ALTER TABLE public.user_decisions_view OWNER TO gkadjudication;

--
-- TOC entry 2004 (class 2604 OID 91383464)
-- Name: log_nr_; Type: DEFAULT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_evt_log ALTER COLUMN log_nr_ SET DEFAULT nextval('act_evt_log_log_nr__seq'::regclass);


--
-- TOC entry 2016 (class 2606 OID 91383478)
-- Name: act_evt_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_evt_log
    ADD CONSTRAINT act_evt_log_pkey PRIMARY KEY (log_nr_);


--
-- TOC entry 2018 (class 2606 OID 91383480)
-- Name: act_ge_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 2021 (class 2606 OID 91383482)
-- Name: act_ge_property_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);


--
-- TOC entry 2023 (class 2606 OID 91383484)
-- Name: act_hi_actinst_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2029 (class 2606 OID 91383486)
-- Name: act_hi_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2031 (class 2606 OID 91383488)
-- Name: act_hi_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2033 (class 2606 OID 91383490)
-- Name: act_hi_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);


--
-- TOC entry 2040 (class 2606 OID 91383492)
-- Name: act_hi_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_identitylink
    ADD CONSTRAINT act_hi_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2045 (class 2606 OID 91383494)
-- Name: act_hi_procinst_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2047 (class 2606 OID 91383496)
-- Name: act_hi_procinst_proc_inst_id__key; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);


--
-- TOC entry 2051 (class 2606 OID 91383498)
-- Name: act_hi_taskinst_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2054 (class 2606 OID 91383500)
-- Name: act_hi_varinst_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_hi_varinst
    ADD CONSTRAINT act_hi_varinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2059 (class 2606 OID 91383502)
-- Name: act_id_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);


--
-- TOC entry 2061 (class 2606 OID 91383504)
-- Name: act_id_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 2063 (class 2606 OID 91383506)
-- Name: act_id_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);


--
-- TOC entry 2067 (class 2606 OID 91383508)
-- Name: act_id_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);


--
-- TOC entry 2071 (class 2606 OID 91383510)
-- Name: act_procdef_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_procdef_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 2075 (class 2606 OID 91383512)
-- Name: act_re_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2080 (class 2606 OID 91383514)
-- Name: act_re_model_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_re_model_pkey PRIMARY KEY (id_);


--
-- TOC entry 2082 (class 2606 OID 91383516)
-- Name: act_re_procdef_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 2088 (class 2606 OID 91383518)
-- Name: act_ru_event_subscr_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);


--
-- TOC entry 2095 (class 2606 OID 91383520)
-- Name: act_ru_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 2102 (class 2606 OID 91383522)
-- Name: act_ru_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2105 (class 2606 OID 91383524)
-- Name: act_ru_job_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2111 (class 2606 OID 91383526)
-- Name: act_ru_task_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 2120 (class 2606 OID 91383528)
-- Name: act_ru_variable_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);


--
-- TOC entry 2073 (class 2606 OID 91383530)
-- Name: act_uniq_info_procdef; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_uniq_info_procdef UNIQUE (proc_def_id_);


--
-- TOC entry 2084 (class 2606 OID 91383532)
-- Name: act_uniq_procdef; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_uniq_procdef UNIQUE (key_, version_, tenant_id_);


--
-- TOC entry 2143 (class 2606 OID 91438405)
-- Name: gk_adj_autoadj_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_autoadj_record
    ADD CONSTRAINT gk_adj_autoadj_record_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2129 (class 2606 OID 91383534)
-- Name: gk_adj_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_doc
    ADD CONSTRAINT gk_adj_doc_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2131 (class 2606 OID 91383536)
-- Name: gk_adj_error_record_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_error_record
    ADD CONSTRAINT gk_adj_error_record_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2122 (class 2606 OID 91383538)
-- Name: gk_adj_log_current_step_key; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_log
    ADD CONSTRAINT gk_adj_log_current_step_key UNIQUE (current_step);


--
-- TOC entry 2124 (class 2606 OID 91383540)
-- Name: gk_adj_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_log
    ADD CONSTRAINT gk_adj_log_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2135 (class 2606 OID 91383542)
-- Name: gk_adj_step_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_step_detail
    ADD CONSTRAINT gk_adj_step_detail_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2133 (class 2606 OID 91383544)
-- Name: gk_adj_step_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_adj_step
    ADD CONSTRAINT gk_adj_step_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2137 (class 2606 OID 91383546)
-- Name: gk_user_extension_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_user_extension
    ADD CONSTRAINT gk_user_extension_pkey PRIMARY KEY (pk_id);


--
-- TOC entry 2141 (class 2606 OID 91383548)
-- Name: number_added_cases_view_pkey; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY number_added_cases_view
    ADD CONSTRAINT number_added_cases_view_pkey PRIMARY KEY (pid);


--
-- TOC entry 2139 (class 2606 OID 91383550)
-- Name: uk_ab8xod66pirdql2bfpkwmqg3u; Type: CONSTRAINT; Schema: public; Owner: gkadjudication; Tablespace: 
--

ALTER TABLE ONLY gk_user_extension
    ADD CONSTRAINT uk_ab8xod66pirdql2bfpkwmqg3u UNIQUE (user_id);


--
-- TOC entry 2096 (class 1259 OID 91383551)
-- Name: act_idx_athrz_procedef; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_athrz_procedef ON act_ru_identitylink USING btree (proc_def_id_);


--
-- TOC entry 2019 (class 1259 OID 91383552)
-- Name: act_idx_bytear_depl; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_bytear_depl ON act_ge_bytearray USING btree (deployment_id_);


--
-- TOC entry 2085 (class 1259 OID 91383553)
-- Name: act_idx_event_subscr; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_event_subscr ON act_ru_event_subscr USING btree (execution_id_);


--
-- TOC entry 2086 (class 1259 OID 91383554)
-- Name: act_idx_event_subscr_config_; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_event_subscr_config_ ON act_ru_event_subscr USING btree (configuration_);


--
-- TOC entry 2089 (class 1259 OID 91383555)
-- Name: act_idx_exe_parent; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_exe_parent ON act_ru_execution USING btree (parent_id_);


--
-- TOC entry 2090 (class 1259 OID 91383556)
-- Name: act_idx_exe_procdef; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_exe_procdef ON act_ru_execution USING btree (proc_def_id_);


--
-- TOC entry 2091 (class 1259 OID 91383557)
-- Name: act_idx_exe_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_exe_procinst ON act_ru_execution USING btree (proc_inst_id_);


--
-- TOC entry 2092 (class 1259 OID 91383558)
-- Name: act_idx_exe_super; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_exe_super ON act_ru_execution USING btree (super_exec_);


--
-- TOC entry 2093 (class 1259 OID 91383559)
-- Name: act_idx_exec_buskey; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_exec_buskey ON act_ru_execution USING btree (business_key_);


--
-- TOC entry 2024 (class 1259 OID 91383560)
-- Name: act_idx_hi_act_inst_end; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_end ON act_hi_actinst USING btree (end_time_);


--
-- TOC entry 2025 (class 1259 OID 91383561)
-- Name: act_idx_hi_act_inst_exec; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_exec ON act_hi_actinst USING btree (execution_id_, act_id_);


--
-- TOC entry 2026 (class 1259 OID 91383562)
-- Name: act_idx_hi_act_inst_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_procinst ON act_hi_actinst USING btree (proc_inst_id_, act_id_);


--
-- TOC entry 2027 (class 1259 OID 91383563)
-- Name: act_idx_hi_act_inst_start; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_start ON act_hi_actinst USING btree (start_time_);


--
-- TOC entry 2034 (class 1259 OID 91383564)
-- Name: act_idx_hi_detail_act_inst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_act_inst ON act_hi_detail USING btree (act_inst_id_);


--
-- TOC entry 2035 (class 1259 OID 91383565)
-- Name: act_idx_hi_detail_name; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_name ON act_hi_detail USING btree (name_);


--
-- TOC entry 2036 (class 1259 OID 91383566)
-- Name: act_idx_hi_detail_proc_inst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_proc_inst ON act_hi_detail USING btree (proc_inst_id_);


--
-- TOC entry 2037 (class 1259 OID 91383567)
-- Name: act_idx_hi_detail_task_id; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_task_id ON act_hi_detail USING btree (task_id_);


--
-- TOC entry 2038 (class 1259 OID 91383568)
-- Name: act_idx_hi_detail_time; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_time ON act_hi_detail USING btree (time_);


--
-- TOC entry 2041 (class 1259 OID 91383569)
-- Name: act_idx_hi_ident_lnk_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_ident_lnk_procinst ON act_hi_identitylink USING btree (proc_inst_id_);


--
-- TOC entry 2042 (class 1259 OID 91383570)
-- Name: act_idx_hi_ident_lnk_task; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_ident_lnk_task ON act_hi_identitylink USING btree (task_id_);


--
-- TOC entry 2043 (class 1259 OID 91383571)
-- Name: act_idx_hi_ident_lnk_user; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_ident_lnk_user ON act_hi_identitylink USING btree (user_id_);


--
-- TOC entry 2048 (class 1259 OID 91383572)
-- Name: act_idx_hi_pro_i_buskey; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_pro_i_buskey ON act_hi_procinst USING btree (business_key_);


--
-- TOC entry 2049 (class 1259 OID 91383573)
-- Name: act_idx_hi_pro_inst_end; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_pro_inst_end ON act_hi_procinst USING btree (end_time_);


--
-- TOC entry 2055 (class 1259 OID 91383574)
-- Name: act_idx_hi_procvar_name_type; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_procvar_name_type ON act_hi_varinst USING btree (name_, var_type_);


--
-- TOC entry 2056 (class 1259 OID 91383575)
-- Name: act_idx_hi_procvar_proc_inst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_procvar_proc_inst ON act_hi_varinst USING btree (proc_inst_id_);


--
-- TOC entry 2057 (class 1259 OID 91383576)
-- Name: act_idx_hi_procvar_task_id; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_procvar_task_id ON act_hi_varinst USING btree (task_id_);


--
-- TOC entry 2052 (class 1259 OID 91383577)
-- Name: act_idx_hi_task_inst_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_hi_task_inst_procinst ON act_hi_taskinst USING btree (proc_inst_id_);


--
-- TOC entry 2097 (class 1259 OID 91383578)
-- Name: act_idx_ident_lnk_group; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_ident_lnk_group ON act_ru_identitylink USING btree (group_id_);


--
-- TOC entry 2098 (class 1259 OID 91383579)
-- Name: act_idx_ident_lnk_user; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_ident_lnk_user ON act_ru_identitylink USING btree (user_id_);


--
-- TOC entry 2099 (class 1259 OID 91383580)
-- Name: act_idx_idl_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_idl_procinst ON act_ru_identitylink USING btree (proc_inst_id_);


--
-- TOC entry 2103 (class 1259 OID 91383581)
-- Name: act_idx_job_exception; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_job_exception ON act_ru_job USING btree (exception_stack_id_);


--
-- TOC entry 2064 (class 1259 OID 91383582)
-- Name: act_idx_memb_group; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_memb_group ON act_id_membership USING btree (group_id_);


--
-- TOC entry 2065 (class 1259 OID 91383583)
-- Name: act_idx_memb_user; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_memb_user ON act_id_membership USING btree (user_id_);


--
-- TOC entry 2076 (class 1259 OID 91383584)
-- Name: act_idx_model_deployment; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_model_deployment ON act_re_model USING btree (deployment_id_);


--
-- TOC entry 2077 (class 1259 OID 91383585)
-- Name: act_idx_model_source; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_model_source ON act_re_model USING btree (editor_source_value_id_);


--
-- TOC entry 2078 (class 1259 OID 91383586)
-- Name: act_idx_model_source_extra; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_model_source_extra ON act_re_model USING btree (editor_source_extra_value_id_);


--
-- TOC entry 2068 (class 1259 OID 91383587)
-- Name: act_idx_procdef_info_json; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_procdef_info_json ON act_procdef_info USING btree (info_json_id_);


--
-- TOC entry 2069 (class 1259 OID 91383588)
-- Name: act_idx_procdef_info_proc; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_procdef_info_proc ON act_procdef_info USING btree (proc_def_id_);


--
-- TOC entry 2106 (class 1259 OID 91383589)
-- Name: act_idx_task_create; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_task_create ON act_ru_task USING btree (create_time_);


--
-- TOC entry 2107 (class 1259 OID 91383590)
-- Name: act_idx_task_exec; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_task_exec ON act_ru_task USING btree (execution_id_);


--
-- TOC entry 2108 (class 1259 OID 91383591)
-- Name: act_idx_task_procdef; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_task_procdef ON act_ru_task USING btree (proc_def_id_);


--
-- TOC entry 2109 (class 1259 OID 91383592)
-- Name: act_idx_task_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_task_procinst ON act_ru_task USING btree (proc_inst_id_);


--
-- TOC entry 2100 (class 1259 OID 91383593)
-- Name: act_idx_tskass_task; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_tskass_task ON act_ru_identitylink USING btree (task_id_);


--
-- TOC entry 2112 (class 1259 OID 91383594)
-- Name: act_idx_var_bytearray; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_bytearray ON act_ru_variable USING btree (bytearray_id_);


--
-- TOC entry 2113 (class 1259 OID 91383595)
-- Name: act_idx_var_exe; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_exe ON act_ru_variable USING btree (execution_id_);


--
-- TOC entry 2114 (class 1259 OID 91400845)
-- Name: act_idx_var_nam; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_nam ON act_ru_variable USING btree (name_);


--
-- TOC entry 2115 (class 1259 OID 91400846)
-- Name: act_idx_var_nam_1; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_nam_1 ON act_ru_variable USING btree (name_, text_) WHERE ((name_)::text = 'adjudicationLogId'::text);


--
-- TOC entry 2116 (class 1259 OID 91400847)
-- Name: act_idx_var_nam_2; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_nam_2 ON act_ru_variable USING btree (proc_inst_id_, name_, text_) WHERE ((name_)::text = 'assignedGroup'::text);


--
-- TOC entry 2117 (class 1259 OID 91383596)
-- Name: act_idx_var_procinst; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_var_procinst ON act_ru_variable USING btree (proc_inst_id_);


--
-- TOC entry 2118 (class 1259 OID 91383597)
-- Name: act_idx_variable_task_id; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX act_idx_variable_task_id ON act_ru_variable USING btree (task_id_);


--
-- TOC entry 2125 (class 1259 OID 91383598)
-- Name: idx_gk_adj_log_current_step; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX idx_gk_adj_log_current_step ON gk_adj_log USING btree (current_step);


--
-- TOC entry 2126 (class 1259 OID 91383599)
-- Name: idx_gk_adj_log_matchingabissubject; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX idx_gk_adj_log_matchingabissubject ON gk_adj_log USING btree (matchingabissubject);


--
-- TOC entry 2127 (class 1259 OID 91383600)
-- Name: idx_gk_adj_log_primaryabissubject; Type: INDEX; Schema: public; Owner: gkadjudication; Tablespace: 
--

CREATE INDEX idx_gk_adj_log_primaryabissubject ON gk_adj_log USING btree (primaryabissubject);


--
-- TOC entry 2157 (class 2606 OID 91383601)
-- Name: act_fk_athrz_procedef; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2144 (class 2606 OID 91383606)
-- Name: act_fk_bytearr_depl; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 2152 (class 2606 OID 91383611)
-- Name: act_fk_event_exec; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2153 (class 2606 OID 91383616)
-- Name: act_fk_exe_parent; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2154 (class 2606 OID 91383621)
-- Name: act_fk_exe_procdef; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2155 (class 2606 OID 91383626)
-- Name: act_fk_exe_procinst; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2156 (class 2606 OID 91383631)
-- Name: act_fk_exe_super; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2158 (class 2606 OID 91383636)
-- Name: act_fk_idl_procinst; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_idl_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2147 (class 2606 OID 91383641)
-- Name: act_fk_info_json_ba; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_fk_info_json_ba FOREIGN KEY (info_json_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2148 (class 2606 OID 91383646)
-- Name: act_fk_info_procdef; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_fk_info_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2160 (class 2606 OID 91383651)
-- Name: act_fk_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2145 (class 2606 OID 91383656)
-- Name: act_fk_memb_group; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);


--
-- TOC entry 2146 (class 2606 OID 91383661)
-- Name: act_fk_memb_user; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);


--
-- TOC entry 2149 (class 2606 OID 91383666)
-- Name: act_fk_model_deployment; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_deployment FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 2150 (class 2606 OID 91383671)
-- Name: act_fk_model_source; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_source FOREIGN KEY (editor_source_value_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2151 (class 2606 OID 91383676)
-- Name: act_fk_model_source_extra; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_source_extra FOREIGN KEY (editor_source_extra_value_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2161 (class 2606 OID 91383681)
-- Name: act_fk_task_exe; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2162 (class 2606 OID 91383686)
-- Name: act_fk_task_procdef; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2163 (class 2606 OID 91383691)
-- Name: act_fk_task_procinst; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2159 (class 2606 OID 91383696)
-- Name: act_fk_tskass_task; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES act_ru_task(id_);


--
-- TOC entry 2164 (class 2606 OID 91383701)
-- Name: act_fk_var_bytearray; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2165 (class 2606 OID 91383706)
-- Name: act_fk_var_exe; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2166 (class 2606 OID 91383711)
-- Name: act_fk_var_procinst; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2167 (class 2606 OID 91383716)
-- Name: fk_iv9t7jmcmemus2c539jk3p8r9; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY gk_adj_log
    ADD CONSTRAINT fk_iv9t7jmcmemus2c539jk3p8r9 FOREIGN KEY (current_step) REFERENCES gk_adj_step(pk_id);


--
-- TOC entry 2168 (class 2606 OID 91383721)
-- Name: gk_adj_doc_fk_adjudication_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY gk_adj_doc
    ADD CONSTRAINT gk_adj_doc_fk_adjudication_step_id_fkey FOREIGN KEY (fk_adjudication_step_id) REFERENCES gk_adj_step(pk_id);


--
-- TOC entry 2170 (class 2606 OID 91383726)
-- Name: gk_adj_step_detail_fk_adjudication_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY gk_adj_step_detail
    ADD CONSTRAINT gk_adj_step_detail_fk_adjudication_step_id_fkey FOREIGN KEY (fk_adjudication_step_id) REFERENCES gk_adj_step(pk_id);


--
-- TOC entry 2169 (class 2606 OID 91383731)
-- Name: gk_adj_step_fk_adjudication_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gkadjudication
--

ALTER TABLE ONLY gk_adj_step
    ADD CONSTRAINT gk_adj_step_fk_adjudication_log_id_fkey FOREIGN KEY (fk_adjudication_log_id) REFERENCES gk_adj_log(pk_id);


--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 209
-- Name: gk_adj_autoadj_record; Type: ACL; Schema: public; Owner: gkadjudication
--

REVOKE ALL ON TABLE gk_adj_autoadj_record FROM PUBLIC;
REVOKE ALL ON TABLE gk_adj_autoadj_record FROM gkadjudication;
GRANT ALL ON TABLE gk_adj_autoadj_record TO gkadjudication;
GRANT ALL ON TABLE gk_adj_autoadj_record TO PUBLIC;


--
-- TOC entry 1671 (class 826 OID 91383736)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: gkspire
--

ALTER DEFAULT PRIVILEGES FOR ROLE gkspire REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE gkspire REVOKE ALL ON TABLES  FROM gkspire;
ALTER DEFAULT PRIVILEGES FOR ROLE gkspire GRANT ALL ON TABLES  TO gkspire;
ALTER DEFAULT PRIVILEGES FOR ROLE gkspire GRANT ALL ON TABLES  TO PUBLIC;


-- Completed on 2021-02-02 11:53:17

--
-- PostgreSQL database dump complete
--

