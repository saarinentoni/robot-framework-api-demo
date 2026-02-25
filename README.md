# Robot Framework API Test Demo

Robot Framework demo project for API test automation using RequestsLibrary. Tests run against JSONPlaceholder (public demo API).

## What this demonstrates
- API test automation with Robot Framework
- Session-based requests (GET/POST)
- Status code and JSON response validation
- Test tagging (smoke / regression)
- CI execution with GitHub Actions (reports uploaded as artifacts)

## Project structure
- tests/ : Robot test suites
- resources/ : shared keywords and variables
- .github/workflows/ : CI pipeline

## Run locally (Windows PowerShell)
cd D:\robotti\robot-demo
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt

# run all tests
robot -d results tests

# run only smoke tests
robot -d results -i smoke tests

## Test reports
After execution, open in browser:
- results/report.html
- results/log.html

## CI (GitHub Actions)
On every push / pull request, GitHub Actions runs the tests and uploads the results/ folder as an artifact.