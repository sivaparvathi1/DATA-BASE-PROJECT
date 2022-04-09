-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-05 04:36:31.22

-- tables
-- Table: Billing
CREATE TABLE Billing (
    billing_num int NOT NULL,
    rent_ammount int NOT NULL,
    penalty_ammount int NOT NULL,
    Total_ammount int NOT NULL,
    Booking_Booking_id int NOT NULL,
    CONSTRAINT Billing_pk PRIMARY KEY (billing_num)
);

-- Table: Booking
CREATE TABLE Booking (
    Booking_id int NOT NULL,
    starting_date date NOT NULL,
    return_date date NOT NULL,
    rough_ammount int NOT NULL,
    CONSTRAINT Booking_pk PRIMARY KEY (Booking_id)
);

-- Table: Car
CREATE TABLE Car (
    car_model varchar(25) NULL,
    car_mileage int NULL,
    car_color varchar(10) NULL,
    seating int NOT NULL,
    Billing_billing_num int NOT NULL
);

-- Table: Customer
CREATE TABLE Customer (
    cust_name varchar(25) NULL,
    cust_phnnum int NULL,
    Licensenumber varchar(20) NULL,
    Address varchar(20) NOT NULL,
    Booking_Booking_id int NOT NULL
);

-- Table: Location
CREATE TABLE Location (
    city varchar(20) NOT NULL,
    street_number int NOT NULL,
    zipcode int NOT NULL,
    state varchar(20) NOT NULL,
    Booking_Booking_id int NOT NULL
);

-- foreign keys
-- Reference: Billing_Booking (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Booking FOREIGN KEY Billing_Booking (Booking_Booking_id)
    REFERENCES Booking (Booking_id);

-- Reference: Car_Billing (table: Car)
ALTER TABLE Car ADD CONSTRAINT Car_Billing FOREIGN KEY Car_Billing (Billing_billing_num)
    REFERENCES Billing (billing_num);

-- Reference: Customer_Booking (table: Customer)
ALTER TABLE Customer ADD CONSTRAINT Customer_Booking FOREIGN KEY Customer_Booking (Booking_Booking_id)
    REFERENCES Booking (Booking_id);

-- Reference: Location_Booking (table: Location)
ALTER TABLE Location ADD CONSTRAINT Location_Booking FOREIGN KEY Location_Booking (Booking_Booking_id)
    REFERENCES Booking (Booking_id);

-- End of file.
