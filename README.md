# Categorize files

## Prerequisites to launch

- Docker
- Docker compose

## Prerequisites to develop

Above +

- bun (for vue)
- python with Poetry (for fastapi)

## Instructions for development

0. Run `git clone 'https://github.com/Herob527/categorize_files  --recursive'`

1. Create .env file with environment variables in `.env file` section

2. Run `docker compose --profile develop up --build --watch`
   - You can skip `--profile develop` if you don't need monitoring

### Note on `profile develop`

- `develop` profile launches services for monitoring (namely grafana, cadvisor and prometheus)

## Local links in docker compose

- Web App — <http://localhost:3050>

- API Docs — <http://localhost:3051>

- Adminer — <http://localhost:3052>

  - Mind to select PostreSQL system

- Minio — <http://localhost:9001>

- Grafana (develop only) — <http://localhost:3000>

- Cadvisor (develop only) — <http://localhost:8090>

- Prometheus (develop only) — <http://localhost:9090>

## .env file

For environment to set up properly, you need to create a `.env` file containing:

- DB_USER
- DB_PASSWORD
- DB_NAME
- MINIO_ROOT_USER
- MINIO_ROOT_PASSWORD
- GF_SECURITY_ADMIN_USER (dev only)
- GF_SECURITY_ADMIN_PASSWORD (dev only)

  Example of `.env` file:

```bash
DB_USER=myuser
DB_PASSWORD=mypassword
DB_NAME=mydb
MINIO_ROOT_USER=minio
MINIO_ROOT_PASSWORD=minio_123$
GF_SECURITY_ADMIN_USER=admin
GF_SECURITY_ADMIN_PASSWORD=admin
```

## Instructions for production

Not planned yet
