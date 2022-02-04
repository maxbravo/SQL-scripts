select * from location l
where l.WELL_NAME like 'W%'

667

commit

select * from tdaily_well_tnx w
where w.WELL_ID = 667
and w.PRODUCTION_DATE >= '22-Nov-2011' 
and w.PRODUCTION_DATE <= '6-Feb-2012'


insert into tdaily_well_tnx values(1,381,667,'1-Feb-2012','Y','Y','N','T',0,0,0,'S',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96.6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,null,2.9637,
0.0025,84.2029,0,0,0,0,0,0,0,100,null,1,null,0,1,null,1,0,'DE',255,0,null,null,'18-Dec-2009',0,0,0,'N','N','N','N','C','I','C','I','D','D','U','U',0,0,0,0,0,0,0,0,0,0,0,0,
null,'G',0,0,'MROMERO',sysdate,24,null,'N');