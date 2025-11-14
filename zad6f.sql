SELECT
    ST_Area(
        ST_Difference(
            c.geometry,
            ST_Buffer(b.geometry, 0.5)
        )
    ) AS area
FROM buildings b,
     buildings c
WHERE b.name = 'BuildingB'
  AND c.name = 'BuildingC';
