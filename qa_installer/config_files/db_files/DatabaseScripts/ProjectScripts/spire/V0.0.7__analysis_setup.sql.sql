-- Table: public.sys_analysis_record

DROP TABLE if exists public.sys_analysis_record;

CREATE TABLE public.sys_analysis_record
(
    record_id character varying(64)  NOT NULL,
    content bytea,
    created timestamp without time zone,
    created_by character varying(64) ,
    node character varying(64) ,
    record_status character varying(16) ,
    updated timestamp without time zone,
    updated_by character varying(64) ,
    version_ integer,
    description character varying(255) ,
    name character varying(255) ,
    is_public boolean NOT NULL,
    CONSTRAINT sys_analysis_record_pkey PRIMARY KEY (record_id)
)
WITH (
    OIDS = FALSE
);


ALTER TABLE public.sys_analysis_record
    OWNER to gkspire;
	
CREATE INDEX sys_analysis_record_idx1
    ON public.sys_analysis_record 
    (name NULLS LAST);
	
CREATE INDEX sys_analysis_record_idx2
    ON public.sys_analysis_record 
    (description NULLS LAST);

