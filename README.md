# 📊 Database Monitoring with Prometheus + Grafana

## 🧩 Objective

Set up a complete monitoring stack to monitor MySQL, PostgreSQL, and System Metrics using Prometheus for metrics collection and Grafana for dashboard visualization.


---

## 🏗️ Stack Components

Prometheus – Metrics collection and alerting

Grafana – Visualization dashboards

Node Exporter – System-level metrics (CPU, RAM, Disk, etc.)

MySQL Exporter – Database metrics for MySQL

Postgres Exporter – Database metrics for PostgreSQL

Docker Compose – To run all services easily



---

## ⚙️ Directory Structure

monitoring-stack/
├── docker-compose.yml
├── exporters/
│   ├── .my.cnf
│   ├── create_mysql_exporter.sql
│   └── create_postgres_exporter.sql
├── grafana/
│   ├── dashboards/
│   │   ├── dashboard-mysql.json
│   │   ├── dashboard-postgres.json
│   │   └── dashboard-system.json
│   └── provisioning/
│       └── datasources/
│           ├── datasource.yml
│           └── dashboard_provisioning.yml
└── prometheus/
    ├── prometheus.yml
    └── rules.yml


---

## 🚀 Setup Steps

1. Clone the Repository

git clone https://github.com/Rakholiya-Vivek/Project-Tasks2.git
cd Project-Tasks2/monitoring-stack


2. Configure Database Exporters

MySQL credentials: exporter/exporterpass

PostgreSQL credentials: postgres/postgrespass

Ensure .my.cnf file exists inside exporters/.



3. Start the Monitoring Stack

docker-compose up -d


4. Verify Running Containers

docker ps




---

## 🧠 Verification

🔹 Prometheus Targets

Access Prometheus targets at
👉 http://<your-ec2-ip>:9090/targets

All should show State: UP

mysql

postgres

node

prometheus


🔹 Grafana Dashboards

Access Grafana at
👉 http://<your-ec2-ip>:3000

Default credentials:
admin / admin

Import the dashboard JSON files located in grafana/dashboards/ for:

1. System Metrics (Node Exporter)


2. MySQL Metrics


3. PostgreSQL Metrics



---

🧾 Useful Commands

## Stop all services
docker-compose down

## View container logs
docker logs <container_name>

## Check MySQL users
docker exec -it mysql_db mysql -uroot -prootpass -e "SELECT User, Host FROM mysql.user;"

## Restart monitoring stack
docker-compose up -d

---
