#!/usr/bin/env python
# coding: utf-8

# # Miami Traffic Incidents Data Pull Script

# Load dependencies
import pandas as pd
import requests
import json
from google.cloud import bigquery
import pytz

def load_data_to_staging(request):
    try:
        # Make the request to grab the data
        url = "https://traffic.mdpd.com/api/traffic"
        resp = requests.get(url)

        # Parse the string inside the JSON response (converts from string to a list of dictionaries)
        incidents = json.loads(resp.text)

        # Convert list of dictionaries into a dataframe
        df = pd.DataFrame(incidents)

        # Remove duplicates
        df = df.drop_duplicates()

        # Convert to Eastern Time, then to UTC
        df['CreateTime'] = pd.to_datetime(df['CreateTime']).dt.tz_localize('US/Eastern').dt.tz_convert('UTC')

        # Convert Signal to categorical datatype
        df['Signal'] = df['Signal'].astype('category')

        # Connect to BigQuery
        # Enter Project ID
        project_id = "MIAMI-TRAFFIC"
        client = bigquery.Client()

        # Location to upload data (project->dataset->table name)
        table_id = "miami-traffic.mdpd_traffic_data.mdpd_data_staging"

        # Append new data to table
        job = client.load_table_from_dataframe(df, table_id)
        job.result()

        return "✅ Data loaded to staging table successfully", 200
    
    except Exception as e:
        return f"❌ Failed to load data: {str(e)}", 500
