SELECT * FROM `miami-traffic.mdpd_traffic_data.mdpd_data` ORDER BY CreateTime DESC;
SELECT * FROM `miami-traffic.mdpd_traffic_data.mdpd_data_staging`;

TRUNCATE TABLE `miami-traffic.mdpd_traffic_data.mdpd_data`;
TRUNCATE TABLE `miami-traffic.mdpd_traffic_data.mdpd_data_staging`;

ALTER TABLE `miami-traffic.mdpd_traffic_data.mdpd_data_staging`
ADD COLUMN TimeLoaded DATETIME;

CREATE OR REPLACE TABLE `miami-traffic.mdpd_traffic_data.mdpd_data_staging` AS
SELECT * EXCEPT(TimeLoaded)
FROM `miami-traffic.mdpd_traffic_data.mdpd_data_staging`;
