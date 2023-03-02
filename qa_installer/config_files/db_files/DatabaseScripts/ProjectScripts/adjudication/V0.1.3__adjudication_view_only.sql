--VIEWS----------------------------

--drop table if exists decisions_view cascade;
drop view if exists decisions_view;
create or replace view decisions_view 
as
select 
	row_number() OVER () as pid,
	final_adjudication_decision as FinalDecision, 
	count(final_adjudication_decision) as NumberOfCases,
	to_date(to_char(date_completed, 'DD-MM-YYYY'), 'DD-MM-YYYY') as DateCompleted
from 
	gk_adj_log
where 
	upper(final_adjudication_decision) != 'IN_REVIEW' 
group by 
	FinalDecision, DateCompleted
order by 
	DateCompleted desc, count(final_adjudication_decision);	
	

--drop table if exists step_decisions_view cascade;
drop view if exists step_decisions_view;
CREATE OR REPLACE VIEW step_decisions_view AS
  SELECT
    row_number() OVER () AS pid,
    adjudication_decision                                        AS FinalDecision,
    adjudication_task_type                                       AS TaskType,
    count(adjudication_decision)                                 AS NumberOfCases,
    to_date(to_char(date_completed, 'DD-MM-YYYY'), 'DD-MM-YYYY') AS DateCompleted
  FROM
    gk_adj_step
  WHERE
    lower(adjudication_decision) != 'unknown'
  GROUP BY
    FinalDecision, TaskType, DateCompleted
  ORDER BY
    TaskType;	

  

	
--drop table if exists user_cases_view cascade;
drop view if exists user_cases_view;
create or replace view user_cases_view 
as
select 
	row_number() OVER () as pid,
	username as User, 
	count(username) as NumberOfCases,
	to_date(to_char(date_completed, 'DD-MM-YYYY'), 'DD-MM-YYYY') as DateCompleted
from 
	gk_adj_step
where 
	((username != '') or (not username is null ))
	and	upper(adjudication_decision) != 'UNKNOWN'
	and NOT gk_adj_step.date_completed IS NULL
group by 
	username, DateCompleted
order by 
	DateCompleted desc, username asc;
	
 

	
--drop table if exists user_decisions_view cascade;
drop view if exists user_decisions_view;	
create or replace view user_decisions_view 
as
select 
	row_number() OVER () as pid,
	username as User, 
	adjudication_task_type as TaskType,
	adjudication_decision as FinalDecision,	
	count(adjudication_decision) as NumberOfCases,
	to_date(to_char(date_completed, 'DD-MM-YYYY'), 'DD-MM-YYYY') as DateCompleted
from 
	gk_adj_step
where 
	((username != '') or (not username is null ))
	and
	upper(adjudication_decision) != 'UNKNOWN' 
group by 
	username, TaskType, FinalDecision, DateCompleted
order by 
	username, TaskType;
	
	
drop table if exists number_added_cases_view cascade;
drop view if exists number_added_cases_view;	
CREATE OR REPLACE VIEW number_added_cases_view AS 
 SELECT row_number() OVER () AS pid,
    to_date(to_char(gk_adj_log.date_created, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) AS datecompleted,
    count(gk_adj_log.date_created) AS casesadded
   FROM gk_adj_log
  GROUP BY to_date(to_char(gk_adj_log.date_created, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text)
  ORDER BY to_date(to_char(gk_adj_log.date_created, 'DD-MM-YYYY'::text), 'DD-MM-YYYY'::text) DESC;
  
	


ALTER VIEW number_added_cases_view OWNER TO gkadjudication;
ALTER VIEW decisions_view OWNER TO gkadjudication;
ALTER VIEW step_decisions_view OWNER TO gkadjudication;
ALTER VIEW user_cases_view OWNER TO gkadjudication;
ALTER VIEW user_decisions_view OWNER TO gkadjudication;