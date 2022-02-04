-- AVG DIARIO PROD 2012
select sum(w.PRORATED_OIL)/count(distinct(w.PRODUCTION_DATE)) 
from tdaily_well_tnx w
where w.PRODUCTION_DATE >= '1-Jan-2012'

--AVG DIARIO PROD DESDE 2004
select to_char(w.PRODUCTION_DATE,'YYYY'), round(sum(w.PRORATED_OIL)/365,0)
from tdaily_well_tnx w
where w.PRODUCTION_DATE >= '1-Jan-2004'
group by to_char(w.PRODUCTION_DATE,'YYYY')
order by to_char(w.PRODUCTION_DATE,'YYYY')

--CURRENT TOP TEN
select ww.WELL_NAME ,round(w.PRORATED_OIL,0), w.PRODUCTION_DATE
from tdaily_well_tnx w, twell ww
where w.PRODUCTION_DATE >= (SYSDATE -2)
and ww.WELL_ID = w.WELL_ID
order by w.PRORATED_OIL desc 