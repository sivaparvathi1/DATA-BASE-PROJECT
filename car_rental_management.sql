-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-14 04:02:36.803

-- tables
-- Table: billing
CREATE TABLE billing (
    billing_num int NOT NULL,
    rent_ammount int NOT NULL,
    penalty_ammount int NOT NULL,
    total_ammount int NOT NULL,
    billing_date date NOT NULL,
    booking_id int NOT NULL,
    CONSTRAINT billing_pk PRIMARY KEY (billing_num)
);

-- Table: booking
CREATE TABLE booking (
    booking_id int NOT NULL,
    starting_date date NULL,
    return_date date NULL,
    rough_ammount int NOT NULL,
    CONSTRAINT booking_pk PRIMARY KEY (booking_id)
);

-- Table: car
CREATE TABLE car (
    car_model varchar(25) NULL,
    car_mileage int NULL,
    car_color varchar(10) NULL,
    seating int NOT NULL,
    billing_num int NOT NULL
);

-- Table: customer
CREATE TABLE customer (
    cust_name varchar(25) NULL,
    cust_phnnum int NULL,
    licensenumber varchar(10) NOT NULL,
    address varchar(20) NOT NULL,
    booking_id int NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (licensenumber)
);

-- Table: location
CREATE TABLE location (
    city varchar(20) NOT NULL,
    street_number int NOT NULL,
    zip_code int NULL,
    state varchar(20) NOT NULL,
    booking_id int NOT NULL,
    CONSTRAINT location_pk PRIMARY KEY (street_number)
);

-- foreign keys
-- Reference: billing_booking (table: billing)
ALTER TABLE billing ADD CONSTRAINT billing_booking FOREIGN KEY billing_booking (booking_id)
    REFERENCES booking (booking_id);

-- Reference: car_billing (table: car)
ALTER TABLE car ADD CONSTRAINT car_billing FOREIGN KEY car_billing (billing_num)
    REFERENCES billing (billing_num);

-- Reference: customer_booking (table: customer)
ALTER TABLE customer ADD CONSTRAINT customer_booking FOREIGN KEY customer_booking (booking_id)
    REFERENCES booking (booking_id);

-- Reference: location_booking (table: location)
ALTER TABLE location ADD CONSTRAINT location_booking FOREIGN KEY location_booking (booking_id)
    REFERENCES booking (booking_id);

-- End of file.

