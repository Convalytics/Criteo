select id,
case when C17 = 'e5ba7672' then 0.309
	when C17 = '07c540c4' then 0.223
	when C17 = 'd4bb7bd8' then 0.185
	when C17 = '3486227d' then 0.246
	when C17 = '776ce399' then 0.109
	when C17 = '27c07bd6' then 0.278
	when C17 = '8efede7f' then 0.372
	when C17 = '1e88c74f' then 0.138
	when C17 = '2005abd1' then 0.097
	when C17 = 'af5d780c' then 0.063
	else 0.256 end as Predicted	
from test t	
order by t.Id

-- runtime 36 seconds