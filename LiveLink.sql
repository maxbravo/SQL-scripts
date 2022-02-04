//Script para identifricar el path de un doc que fue eliminado

select * from dversdata 
where docid= 11122893

select * from providerdata

select version, d.providerid, p.providerdata from dversdata d, providerdata p 
where docid = 11180181 and d.providerid = p.providerid order by d.providerid