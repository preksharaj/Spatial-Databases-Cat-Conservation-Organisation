/*Preksha Raj Shimoga Basavaraja */
/* USC ID:7446436992 */

DELETE FROM user_sdo_geom_metadata;

/* Drop the region table */

DROP INDEX region_spatial_idx FORCE;
DELETE FROM region;
DROP TABLE region;

/* Drop the lion table */

DROP INDEX lion_spatial_idx FORCE;
DELETE FROM lion;
DROP TABLE lion;

/* Drop the pond table */

DROP INDEX pond_spatial_idx FORCE;
DELETE FROM pond;
DROP TABLE pond;

/* Drop the ambulance table */

DROP INDEX ambulance_spatial_idx FORCE;
DELETE FROM ambulance;
DROP TABLE ambulance;