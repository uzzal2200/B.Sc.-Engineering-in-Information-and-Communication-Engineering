CREATE DATABASE HospitalManagementSystem;

USE HospitalManagementSystem;


CREATE TABLE Patients (
    patient_id INT PRIMARY KEY IDENTITY(1,1), 
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')), 
    contact_number NVARCHAR(15),
    address NVARCHAR(255),
    email NVARCHAR(100),
    medical_history NVARCHAR(MAX),
    created_at DATETIME DEFAULT GETDATE(),

    INDEX idx_patient_name (last_name, first_name)
);




INSERT INTO Patients(first_name, last_name, date_of_birth, gender, contact_number, address, email, medical_history)
VALUES
    ('John', 'Doe', '1985-05-15', 'M', '555-1234', '123 Elm St, Springfield, IL', 'john.doe@email.com', 'Hypertension'),
    ('Jane', 'Smith', '1992-08-22', 'F', '555-5678', '456 Oak St, Springfield, IL', 'jane.smith@email.com', 'Asthma'),
    ('Michael', 'Johnson', '1975-02-10', 'M', '555-8765', '789 Pine St, Springfield, IL', 'michael.johnson@email.com', 'Diabetes'),
    ('Emily', 'Davis', '2000-11-30', 'F', '555-4321', '321 Birch St, Springfield, IL', 'emily.davis@email.com', 'None'),
    ('Daniel', 'Brown', '1990-03-25', 'M', '555-6543', '654 Maple St, Springfield, IL', 'daniel.brown@email.com', 'Migraine'),
    ('Olivia', 'Martinez', '1980-07-10', 'F', '555-9876', '987 Cedar St, Springfield, IL', 'olivia.martinez@email.com', 'Arthritis'),
    ('James', 'Wilson', '1965-01-14', 'M', '555-1357', '159 Elm St, Springfield, IL', 'james.wilson@email.com', 'Heart disease'),
    ('Sophia', 'Moore', '1995-04-05', 'F', '555-2468', '753 Oak St, Springfield, IL', 'sophia.moore@email.com', 'None'),
    ('David', 'Taylor', '1983-09-20', 'M', '555-3579', '369 Pine St, Springfield, IL', 'david.taylor@email.com', 'High cholesterol'),
    ('Isabella', 'Anderson', '2005-12-01', 'F', '555-4680', '741 Birch St, Springfield, IL', 'isabella.anderson@email.com', 'None');



select * from Patients

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    specialty NVARCHAR(100) NOT NULL,
    contact_number NVARCHAR(15),
    email NVARCHAR(100),
    available_schedule NVARCHAR(MAX),
    created_at DATETIME DEFAULT GETDATE(),

    INDEX idx_specialty (specialty)
);



INSERT INTO Doctors (first_name, last_name, specialty, contact_number, email, available_schedule)
VALUES
	('Dr. Alice', 'Miller', 'Cardiology', '555-1122', 'alice.miller@email.com', 'Mon-Wed 9AM-5PM'),
	('Dr. Bob', 'Williams', 'Neurology', '555-2233', 'bob.williams@email.com', 'Tue-Thu 10AM-6PM'),
	('Dr. Charlie', 'Brown', 'Orthopedics', '555-3344', 'charlie.brown@email.com', 'Mon-Fri 8AM-4PM'),
	('Dr. Diana', 'Jones', 'Dermatology', '555-4455', 'diana.jones@email.com', 'Mon-Fri 9AM-5PM'),
	('Dr. Eva', 'Garcia', 'Pediatrics', '555-5566', 'eva.garcia@email.com', 'Wed-Fri 10AM-6PM'),
	('Dr. Frank', 'Martinez', 'General Surgery', '555-6677', 'frank.martinez@email.com', 'Mon-Tue 8AM-3PM'),
	('Dr. Grace', 'Rodriguez', 'Gynecology', '555-7788', 'grace.rodriguez@email.com', 'Tue-Thu 9AM-5PM'),
	('Dr. Henry', 'Lee', 'Psychiatry', '555-8899', 'henry.lee@email.com', 'Mon-Fri 9AM-4PM'),
	('Dr. Ivy', 'Lopez', 'Ophthalmology', '555-9900', 'ivy.lopez@email.com', 'Mon-Wed 8AM-5PM'),
	('Dr. Jack', 'White', 'ENT', '555-1010', 'jack.white@email.com', 'Tue-Fri 10AM-6PM');

select * from Doctors




CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT NOT NULL,
    doctor_id INT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    purpose NVARCHAR(255),
    status NVARCHAR(20) DEFAULT 'Scheduled',
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE SET NULL,
    INDEX idx_appointment_date (appointment_date, appointment_time)
);

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, purpose, status)
VALUES
	(1, 1, '2024-11-20', '09:00', 'Heart checkup', 'Scheduled'),
	(2, 2, '2024-11-21', '10:00', 'Neurology consultation', 'Scheduled'),
	(3, 3, '2024-11-22', '11:00', 'Knee pain', 'Scheduled'),
	(4, 4, '2024-11-23', '14:00', 'Skin rash', 'Scheduled'),
	(5, 5, '2024-11-24', '15:00', 'Child vaccination', 'Scheduled'),
	(6, 6, '2024-11-25', '16:00', 'Gallbladder surgery', 'Scheduled'),
	(7, 7, '2024-11-26', '09:30', 'Gynecological checkup', 'Scheduled'),
	(8, 8, '2024-11-27', '10:30', 'Mental health evaluation', 'Scheduled'),
	(9, 9, '2024-11-28', '13:00', 'Eye checkup', 'Scheduled'),
	(10, 10, '2024-11-29', '14:30', 'Ear examination', 'Scheduled');



select * from  Appointments


CREATE TABLE Billing (
    bill_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT NOT NULL,
    appointment_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_status NVARCHAR(20) DEFAULT 'Pending',
    payment_date DATE,
    insurance_provider NVARCHAR(100),
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id) ON DELETE NO ACTION,

    INDEX idx_payment_status (payment_status)
);




INSERT INTO Billing (patient_id, appointment_id, total_amount, payment_status, payment_date, insurance_provider)
VALUES
	(1, 1, 100.00, 'Pending', NULL, 'Blue Cross'),
	(2, 2, 150.00, 'Paid', '2024-11-21', 'Aetna'),
	(3, 3, 200.00, 'Pending', NULL, 'Cigna'),
	(4, 4, 120.00, 'Paid', '2024-11-22', 'UnitedHealthcare'),
	(5, 5, 80.00, 'Pending', NULL, 'Blue Cross'),
	(6, 6, 500.00, 'Paid', '2024-11-23', 'Aetna'),
	(7, 7, 250.00, 'Pending', NULL, 'Cigna'),
	(8, 8, 100.00, 'Paid', '2024-11-24', 'UnitedHealthcare'),
	(9, 9, 150.00, 'Pending', NULL, 'Blue Cross'),
	(10, 10, 130.00, 'Paid', '2024-11-25', 'Aetna');


		
select * from  	Billing




CREATE TABLE Medicine (
    medicine_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    brand NVARCHAR(50),
    type NVARCHAR(20) CHECK (type IN ('Tablet', 'Capsule', 'Liquid', 'Injection', 'Ointment')),
    dosage NVARCHAR(50),
    stock_quantity INT CHECK (stock_quantity >= 0),
    expiry_date DATE,
    created_at DATETIME DEFAULT GETDATE()
);

select * from  	Medicine



INSERT INTO Medicine (name, brand, type, dosage, stock_quantity, expiry_date) 
VALUES
	('Paracetamol', 'BrandA', 'Tablet', '500mg', 100, '2025-12-31'),
	('Ibuprofen', 'BrandB', 'Capsule', '250mg', 150, '2025-06-30'),
	('Cough Syrup', 'BrandC', 'Liquid', '10ml', 50, '2025-03-31'),
	('Amoxicillin', 'BrandD', 'Capsule', '200mg', 200, '2026-01-31'),
	('Aspirin', 'BrandE', 'Tablet', '500mg', 80, '2025-11-30'),
	('Ciprofloxacin', 'BrandF', 'Tablet', '500mg', 60, '2025-05-31'),
	('Vitamin C', 'BrandG', 'Capsule', '20mg', 120, '2024-12-31'),
	('Doxycycline', 'BrandH', 'Capsule', '100mg', 90, '2026-07-15'),
	('Metformin', 'BrandI', 'Tablet', '500mg', 200, '2026-02-28'),
	('Prednisone', 'BrandJ', 'Tablet', '0.5mg', 50, '2024-11-30');




-- Creating Pharmacy table for storing medication given to patients
CREATE TABLE Pharmacy (
    pharmacy_id INT PRIMARY KEY IDENTITY(1, 1),
    medicine_id INT,
    patient_id INT,
    quantity INT,
    prescription_date DATE,

    FOREIGN KEY (medicine_id) REFERENCES Medicine(medicine_id) ON DELETE CASCADE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE
);


INSERT INTO Pharmacy (medicine_id, patient_id, quantity, prescription_date) 
VALUES
	(1, 1, 10, '2024-10-11'),
	(2, 3, 15, '2024-10-10'),
	(3, 5, 5, '2024-10-09'),
	(4, 2, 20, '2024-10-08'),
	(5, 4, 30, '2024-10-07'),
	(6, 6, 25, '2024-10-06'),
	(7, 7, 10, '2024-10-05'),
	(8, 8, 50, '2024-10-04'),
	(9, 9, 100, '2024-10-03'),
	(10, 10, 30, '2024-10-02');


	select * from  	Pharmacy


-- Operation: Get all the table names in the database
SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE';


-- Operation: Show all records from the Patients table
SELECT * FROM Patients;

-- Operation: Show first name and last name from the Patients table
SELECT first_name, last_name FROM Patients


-- Operation: Show records from the Patients table ordered by last name
SELECT * FROM Patients
ORDER BY last_name ASC;


-- Operation: Count the total number of patients
SELECT COUNT(*) AS total_patients FROM Patients;


-- Operation: Count the number of patients grouped by gender
SELECT gender, COUNT(*) AS total_patients FROM Patients
GROUP BY gender;


-- Operation: Count the number of patients with specific medical history where the medical history is not null
SELECT medical_history, COUNT(*) AS total_patients FROM Patients
WHERE medical_history IS NOT NULL
GROUP BY medical_history;


-- Operation: Concatenate first and last name as full name and show contact number and medical history
SELECT 
    first_name + ' ' + last_name AS full_name,
    contact_number,
    medical_history
FROM Patients;



-- Operation: Join Patients table with Appointments table to get patient details along with appointment dates
SELECT p.first_name, p.last_name, a.appointment_date, a.appointment_time
FROM Patients p
INNER JOIN Appointments a ON p.patient_id = a.patient_id;


-- Operation: Get the Cartesian product of Patients and Doctors tables
SELECT * FROM Patients, Doctors;


-- Operation: Get all patients who have an appointment on a specific date
SELECT * FROM Patients
WHERE patient_id IN (
    SELECT patient_id
    FROM Appointments
    WHERE appointment_date = '2024-11-20'
);



-- Create the stored procedure
CREATE PROCEDURE GetAllPatients
AS
BEGIN
    SELECT * FROM Patients;
END;


-- Execute the stored procedure to get all patient records
EXEC GetAllPatients;


-- Operation: Create a parameterized stored procedure to fetch patients by medical history
CREATE PROCEDURE GetPatientsByHistory (@history NVARCHAR(255))
AS
BEGIN
    SELECT * FROM Patients WHERE medical_history = @history;
END;


-- Operation: Execute the stored procedure to get patients with a specific medical history
EXEC GetPatientsByHistory @history = 'Hypertension';



-- Create the stored procedure to check patient existence
CREATE PROCEDURE CheckPatientExistence (@patient_id INT)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Patients WHERE patient_id = @patient_id)
    BEGIN
        PRINT 'Patient exists';
    END
    ELSE
    BEGIN
        PRINT 'Patient not found';
    END
END;

-- Execute the stored procedure to check if a specific patient exists
EXEC CheckPatientExistence @patient_id = 1;


-- Operation: Trigger to update billing status when an appointment status is updated
CREATE TRIGGER UpdateBillingStatus
ON Appointments
AFTER UPDATE
AS
BEGIN
    IF UPDATE(status)
    BEGIN
        UPDATE Billing
        SET payment_status = 'Pending'
        WHERE appointment_id IN (SELECT appointment_id FROM inserted);
    END
END;



-- Alter the existing trigger
ALTER TRIGGER UpdateBillingStatus
ON Appointments
AFTER UPDATE
AS
BEGIN
    IF UPDATE(status)
    BEGIN
        -- Update the billing status to 'Pending' when an appointment status changes
        UPDATE Billing
        SET payment_status = 'Pending'
        WHERE appointment_id IN (SELECT appointment_id FROM inserted);
    END
END;


SELECT * FROM Billing WHERE appointment_id = 1;
