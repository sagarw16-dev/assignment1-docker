# Assignment 1 – Docker Multi-Container App
This project is a simple two-container Docker application built using Docker Compose.  
It runs a PostgreSQL database in one container and a Python application in another container.  
The Python app connects to the database, runs a few queries, computes basic statistics, and outputs the results.

## What This Stack Does
- Starts a PostgreSQL database with a pre-seeded `trips` table
- Runs a Python application that connects to the database
- Queries trip data and computes basic statistics
- Prints a JSON summary to the terminal
- Saves the same summary to a file for later use

## How to Run the Application
Make sure Docker Desktop is running on your system.
From the root of the project directory, run:

```bash
docker compose up --build
```

To stop and remove the containers and volumes, run:

```bash
docker compose down -v
```

## Output
- The application produces output in two places:
- A JSON summary printed directly to the terminal
- A JSON file written to out/summary.json

## Example Output-
{
  "total_trips": 6,
  "avg_fare_by_city": [
    {"city": "Charlotte", "avg_fare": 16.25},
    {"city": "New York", "avg_fare": 19.0},
    {"city": "San Francisco", "avg_fare": 20.25}
  ],
  "top_by_minutes": [
    {"city": "San Francisco", "minutes": 28, "fare": 29.3},
    {"city": "New York", "minutes": 26, "fare": 27.1}
  ]
}

## Troubleshooting -
If the application fails to connect to the database, wait a few seconds and try again.
Make sure Docker Desktop is running before starting the containers.
Ensure port 5432 is not already in use on your system.
