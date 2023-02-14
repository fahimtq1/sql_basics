CREATE TABLE teachers(
	teacher_id SERIAL UNIQUE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	homeroom_number SMALLINT,
	department VARCHAR(10),
	email_address VARCHAR(255),
	phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE students(
	student_id SERIAL UNIQUE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	homeroom_number SMALLINT,
	phone_number VARCHAR(20) NOT NULL,
	email_address VARCHAR(255),
	grad_year DATE
);

INSERT INTO teachers (first_name, last_name, homeroom_number, department, email_address, phone_number)
VALUES(
	'Jonas',
	'Salk',
	5,
	'Biology',
	'jsalk@school.org',
	'777-555-4321'
);

INSERT INTO students (first_name, last_name, homeroom_number, phone_number, grad_year)
VALUES(
	'Mark',
	'Watney',
	5,
	'777-555-1234',
	'2035-01-01'
);
