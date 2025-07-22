SELECT referer,count(*) hits_provided FROM `visitor` 
where referer<>"" and referer not like "%sandesh711.com%"
group by referer 
order by hits_provided desc
LIMIT 10;
