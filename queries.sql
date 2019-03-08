CREATE TABLE teacher(
 teacher_id serial PRIMARY KEY,
 name VARCHAR (50) UNIQUE NOT NULL,
 salary SMALLINT NOT NULL
);

CREATE TABLE student(
 student_id serial PRIMARY KEY,
 name VARCHAR (50) UNIQUE NOT NULL,
 age SMALLINT NOT NULL,
);

CREATE TABLE subject(
 subject_id serial PRIMARY KEY,
 name VARCHAR (50) UNIQUE NOT NULL,
);

CREATE TABLE grade(
 grade_id serial PRIMARY KEY,
 head_of_grade INTEGER REFERENCES teacher(teacher_id),
 name VARCHAR (2) UNIQUE NOT NULL,
);

CREATE TABLE class(
 class_id serial PRIMARY KEY,
 grade_id INTEGER REFERENCES grade(grade_id),
 subject_id INTEGER REFERENCES subject(subject_id),
 teacher_id INTEGER REFERENCES teacher(teacher_id),
);

CREATE TABLE class_student(
 class_student_id serial PRIMARY KEY,
 class_id INTEGER REFERENCES class(class_id),
 student_id INTEGER REFERENCES student(student_id)
);
