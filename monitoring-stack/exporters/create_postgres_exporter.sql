-- Run in postgres to create a role for exporter
CREATE ROLE postgres_exporter WITH LOGIN PASSWORD 'exporter_pass';
GRANT pg_monitor TO postgres_exporter;

