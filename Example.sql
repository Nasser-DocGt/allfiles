CREATE TABLE car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7)NOT NULL,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car(id),
    UNIQUE(car_id)
);




INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('Fernada', 'Beardon', 'Female', 'fernadab@is.gd', '1953-10-28', 'Germany');

INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('Omar', 'Colmore', 'Male', null, '1921-04-03', 'Finland');

INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('Adriana', 'Matuschek', 'Female', 'amatuschek2@feedburner.com', '1921-04-03', 'France');

INSERT INTO car (make, model, price) 
VALUES ('Land Rover', 'Sterling', '87665.38');
INSERT INTO car (make, model, price) 
VALUES ('GMC', 'Acadia', '17662.69');
