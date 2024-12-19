-- Drop and create database
DROP DATABASE IF EXISTS hospital_management;
CREATE DATABASE hospital_management;

USE hospital_management;

-- User Login Table
DROP TABLE IF EXISTS online_retail_app_user_login;
CREATE TABLE online_retail_app_user_login (
    user_id VARCHAR(255) PRIMARY KEY,
    user_password VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sign_up_on DATE,
    email_id VARCHAR(255)
);

-- Patient Table
DROP TABLE IF EXISTS patient;
CREATE TABLE patient (
    email VARCHAR(50) PRIMARY KEY,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

-- Medical History Table
DROP TABLE IF EXISTS medical_history;
CREATE TABLE medical_history (
    medical_history_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL,
    surgeries VARCHAR(100) NOT NULL,
    medication VARCHAR(100) NOT NULL
);

-- Doctor Table
DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor (
    email VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(20) NOT NULL,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Appointment Table
DROP TABLE IF EXISTS appointment;
CREATE TABLE appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    status VARCHAR(15) NOT NULL
);

-- Patient Visits Table
DROP TABLE IF EXISTS patient_visits;
CREATE TABLE patient_visits (
    patient VARCHAR(50) NOT NULL,
    appt INT NOT NULL,
    concerns VARCHAR(40) NOT NULL,
    symptoms VARCHAR(40) NOT NULL,
    PRIMARY KEY (patient, appt),
    FOREIGN KEY (patient) REFERENCES patient (email),
    FOREIGN KEY (appt) REFERENCES appointment (appointment_id)
);

-- Schedule Table
DROP TABLE IF EXISTS schedule;
CREATE TABLE schedule (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    break_time TIME NOT NULL,
    day VARCHAR(20) NOT NULL
);

-- Patients History Table
DROP TABLE IF EXISTS patients_history;
CREATE TABLE patients_history (
    patient VARCHAR(50) NOT NULL,
    history INT NOT NULL,
    PRIMARY KEY (history),
    FOREIGN KEY (patient) REFERENCES patient (email),
    FOREIGN KEY (history) REFERENCES medical_history (medical_history_id)
);

-- Diagnose Table
DROP TABLE IF EXISTS diagnose;
CREATE TABLE diagnose (
    appt INT NOT NULL,
    doctor VARCHAR(50) NOT NULL,
    diagnosis VARCHAR(40) NOT NULL,
    prescription VARCHAR(50) NOT NULL,
    PRIMARY KEY (appt, doctor),
    FOREIGN KEY (appt) REFERENCES appointment (appointment_id),
    FOREIGN KEY (doctor) REFERENCES doctor (email)
);

-- Doctor Schedules Table
DROP TABLE IF EXISTS doctor_schedules;
CREATE TABLE doctor_schedules (
    sched INT NOT NULL,
    doctor VARCHAR(50) NOT NULL,
    PRIMARY KEY (sched, doctor),
    FOREIGN KEY (sched) REFERENCES schedule (schedule_id),
    FOREIGN KEY (doctor) REFERENCES doctor (email)
);

-- Doctor View History Table
DROP TABLE IF EXISTS doctor_view_history;
CREATE TABLE doctor_view_history (
    history INT NOT NULL,
    doctor VARCHAR(50) NOT NULL,
    PRIMARY KEY (history, doctor),
    FOREIGN KEY (history) REFERENCES medical_history (medical_history_id),
    FOREIGN KEY (doctor) REFERENCES doctor (email)
);

INSERT INTO online_retail_app_user_login (user_id, user_password, first_name, last_name, sign_up_on, email_id)
VALUES
('user001', 'password1', 'John', 'Doe', '2023-01-01', 'john.doe@example.com'),
('user002', 'password2', 'Jane', 'Smith', '2023-01-02', 'jane.smith@example.com'),
('user003', 'password3', 'Alice', 'Brown', '2023-01-03', 'alice.brown@example.com'),
('user004', 'password4', 'Bob', 'Davis', '2023-01-04', 'bob.davis@example.com'),
('user005', 'password5', 'Emma', 'Wilson', '2023-01-05', 'emma.wilson@example.com'),
('user006', 'password6', 'Liam', 'Taylor', '2023-01-06', 'liam.taylor@example.com'),
('user007', 'password7', 'Olivia', 'Anderson', '2023-01-07', 'olivia.anderson@example.com'),
('user008', 'password8', 'Noah', 'Thomas', '2023-01-08', 'noah.thomas@example.com'),
('user009', 'password9', 'Ava', 'Moore', '2023-01-09', 'ava.moore@example.com'),
('user010', 'password10', 'William', 'Jackson', '2023-01-10', 'william.jackson@example.com');

INSERT INTO patient (email, password, name, address, gender)
VALUES
('patient001@example.com', 'password1', 'John Doe', '123 Main St', 'Male'),
('patient002@example.com', 'password2', 'Jane Smith', '456 Elm St', 'Female'),
('patient003@example.com', 'password3', 'Alice Brown', '789 Maple Ave', 'Female'),
('patient004@example.com', 'password4', 'Bob Davis', '321 Oak St', 'Male'),
('patient005@example.com', 'password5', 'Emma Wilson', '654 Pine St', 'Female'),
('patient006@example.com', 'password6', 'Liam Taylor', '987 Cedar St', 'Male'),
('patient007@example.com', 'password7', 'Olivia Anderson', '147 Birch St', 'Female'),
('patient008@example.com', 'password8', 'Noah Thomas', '258 Spruce St', 'Male'),
('patient009@example.com', 'password9', 'Ava Moore', '369 Willow St', 'Female'),
('patient010@example.com', 'password10', 'William Jackson', '741 Redwood St', 'Male');

INSERT INTO medical_history (date, conditions, surgeries, medication)
VALUES
('2023-01-01', 'Hypertension', 'Appendectomy', 'Lisinopril'),
('2023-01-02', 'Diabetes', 'None', 'Metformin'),
('2023-01-03', 'Asthma', 'None', 'Albuterol'),
('2023-01-04', 'Heart Disease', 'Bypass Surgery', 'Atorvastatin'),
('2023-01-05', 'Arthritis', 'None', 'Ibuprofen'),
('2023-01-06', 'Migraine', 'None', 'Sumatriptan'),
('2023-01-07', 'Allergy', 'None', 'Cetirizine'),
('2023-01-08', 'Depression', 'None', 'Sertraline'),
('2023-01-09', 'Chronic Pain', 'None', 'Gabapentin'),
('2023-01-10', 'Obesity', 'Gastric Bypass', 'Orlistat');


INSERT INTO doctor (email, gender, password, name)
VALUES
('doctor001@example.com', 'Male', 'docpass1', 'Dr. John Smith'),
('doctor002@example.com', 'Female', 'docpass2', 'Dr. Jane Doe'),
('doctor003@example.com', 'Male', 'docpass3', 'Dr. Alex Brown'),
('doctor004@example.com', 'Female', 'docpass4', 'Dr. Emily Davis'),
('doctor005@example.com', 'Male', 'docpass5', 'Dr. Robert Wilson'),
('doctor006@example.com', 'Female', 'docpass6', 'Dr. Olivia Taylor'),
('doctor007@example.com', 'Male', 'docpass7', 'Dr. Liam Thomas'),
('doctor008@example.com', 'Female', 'docpass8', 'Dr. Ava Moore'),
('doctor009@example.com', 'Male', 'docpass9', 'Dr. Noah Jackson'),
('doctor010@example.com', 'Female', 'docpass10', 'Dr. Emma Brown');


INSERT INTO appointment (date, start_time, end_time, status)
VALUES
('2023-01-05', '09:00:00', '09:30:00', 'Completed'),
('2023-01-06', '10:00:00', '10:30:00', 'Pending'),
('2023-01-07', '11:00:00', '11:30:00', 'Completed'),
('2023-01-08', '12:00:00', '12:30:00', 'Cancelled'),
('2023-01-09', '13:00:00', '13:30:00', 'Completed'),
('2023-01-10', '14:00:00', '14:30:00', 'Pending'),
('2023-01-11', '15:00:00', '15:30:00', 'Completed'),
('2023-01-12', '16:00:00', '16:30:00', 'Cancelled'),
('2023-01-13', '17:00:00', '17:30:00', 'Completed'),
('2023-01-14', '18:00:00', '18:30:00', 'Pending');

INSERT INTO patient_visits (patient, appt, concerns, symptoms)
VALUES
('patient001@example.com', 1, 'Chest Pain', 'Shortness of breath'),
('patient002@example.com', 2, 'Headache', 'Nausea'),
('patient003@example.com', 3, 'Back Pain', 'Fatigue'),
('patient004@example.com', 4, 'Stomach Ache', 'Vomiting'),
('patient005@example.com', 5, 'Fever', 'Cough'),
('patient006@example.com', 6, 'Dizziness', 'Blurred Vision'),
('patient007@example.com', 7, 'Skin Rash', 'Itching'),
('patient008@example.com', 8, 'Joint Pain', 'Swelling'),
('patient009@example.com', 9, 'Sore Throat', 'Difficulty Swallowing'),
('patient010@example.com', 10, 'Anxiety', 'Restlessness');



