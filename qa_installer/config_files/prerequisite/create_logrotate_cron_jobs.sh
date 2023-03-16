#!/bin/bash

# Define cron jobs
cron_job_spire_web="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_spire_web"
cron_job_spire_rest="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_spire_rest"
cron_job_adjudication_web="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_adjudication_web"
cron_job_spire_selfservic="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_spire_selfservice"
cron_job_spire_selfserviceAdmin="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_spire_selfserviceAdmin"
cron_job_elasticSearchLogs="50 23 * * * /usr/sbin/logrotate /etc/logrotate.d/gk_elasticSearchLogs"

# Add cron jobs
echo "$cron_job_spire_web" >> /etc/cron.d/logrotate
echo "$cron_job_spire_rest" >> /etc/cron.d/logrotate
echo "$cron_job_adjudication_web" >> /etc/cron.d/logrotate
echo "$cron_job_spire_selfservic" >> /etc/cron.d/logrotate
echo "$cron_job_spire_selfserviceAdmin" >> /etc/cron.d/logrotate
echo "$cron_job_elasticSearchLogs" >> /etc/cron.d/logrotate
