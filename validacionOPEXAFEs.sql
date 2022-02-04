select count(*) 
from fin_allafe_reporting a
where trim(a.AFE_CC) not in
(
select distinct(trim(a.AFE_CC))
from fin_afe_reporting a
)

5820

3913