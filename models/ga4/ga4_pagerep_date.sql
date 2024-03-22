{{ config(materialized="table" ) }}

select 
    'date' as date,
    SUM(CAST(userEngagementDuration as INT)) as user_engagement_duration
from 
    ga4_pages_path_report
group by
    'date'