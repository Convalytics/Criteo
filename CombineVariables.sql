select c9, 
c20, 
c17, --c23, 
COUNT(*) as AllCount, 
SUM(CAST(label as float))/COUNT(*) as CTR
from train
group by C9, c20, C17
order by C9, c20, C17
