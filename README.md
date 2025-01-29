# Project-3---Team-4
Project Overview
================
This project explores music streaming data using the Deezer API, implementing an ETL (Extract, Transform, Load) workflow 
to store and analyze music-related information.

Objective:
- Extract artist and track data
- Transform it to fit a relational database schema
- Load it into a PostgreSQL database for structured analysis

The dataset consists of artists and track information, allowing analysis of key music industry metrics such as 
artist popularity, album rankings, and track insights. This project also integrates data engineering libraries, 
SQL queries for analysis, and API endpoints via Flask.

------------------------------------------------------------

Instructions for Using the Project
==================================

ETL Workflow for Data Ingestion
-------------------------------
1. Extract artist and track data from the Deezer API.
2. Transform data to align with the database schema.
3. Load data into a PostgreSQL database.

Transforming and Storing Data in the Database
---------------------------------------------
- Standardized data into two main tables:
  - artists (artist details, fan metrics, album count)
  - tracks_data (track-specific details, album association, popularity ranking)
- Created an Entity Relationship Diagram (ERD) to illustrate the one-to-many relationship between artists and tracks.
- Stored the transformed dataset in PostgreSQL for structured querying.

Querying and Analyzing Data
---------------------------
The structured database enables key queries such as:
✅ Identify the number of tracks per artist.
✅ Rank the top 5 artists by fan-to-album ratio.
✅ Determine the top 10 artists with the most fans.
✅ Analyze the top 10 albums based on popularity rankings.
✅ Calculate the average track duration per artist.

------------------------------------------------------------

Documentation and Enhancements
==============================
- ETL Workflow Documentation: Created with a visual flowchart.
- Entity Relationship Diagram (ERD): Illustrates artist-track relationships.
- Flask API: Implemented to dynamically retrieve JSON output.
- Pandas: Used for data processing and visualization.

------------------------------------------------------------

Additional Libraries Used
=========================
📌 Rich – Enhanced console output formatting.
📌 Pydantic – Enforced strict data validation and schema consistency.

------------------------------------------------------------

Ethical Considerations
======================
✅ API Terms Compliance: Adheres to Deezer’s API policies (academic use only, no commercial gain).
✅ Data Privacy: No personally identifiable information (PII) was extracted or stored.
✅ Transparency & Attribution: All data sources and external resources are properly credited.

------------------------------------------------------------

References
==========
📌 Data Source: Deezer API (https://developers.deezer.com/)
📌 External Code References: Used open-source documentation for Flask API setup, PostgreSQL integration, and ETL workflows.
