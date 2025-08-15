FROM oven/bun:1.2.20-slim AS web-base

COPY ./vue-categorise-frontend .

RUN bun install --frozen-lockfile

RUN bun run build

EXPOSE 3050

FROM nginx:1.27.5-bookworm AS base

COPY nginx.conf /etc/nginx/nginx.conf
