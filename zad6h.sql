SELECT
    ST_Area(
        ST_SymDifference(
            c.geometry,
            ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
        )
    ) AS area_not_common
FROM buildings c
WHERE c.name = 'BuildingC';
