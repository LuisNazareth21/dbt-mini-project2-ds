# Digitalskola - Datakage - Project 2

This project provides a comprehensive guide on using DBT (Data Build Tool) to transform data effectively. The workflow for this project includes uploading CSV data, storing it in a PostgreSQL database, and transforming raw data into business-specific tables using DBT.

## Table of Contents
- [Project Overview](#project-overview)
- [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Docker Compose Configuration](#docker-compose-configuration)
  - [Starting the Containers](#starting-the-containers)
- [Data Upload](#data-upload)
  - [Database Connection with DBeaver](#database-connection-with-dbeaver)
  - [Uploading CSV Files](#uploading-csv-files)
- [Running DBT](#running-dbt)
  - [Testing the DBT Environment](#testing-the-dbt-environment)
  - [Executing DBT Transformations](#executing-dbt-transformations)
- [Conclusion](#conclusion)

## Project Overview

In this project, we will demonstrate how to utilize DBT for transforming data within a PostgreSQL environment. The main steps involved are setting up the environment, uploading data, and running DBT transformations to meet specific business needs.

## Setup

### Prerequisites

Before starting, ensure you have the following installed on your machine:
- Docker
- Docker Compose
- DBeaver (or any other database management tool)
- DBT (installed in the Python container)

### Docker Compose Configuration

Create a `docker-compose.yml` file to set up the necessary containers. This file should include configurations for:
- A PostgreSQL container to host the database.
- A Python container to run DBT commands.

Here is an example `docker-compose.yml` file:

```yaml
version: '3.8'
services:
  db:
    image: postgres:latest
    environment:
      POSTGRES_DB: db
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
    ports:
      - "5432:5432"
    volumes:
      - db_data:/var/lib/postgresql/data

  python:
    image: python:3.9
    volumes:
      - .:/app
    working_dir: /app
    command: tail -f /dev/null
    depends_on:
      - db
    environment:
      DBT_PROFILES_DIR: /app

volumes:
  db_data:
```

### Starting the Containers

To start the containers, run the following command in your terminal:

```sh
docker-compose up -d
```

This command will start the PostgreSQL and Python containers in detached mode.

## Data Upload

### Database Connection with DBeaver

1. Open DBeaver and create a new database connection.
2. Use the following connection details:
   - Host: `localhost`
   - Port: `5432`
   - Database: `db`
   - User: `user`
   - Password: `password`
3. Test the connection to ensure it works correctly.

### Uploading CSV Files

1. Once connected to the database, use DBeaver to upload your CSV files.
2. Import the CSV data into appropriate tables within the database.
3. Verify the data upload by querying the tables to ensure the data is correctly loaded.

## Running DBT

### Testing the DBT Environment

Before running any transformations, ensure the DBT environment is set up correctly:

```sh
docker-compose exec python bash -c "dbt debug --profile-dir ./ --project-dir ./"
```

This command will check the DBT configuration and ensure that everything is set up properly.

### Executing DBT Transformations

To run the DBT transformations, execute the following command:

```sh
docker-compose exec python bash -c "dbt run --profile-dir ./ --project-dir ./"
```

This command will apply the transformations defined in your DBT project, converting raw data into refined tables based on your business needs.

## Conclusion

In this project, we demonstrated how to set up a PostgreSQL database and a Python environment using Docker, upload CSV data to the database, and use DBT to transform the raw data into meaningful business-specific tables. By following these steps, you can effectively manage and transform your data to meet specific business requirements.