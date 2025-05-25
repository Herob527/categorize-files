# Categorize files

## Prerequisites

- Docker
- Docker compose

## Instructions for development

0. Run `git clone 'https://github.com/Herob527/categorize_files  --recursive'`

1. Create .env file with environment variables in `.env file` section

2. Run `docker compose up --build --watch`

## Links in docker compose

- [Web App](http://localhost:3050)

- [API Docs](http://localhost:3051)

- [Adminer](http://localhost:3052)

  - Mind to select PostreSQL system

- [Minio](http://localhost:9001)

## .env file

For environment to set up properly, you need to create a `.env` file containing:

- DB_USER
- DB_PASSWORD
- DB_NAME
- MINIO_ROOT_USER
- MINIO_ROOT_PASSWORD
  Example of `.env` file:

```bash
DB_USER=myuser
DB_PASSWORD=mypassword
DB_NAME=mydb
MINIO_ROOT_USER=minio
MINIO_ROOT_PASSWORD=minio_123$
```

## Instructions for production

Not planned yet
