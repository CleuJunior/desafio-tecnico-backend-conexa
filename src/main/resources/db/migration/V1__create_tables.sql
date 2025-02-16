CREATE TABLE patient (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE attendance (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    dateHour TIMESTAMP NOT NULL,
    patient_id BIGINT,
    FOREIGN KEY (patient_id) REFERENCES patient(id)
);

CREATE TABLE doctor (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    specialty VARCHAR(255),
    cpf VARCHAR(255) UNIQUE NOT NULL,
    birthdate DATE,
    phone VARCHAR(20),
    role VARCHAR(20) NOT NULL
);

