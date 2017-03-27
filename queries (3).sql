/*Preksha Raj Shimoga Basavaraja */
/* USC ID:7446436992 */
/* 1 */
select l.lion_id 
from lion l
where sdo_filter(l.shape, sdo_geometry(2003, NULL, NULL, SDO_ELEM_INFO_ARRAY(1,1003,3), SDO_ORDINATE_ARRAY(150,200, 400, 350))) = 'TRUE';

/* 2 */
select l.lion_id
from lion l, pond p
where p.pond_id = 'P1' and sdo_within_distance(l.shape, p.shape, 'distance = 150') = 'TRUE';

/* 3 */
select p.pond_id
from pond p, lion l
where l.lion_id = 'L2' and sdo_nn(p.shape, l.shape) = 'TRUE' and rownum <= 3;

/* 4 */
select l.lion_id, p.pond_id
from table (sdo_join('lion', 'shape', 'pond' , 'shape', 'mask=INSIDE' )) c, lion l, pond p
where c.rowid1 = l.rowid and c.rowid2 = p.rowid;

/* 5 */
select region_id
from region
where region_id in 
                  (
	                select r.region_id
	                from table (sdo_join('lion', 'shape', 'region', 'shape', 'mask=INSIDE' )) c, lion l, region r
	                where c.rowid1 = l.rowid and c.rowid2 = r.rowid
	                MINUS
	                select r.region_id
	                from table (sdo_join('pond', 'shape', 'region', 'shape', 'mask=INSIDE' )) c, pond p, region r
	                where c.rowid1 = p.rowid and c.rowid2 = r.rowid
                  );

/* 6 */
select lion_id 
from lion 
where lion_id not in (
						select l.lion_id
						from lion l, ambulance a
						where sdo_filter(l.shape, a.shape, 'mask=COVEREDBY querytype=join') = 'TRUE'
                     );