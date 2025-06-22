FROM nginx:1.27.5-bookworm AS base

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 3050
