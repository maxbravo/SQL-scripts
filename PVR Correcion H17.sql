LOW TO UPP
select * from twell w
where upper(w.WELL_NAME) like 'HORMIGUERO 17%'
UPP T = 908
LOW T = 740
--ORIGEN
select * from tdaily_well_tnx t --(527 registros)
where t.WELL_ID = 740
and t.PRODUCTION_DATE >= '15-JUN-2011'
and t.PRODUCTION_DATE <= '22-NOV-2012'
select * from twell_specs s     --(465 registros)
where s.WELL_ID = 740
and s.PRODUCTION_DATE >= '15-JUN-2011'
and s.PRODUCTION_DATE <= '22-NOV-2012'
--DESTINO
select * from tdaily_well_tnx t --(19 registros)
where t.WELL_ID = 908
and t.PRODUCTION_DATE >= '15-JUN-2011'
and t.PRODUCTION_DATE <= '22-NOV-2012'
select * from twell_specs s     --(13 registros)
where s.WELL_ID = 908
and s.PRODUCTION_DATE >= '15-JUN-2011'
and s.PRODUCTION_DATE <= '22-NOV-2012'
--LIMPIO DESTINO 
delete twell_specs s     --(13 registros)
where s.WELL_ID = 908
and s.PRODUCTION_DATE >= '15-JUN-2011'
and s.PRODUCTION_DATE <= '22-NOV-2012'
delete tdaily_well_tnx t --(19 registros)
where t.WELL_ID = 908
and t.PRODUCTION_DATE >= '15-JUN-2011'
and t.PRODUCTION_DATE <= '22-NOV-2012'
--MUEVO REGISTROS
update tdaily_well_tnx t --(527 registros)
set t.WELL_ID = 908
where t.WELL_ID = 740
and t.PRODUCTION_DATE >= '15-JUN-2011'
and t.PRODUCTION_DATE <= '22-NOV-2012'
update twell_specs s     --(465 registros)
set s.WELL_ID = 908
where s.WELL_ID = 740
and s.PRODUCTION_DATE >= '15-JUN-2011'
and s.PRODUCTION_DATE <= '22-NOV-2012'