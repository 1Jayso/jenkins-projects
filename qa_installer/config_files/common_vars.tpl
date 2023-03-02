---
# vars file for database_setup
  TENANT: TENANT_NAME
  PROJECT_NAME: LC_TENANT
  postgres_data_dir: /var/lib/pgsql/9.6/data
  postgres_service_version: postgresql-9.6.service
  postgresql_bin_setup: /usr/pgsql-9.6/bin/postgresql96-setup
  elasticsearch_rpm_version: elasticsearch-2.3.4.rpm
  installer_data_dir: /tmp/installer_files
  tomcat_version: APACHE_TOMCAT_VERSION
  packages_to_install:
    - dos2unix-6.0.3-7.el7.x86_64
    - nspr-4.21.0-1.el7.x86_64
    - nss-3.44.0-7.el7_7.x86_64
    - nss-softokn-3.44.0-8.el7_7.x86_64
    - nss-softokn-freebl-3.44.0-8.el7_7.x86_64
    - nss-sysinit-3.44.0-7.el7_7.x86_64
    - nss-tools-3.44.0-7.el7_7.x86_64
    - nss-util-3.44.0-4.el7_7.x86_64
    - ntp-4.2.6p5-29.el7.centos.2.x86_64
    - openssl.x86_64
    - tigervnc.x86_64
