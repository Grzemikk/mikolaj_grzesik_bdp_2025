SELECT
    b.name,
    ST_AsText(ST_Centroid(b.geometry)) AS centroid_wkt,
    ST_Y(ST_Centroid(b.geometry))      AS centroid_y
FROM buildings b
WHERE ST_Y(ST_Centroid(b.geometry)) >
      (
        SELECT ST_Y(ST_Centroid(geometry))
        FROM roads
        WHERE name = 'RoadX'
      );
