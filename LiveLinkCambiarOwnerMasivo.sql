--MBR: 19-Feb-2014 Script para el control de permisos en Content Server

-- PASO 1
-- Determino los usuarios que tienen creados documentos dentro de una carpeta
-- en el dataid XXX se ingresa el id de la carpeta padre y empieza con la búsqueda
SELECT distinct kuaf.NAME
FROM dtree, kuaf
WHERE dtree.USERID = kuaf.id
  START WITH dataid = XXX  
  CONNECT BY PRIOR dataid = parentid
-- PASO2
-- en el dataid XXX se ingresa el id de la carpeta padre y empieza con la búsqueda
-- YYY es el id del creador del documento
-- ZZZZ es el id del nuevo dueño   
UPDATE dtree SET userid = ZZZ
WHERE dataid in
(SELECT dataid
FROM dtree
WHERE userid = YYY
  START WITH dataid = XXX
  CONNECT BY PRIOR dataid = parentid)
-- PASO3
-- en el dataid XXX se ingresa el id de la carpeta padre y empieza con la búsqueda
-- YYY es el id del creador del documento
-- ZZZZ es el id del nuevo dueño   
UPDATE dversdata SET owner = ZZZ
WHERE docid in
(SELECT dataid
FROM dtree
WHERE userid = YYY
  START WITH dataid = XXX
  CONNECT BY PRIOR dataid = parentid)
  
-- AUXILIARES
-- en el dataid XXX se ingresa el id de la carpeta padre y empieza con la búsqueda
SELECT dataid
FROM dtree
  START WITH dataid = XXX
  CONNECT BY PRIOR dataid = parentid
-- en el dataid XXX se ingresa el id de la carpeta padre y empieza con la búsqueda
-- YYY es el id del creador del documento  
SELECT dataid
FROM dtree
WHERE userid = YYY
  START WITH dataid = XXX
  CONNECT BY PRIOR dataid = parentid
