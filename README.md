# Robot Framework demo (API tests)

Small Robot Framework demo project that runs API tests against JSONPlaceholder.

## Run locally

```bash
python -m venv .venv
# Windows: .venv\Scripts\activate
source .venv/bin/activate

pip install -r requirements.txt
robot -d results tests