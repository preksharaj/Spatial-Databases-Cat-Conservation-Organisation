# Spatial-Databases-Cat-Conservation-Organisation

Panthera, the world’s leading cat conservation organization, is focusing on saving endangered
Lions in African national park. They have divided the park into multiple regions and purchased a
number of ambulances to provide emergency health care service to Lions. Ambulances are
parked at various locations in the park to cover the nearby lions. The park also has several
ponds where Lions go to drink water.
You are given 4 files for this project:
● region.txt
● lion.txt
● ambulancearea.txt
● pond.txt
These files store the spatial data in the following format:
● region.txt. Each region is represented as a 2-dimensional polygon. Each line in this file
represents a region with the following columns: (1) Region ID; (2) Number of vertices on
the polygon (denoted by n); (3) The following 2n columns are the coordinates of the
vertices, respectively, where the 1 and y-coordinate of each vertex is represented by
two consecutive columns. For example, the line “r1, 4, 100, 120, 150, 130, 120, 200,
120, 220” represents a region with region ID “r1”. It has 4 vertices whose coordinates
are (100, 120), (150, 130), (120, 200) and (120, 220), respectively.
● lion.txt. Each Lion is represented as a 2-dimensional point and each line represents a
Lion. The columns are: (1) The Lion ID; (2) The x-coordinate of the Lion; (3) The ycoordinate
of the Lion.
● pond.txt: Each pond is represented by a circle and each line in the file represents a
pond. The columns are: (1) pond id; (2) The x-coordinate of the centre of the pond; (3)
The y-coordinate of the centre of the pond; (4) radius of the pond.
● ambulancearea.txt: Imagine an ambulance area to be circule where centre represents
the location of the ambulance and radius represent the area covered by the ambulance.
Each line in the file represents an ambulance area. The columns are: (1) ambulance id;
(2) The x-coordinate of the ambulance location; (3) The y-coordinate of the ambulance
location; (4) radius it covers.


Files:
1. createdb.sql
● We will use this SQL file to create and populate the database that is used for this project
on Oracle Express 11g.
● You need to design the tables and assign data types to attributes such that the
information of the lions, regions and ambulances can be accessed and manipulated.
● You must use spatial data types such as SDO_GEOMETRY to store location data. For
example, rather than defining two integers to store x and y coordinates, you need to
create one column of SDO_GEOMETRY type and store both coordinates as a point
object.
● You must create spatial index for each tablename-geometry column.

2. dropdb.sql
● This file will be used to clean up all tables, indices and other objects that are created by
createdb.sql.

3. queries.sql
This file should contain the following queries
a) Find all lions inside the query window (150, 200) (400, 350). The coordinates indicate (x, y)
values of the lower left and upper right vertices of query window, respectively.
b) Find all the lions which are at most 150 units away from the pond P1.
d) Find 3 nearest ponds to the lion L2. Nearest neighbors must be ordered from the closest to
the furthest one.
f) List all the lions and ponds where lion is inside the pond.(use spatial join)
h) List all the region/s which has at-least one lion but no pond.
i) Find all the lions which are not in the coverage area of any ambulance.



