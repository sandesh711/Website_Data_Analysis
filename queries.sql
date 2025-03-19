--sql queries used for data fetch
--also includes queries used for data transformation before they are exported to excel/csv  
select substr(time,1,7) as time1,count(*) from visitor group by time1 order by time1 desc;
SELECT url,visitor_count FROM view_visitor;
SELECT * FROM `visitor` where referer not like '%sandesh711%' and referer <> ' ' ORDER BY `time` DESC;