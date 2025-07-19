-- Insert only new records from the staging table into the main table.
-- A record is considered unique based on the combination of CreateTime and Address.
-- The LEFT JOIN filters out any duplicates already present in the main table.
-- A TimeLoaded column is added to track when the record was inserted into the main table.
INSERT INTO `miami-traffic.mdpd_traffic_data.mdpd_data`
SELECT s.*, CURRENT_DATETIME() AS TimeLoaded
FROM `miami-traffic.mdpd_traffic_data.mdpd_data_staging` AS s
LEFT JOIN `miami-traffic.mdpd_traffic_data.mdpd_data` AS m
ON s.CreateTime = m.CreateTime AND s.Address = m.Address
WHERE m.CreateTime IS NULL;
