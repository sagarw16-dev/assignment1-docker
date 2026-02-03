@echo off
IF "%1"=="build" (
    docker compose build
) ELSE IF "%1"=="up" (
    docker compose up --build
) ELSE IF "%1"=="down" (
    docker compose down -v
) ELSE IF "%1"=="clean" (
    docker compose down -v
    rmdir /s /q out
    mkdir out
) ELSE (
    echo Usage: run.bat [build^|up^|down^|clean]
    echo Defaulting to 'up'...
    docker compose up --build
)