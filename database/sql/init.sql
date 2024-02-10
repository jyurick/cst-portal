DROP TABLE ClientData;
CREATE TABLE ClientData (
    ID SERIAL PRIMARY KEY,
    Year INT,
    Active CHAR(1),
    ClientID BIGINT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    City VARCHAR(50),
    Indigenous CHAR(1),
    PWD CHAR(1),
    Vet CHAR(1),
    EmergencySheltered CHAR(1),
    BusPass CHAR(1),
    ClothingSupplement CHAR(1),
    PetDeposit CHAR(1),
    PSSG CHAR(1),
    Status VARCHAR(50),
    Deceased DATE
    /*CONSTRAINT chk_bus_pass_eligibility CHECK (
    	NOT ((date_part('year', current_date) - date_part('year', DateOfBirth)) >= 60) 
        AND NOT (PWD = 'Y') 
        AND NOT (Indigenous = 'Y') 
        OR (BusPass = 'Y')
    ),
    CONSTRAINT chk_clothing_supplement_availability CHECK (
        NOT (EmergencySheltered = 'Y' AND ClothingSupplement = 'Y')
    ),
    CONSTRAINT chk_pssg_flag_active_client CHECK (
        NOT (PSSG = 'Y' AND Active = 'Y')
    ),
    CONSTRAINT chk_deceased_clients CHECK (
        (Deceased IS NULL) OR (Active = 'N')
    )*/
);

CREATE INDEX idx_firstname_lastname ON ClientData (FirstName, LastName);



