Project Overview
================
This project explores music streaming data using the Deezer API, implementing an ETL (Extract, Transform, Load) workflow 
to store and analyze music-related information.

Objective:
- Extract artist and track data.
- Transform it to fit a relational database schema.
- Load it into a PostgreSQL database for structured analysis.

The dataset consists of artists and track information, allowing analysis of key music industry metrics such as 
artist popularity, album rankings, and track insights. This project also integrates data engineering libraries, 
SQL queries for analysis, and API endpoints via Flask.

------------------------------------------------------------

Instructions for Using and Interacting with the Project
=======================================================

ETL Workflow for Data Ingestion
-------------------------------
1. Extracted artist and track data from the Deezer API.
2. Transformed data to align with our database schema.
3. Loaded data into a relational PostgreSQL database.

Transforming and Storing Data in the Database
---------------------------------------------
- Standardized artist and track data into two main tables:
  - **artists** (artist details, fan metrics, album count)
  - **tracks_data** (track-specific details, album association, popularity ranking)
- Created an **Entity Relationship Diagram (ERD)** to illustrate the **one-to-many relationship** between artists and tracks.
- Stored the transformed dataset in **PostgreSQL** for structured querying.

Querying and Analyzing Data
---------------------------
The structured database enabled key queries:
✅ Identify **the number of tracks per artist**.  
✅ Rank **the top 5 artists** by fan-to-album ratio.  
✅ Determine **the top 10 artists with the most fans**.  
✅ Analyze **the top 10 albums** based on popularity rankings.  
✅ Calculate **the average track duration per artist**.  

------------------------------------------------------------

Documentation and Data Engineering Enhancements
===============================================
- **ETL Workflow Documentation**: Created with a **visual flowchart**.
- **Entity Relationship Diagram (ERD)**: Illustrates **artist-track relationships**.
- **Flask API**: Implemented with **JSON output** to retrieve data dynamically.
- **Pandas**: Used to **process and visualize extracted data**.

------------------------------------------------------------

Additional Libraries Used
=========================
📌 **Rich** – Enhanced console output formatting for better visualization.  
📌 **Pydantic** – Enforced strict data validation and schema consistency.  

------------------------------------------------------------

Ethical Considerations
======================
✅ **API Terms Compliance** – The project adheres to **Deezer’s API policies**, ensuring that data is used solely for **academic purposes** and not for commercial gain.  
✅ **Data Privacy** – No **personally identifiable information (PII)** was extracted or stored.  
✅ **Transparency & Attribution** – All **data sources and external resources** used are properly credited.  

------------------------------------------------------------

References
==========
📌 **Data Source**: [Deezer API](https://developers.deezer.com/)  
📌 **External Code References**: Used **open-source documentation** for Flask API setup, PostgreSQL integration, and ETL workflows.  
