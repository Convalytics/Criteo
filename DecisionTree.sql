select C25, 
SUM(case when Label = '1' then 1 else 0 end) as ClickCount, 
COUNT(*) as TotalCount,
SUM(case when Label = '1' then 1.0 else 0.0 end)/COUNT(*) as CTR

from train
group by C25
order by COUNT(*) desc