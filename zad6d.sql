SELECT
    name,
    ST_Area(geometry)      AS area,
    ST_Perimeter(geometry) AS perimeter
FROM buildings
ORDER BY ST_Area(geometry) DESC
LIMIT 2;
