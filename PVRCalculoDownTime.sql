select * from twell w
where w.WELL_NAME like 'Alice 14%'

--EJEMPLO2
--Fecha del Downtime
select * from tdaily_well_tnx  tnx
where tnx.PRODUCTION_DATE = '21-Mar-2011'
and tnx.WELL_ID = 661

--Last Production Date , Production Date Range
select max(tnx.PRODUCTION_DATE), (max(tnx.PRODUCTION_DATE) - 10 + 1) from tdaily_well_tnx  tnx
where tnx.PRODUCTION_DATE < '21-Mar-2011'
and tnx.WELL_ID = 661
and tnx.HOURS_ON_PRODUCTION = 24

--Hourly Oil Rate = (Last Oil Production / Last Production Hours) 
select sum(tnx.PRORATED_OIL + tnx.MEASURED_OIL) / sum(tnx.HOURS_ON_PRODUCTION) from tdaily_well_tnx  tnx
where tnx.PRODUCTION_DATE <= '20-Mar-2011'
and tnx.PRODUCTION_DATE >= '11-Mar-2011' 
and tnx.WELL_ID = 661

select tnx.PRORATED_OIL , tnx.MEASURED_OIL from tdaily_well_tnx  tnx
where tnx.PRODUCTION_DATE <= '20-Mar-2011'
and tnx.PRODUCTION_DATE >= '11-Mar-2011' 
and tnx.WELL_ID = 661

select * from tdaily_well_tnx  tnx
where tnx.MEASURED_OIL != 0