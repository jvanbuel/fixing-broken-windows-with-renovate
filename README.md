# fixing-broken-windows-with-renovate

Template repository with intentionally outdated dependencies for demonstrating [Renovate](https://docs.renovatebot.com/).

## What's inside

| Component | Path | Manager | Outdated dependencies |
|-----------|------|---------|----------------------|
| Dockerfile | `Dockerfile` | `dockerfile` | `python:3.10.0-slim`, `node:18.0.0-alpine`, `uv==0.1.0` |
| Python backend | `backend/` | `uv` | fastapi, uvicorn, pydantic, requests, sqlalchemy, alembic, psycopg2-binary, python-dotenv |
| TypeScript frontend | `frontend/` | `bun` | react, next, typescript, eslint, prettier, axios, zod, zustand |
| Helm chart | `charts/postgresql/` | `helm` | Bitnami PostgreSQL `12.1.0` |
| Infrastructure | `infra/` | `opentofu` / `terraform` | AWS provider `5.20.0`, Random provider `3.5.0` |

## Getting started

1. Fork or use this repo as a template
2. Install the [Renovate GitHub App](https://github.com/apps/renovate) on the repository
3. Renovate will open an onboarding PR, then start creating update PRs for all outdated dependencies
