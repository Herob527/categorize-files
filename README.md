# Categorize files

## Prerequisites

- Docker
- Docker compose

## Instructions for development

0. Run `git clone 'https://github.com/Herob527/categorize_files  --recursive'`

1. Run `docker compose build`

2. Run `docker compose up --watch`

3. Open [http://localhost:3050](http://localhost:3050) for web-app

4. Open [http://localhost:3051](http://localhost:3051) for API docs

5. Open [http://localhost:3052](http://localhost:3052) for adminer and select `PostgreSQL` as System

## .env file

For environment to set up properly, you need to create a `.env` file containing:

- DB_USER
- DB_PASSWORD
- DB_NAME

Example of `.env` file:

```bash
DB_USER=myuser
DB_PASSWORD=mypassword
DB_NAME=mydb
```

## Instructions for production

Not planned yet
