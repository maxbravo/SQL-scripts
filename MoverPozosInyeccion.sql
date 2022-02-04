ORA-02292: integrity constraint (PVR_AECI.FK1_TDAILY_WELL_INJ_TNX) violated - child record found
ORA-02291: integrity constraint (PVR_AECI.FK2_TDAILY_WELL_INJ_TNX) violated - parent key not found
ORA-02292: integrity constraint (PVR_AECI.FK1_TMETER_TNX) violated - child record found
ORA-02292: integrity constraint (PVR_AECI.FK1_TWELL_SPECS) violated - child record found
ORA-02292: integrity constraint (PVR_AECI.FK1_TWELL_STATUS) violated - child record found

well_id = 267
battery_id = 36
CAMBIAR a 968

select * from tbattery b
where b.battery_id = 968 

select * from twell w
where w.well_id = 267
and w.battery_id = 36

select * from twell_status w
where w.well_id = 267
and w.battery_id = 36

select * from twell_specs w
where w.well_id = 267
and w.battery_id = 36

select * from tdaily_well_inj_tnx w
where w.well_id = 267
and w.battery_id = 36

select * from tmeter m
where m.METER_ID = 269 
and m.BATTERY_ID = 36

select * from tmeter_tnx m
where m.METER_ID = 269 
and m.BATTERY_ID = 36

-----------------------

update twell w
set w.battery_id = 968 
where w.well_id = 267

update twell_status w
set w.battery_id = 968 
where w.well_id = 267

update twell_specs w
set w.battery_id = 968 
where w.well_id = 267

update tdaily_well_inj_tnx w
set w.battery_id = 968
where w.well_id = 267

update tmeter m
set m.BATTERY_ID = 968
where m.METER_ID = 269 

update tmeter_tnx m
set m.BATTERY_ID = 968
where m.METER_ID = 269

commit