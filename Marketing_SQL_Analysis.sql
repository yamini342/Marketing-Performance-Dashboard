CREATE DATABASE marketing_project;
USE marketing_project;
CREATE TABLE marketing_data(
date DATE,
channel VARCHAR(50),
campaign_name VARCHAR (50),
spend INT,
impressions INT,
Clicks INT,
conversions INT,
revenue int
);
USE marketing_project;
SELECT COUNT(*)FROM marketing_data;
SELECT
 SUM(spend) AS total_spend,
 SUM(revenue) AS total_revenue,
 SUM(conversions) AS 
 total_conversions
 FROM marketing_data;
SELECT
 channel,
 SUM(spend) AS total_spend,
 SUM(revenue) AS total_revenue,
 SUM(conversions) AS
 total_conversions
 FROM marketing_data
 GROUP BY channel;
 SELECT 
  campaign_name,
  SUM(spend) AS total_spend,
  SUM(revenue) AS total_revenue
  FROM marketing_data
  GROUP BY campaign_name
  ORDER BY total_revenue DESC;
  SELECT
   channel,
   SUM(revenue)-SUM(spend) AS
profit,
   ROUND((SUM(revenue)-
   SUM(spend))/ SUM(spend)*100,2) AS
   ROI_percentage
   FROM marketing_data
   GROUP BY channel;
SELECT
  channel,
  ROUND(SUM(conversions) /
SUM(clicks)*100,2) AS
conversions_rate_percentage
FROM marketing_data
GROUP BY channel;
