<p align="center">
  <img src="https://cdn-icons-png.flaticon.com/512/6295/6295417.png" width="100" />
</p>
<p align="center">
    <h1 align="center">dbt - Parking Violation</h1>
</p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/badge/DuckDB-FFF000.svg?style=flat&logo=DuckDB&logoColor=black" alt="DuckDB">
	<img src="https://img.shields.io/badge/Jupyter-F37626.svg?style=flat&logo=Jupyter&logoColor=white" alt="Jupyter">
	<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat&logo=YAML&logoColor=white" alt="YAML">
</p>
<hr>

## Table of contents

> - [Overview](#overview)
> - [Repository Structure](#repository-structure)
> - [How It Works](#how-it-works)
> - [Getting Started](#getting-started)

## Overview

This project leverages dbt (data build tool) to manage, transform, and analyze parking violation data. The goal is to create a streamlined process for data transformation and reporting, enabling better insights and decision-making.

The two csv file in the data folder is just the subset, full dataset can be found in this link: https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2024/pvqr-7yc4/about_data

## Repository Structure

- **`data/`**: Directory for raw data files and DuckDB files.
- **`.github/`**: GitHub-specific configuration, such as workflows.
- **`nyc_parking_violation/`**: Folder for dbt project, containing all of the required dbt folders.
  - **`analyses/`**: Contains SQL files for analysis purposes.
  - **`dbt_packages/`**: Stores dbt package dependencies.
  - **`logs/`**: Contains log files generated during dbt runs.
  - **`macros/`**: Holds reusable SQL snippets and macros.
  - **`models/`**: Contains SQL models for data transformation.
  - **`seeds/`**: Stores CSV files that can be loaded into the database.
  - **`snapshots/`**: Holds SQL files for snapshotting data.
  - **`target/`**: Contains compiled dbt artifacts.
  - **`tests/`**: Stores test files for ensuring data quality.
  - **`.gitignore`**: Specifies files and directories to be ignored by Git.
  - **`.user.yml`**: User-specific configuration.
  - **`dbt_project.yml`**: Main project configuration file for dbt.
  - **`profiles.yml`**: Database connection profiles.
- **`requirements.txt`**: Python dependencies required for the project.
- **`README.md`**: Project documentation.
- **`run_sql_queries.ipynb`**: Use this file to run SQL queries

## How It Works

1. **Data Ingestion**: Raw data is placed in the `data/` directory.
2. **Data Transformation**: The model is created based on the Medallion Architecture principle, utilizing three data tiers: Bronze, Silver, and Gold.
   - **Bronze**: Raw data ingestion from various sources.
   - **Silver**: Cleaned and enriched data.
   - **Gold**: Aggregated and highly refined data ready for reporting and analysis.
3. **Data Validation**: Tests defined in `schema.yml` ensure data quality and consistency.
4. **Data Retrieval**: Use the run_sql_queries.ipynb file to run the SQL queries to check if all the data models are created.

## Getting Started

### Prerequisites

- Install Python 3.x
- Install dbt

### Installation

**Clone the repository**:

```sh
git clone https://github.com/khoa9/dbt-ParkingViolation.git
cd dbt-ParkingViolation
```
