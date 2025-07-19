# Miami Traffic Accident Pipeline

An automated data pipeline and analytics project that scrapes Miami-Dade traffic incident data hourly and loads it into Google BigQuery for analysis and visualization.

## Overview

This project monitors real-time traffic incidents in Miami-Dade County, Florida. It is designed to support transportation analysis and incident trends by storing live streaming data provided by the Miami-Dade Police Department.

Key features:
- **Hourly web scraping** of a public traffic incident source
- **Google Cloud Functions** and **Cloud Scheduler** to automate the scraping and upload process
- **BigQuery** staging and production tables to handle deduplication and clean data storage
- Scalable, serverless architecture for robust performance and low maintenance
- Future plans for visualization dashboards and predictive modeling


## Technologies Used

- **Python 3.13** with `pandas`, `requests`, `google-cloud-bigquery`
- **Google Cloud Platform**:
  - Cloud Functions
  - Cloud Scheduler
  - Cloud Workflows
  - BigQuery
- **Version Control**: Git + GitHub


## Data Dictionary

| Column Name  | Data Type  | Description                                                          |
| ------------ | ---------- | -------------------------------------------------------------------- |
| `CreateTime` | `DATETIME` | Date and time the incident was recorded (in UTC, no timezone offset) |
| `Signal`     | `STRING`   | Type or category of the traffic event or signal                      |
| `Address`    | `STRING`   | Address or intersection where the event occurred                     |
| `Location`   | `STRING`   | Additional description of the location (if available)                |
| `Grid`       | `STRING`   | Grid or zone identifier used by local authorities                    |
| `MapX`       | `FLOAT64`  | X coordinate on the map (projected spatial reference)                |
| `MapY`       | `FLOAT64`  | Y coordinate on the map (projected spatial reference)                |
| `Longitude`  | `FLOAT64`  | Longitude in decimal degrees (WGS84)                                 |
| `Latitude`   | `FLOAT64`  | Latitude in decimal degrees (WGS84)                                  |
| `TimeLoaded` | `DATETIME` | Timestamp of when the record was inserted into the main table (UTC)  |


## Author

**Steven Villalon**  
MBA | Future Data Scientist | Miami-Based  
[LinkedIn](https://www.linkedin.com/in/stevenvillalon) • [GitHub](https://github.com/stevenvillalon)
