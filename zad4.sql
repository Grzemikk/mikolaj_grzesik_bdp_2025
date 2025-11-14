CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    geometry GEOMETRY(Polygon)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    geometry GEOMETRY(LineString)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    geometry GEOMETRY(Point)
);
