FROM python:3.10.0-slim

RUN pip install uv==0.1.0

WORKDIR /app
COPY backend/ ./backend/

RUN cd backend && uv sync

FROM node:18.20.8-alpine AS frontend

WORKDIR /app
COPY frontend/ ./frontend/

RUN cd frontend && npm install
