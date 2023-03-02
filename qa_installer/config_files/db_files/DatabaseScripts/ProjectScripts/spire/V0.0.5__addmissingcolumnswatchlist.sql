ALTER TABLE public.necto_external_operators
    ADD COLUMN gk_id character varying(64);

ALTER TABLE public.necto_external_operators
    ADD COLUMN lastchange timestamp without time zone;

ALTER TABLE public.necto_external_watchlist
    ADD COLUMN gk_id character varying(64);



