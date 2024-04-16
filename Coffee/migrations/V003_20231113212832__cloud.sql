CREATE TABLE astronauts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(50),
    spaceflights INT,
    mission_specialty VARCHAR(100),
    blogman int,
    ht int
);
