FROM python:3.14.3-slim

RUN pip install uv==0.1.0

WORKDIR /app
COPY backend/ ./backend/

RUN cd backend && uv sync

FROM node:18.0.0-alpine AS frontend

WORKDIR /app
COPY frontend/ ./frontend/

RUN cd frontend && npm install
