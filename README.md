# Categorize files

Tool for uploading audio files, assigning categories, adding transcripts, and exporting processed data.

## Prerequisites to launch

- Docker
- Docker compose

## Prerequisites to develop

Above +

- bun (for vue)
- python with Poetry (for fastapi)

## Instructions for development

0. Run `git clone https://github.com/Herob527/categorize_files  --recursive`

1. Create .env file with environment variables in `.env file` section

2. Run `docker compose --profile develop up --build --watch`
   - You can skip `--profile develop` if you don't need monitoring

### Note on `profile develop`

- `develop` profile launches services for monitoring (namely grafana, cadvisor and prometheus)

## Local links in docker compose

- Web App — <http://localhost:3050>

- API Docs — <http://localhost:3050/api>

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

Not ready yet.

Technically you can just use docker compose and use it,
but it's not recommended as is to host in public environment.

## Current scope

### Dashboard

- [x] Categorization progress (categorized / uncategorized lines)
- [x] Transcript progress (filled / empty)
- [x] Category data (count and category with most assigned bindings)
- [x] Audio data (total duration)

### Initialization panel

- [x] Upload files
- [x] Assign categories on upload
- [x] Delete files

### Transcript panel

- [x] Play audio
- [x] Assign category
- [x] Add transcript
- [ ] Paginate (broken after latest backend change)
- [ ] Display (broken after latest backend change)

#### Transcript options

- [x] Add category
- [x] Delete category

### Finalise panel

- [ ] Configure finalization (not everything works yet)
- [x] Preview before and after finalization
- [x] Schedule finalization
- [x] Download archive with files from finalization
- [x] Remove archive

## The nearest future

- [ ] Adjust transcript panel to the latest changes to backend pagination
- [ ] Review the way archive is generated
- [ ] Switch to one background task when uploading file instead of running new one each time (which scales horribly)
- [ ] Switch to one background task for finalization instead of running new one
- [ ] Refactor the way queries in backend and request in frontend are handled
- [ ] Review the way files are handled in app
- [ ] Bug fixes
- [ ] Explore Server Sent Events for handling finalisation

## Later future

- [ ] Migrate from MinIO to another S3 compatible service
- [ ] Add dedicated configuration panel
- [ ] Add offline option (IndexedDB?) for demo purposes to deploy on GitHub pages
- [ ] Add deployment example
- [ ] Add handling multiple projects
- [ ] Add authentication
- [ ] Add handling multiple people
