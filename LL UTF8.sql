select * from dtree d
where d.SUBTYPE = 235

With DataIdbatch as (select DataID, ntile(5) over( order by DataID ) as batch from DTree where subtype = 223 Group by DataID) 
select MIN(DataID), MAX(DataID), count(DataID), batch from DataIDbatch group by batch