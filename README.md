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


## Author

**Steven Villalon**  
MBA | Future Data Scientist | Miami-Based  
[LinkedIn](https://www.linkedin.com/in/stevenvillalon) • [GitHub](https://github.com/stevenvillalon)
