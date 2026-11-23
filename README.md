# GitHub Actions Capstone

A Flask web application built as part of the Day 48 GitHub Actions capstone project to demonstrate an end-to-end CI/CD pipeline.

## What This App Does
- **`/`**: Renders `templates/index.html`.
- **`/health`**: Returns `Server is up and running` to verify the service is healthy.
- **`run.py`**: Starts the Flask application on port `5000`.

## Project Files
- `app.py` — Flask routes (`/` and `/health`)
- `run.py` — Application entry point running on port `5000`
- `templates/index.html` — HTML page served at `/`
- `requirements.txt` — Python dependencies (`Flask`, `Werkzeug`)
- `Dockerfile` — Container image definition using `python:3.12-slim`
- `test_health.sh` — Script that starts the app and curls `/health` to verify it responds properly

## Running Locally
```bash
pip install -r requirements.txt
./test_health.sh
