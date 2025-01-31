STUDENT ENROLLMENT SYSTEM

DESCRIPTION:
A Student Enrollment System is a digital solution designed to streamline the process of student registration, course selection, fee management, and academic tracking in educational institutions. The system replaces traditional paper-based enrollment with an automated, efficient, and user-friendly interface, improving accuracy, accessibility, and administrative efficiency.
The primary goal of a Student Enrollment System is to simplify and automate student admissions, reduce manual work, minimize errors, and provide real-time access to enrollment data. This system ensures a seamless experience for students, administrators, and faculty by centralizing student records and managing the entire enrollment lifecycle.

ENTITY RELATIONSHIP DIAGRAM(ERD).

Entities:  STUDENTS, COURSES, ENROLLMENT, RECORDS
  











             LOGICAL DATA MODEL (LDM)

1.	STUDENTS (Student ID ,Name, Date of birth, Gender, Email)
2.	COURSES(Course ID, Course Name, Description, Credits, Duration)
3.	ENROLLMENTS(Enrollments ,Student ID, Course ID, Enrollment date)


	PHYSICAL DATA MODEL (PDM)

  





	



	
 
DATA DICTIONARY
ENTITIES	ATTRIBUTE	DATA TYPE	SIZE	CONSTRAINTS	DESCRIPTION


STUDENTS
	Student ID
	INTIGERS	10	PRIMARY KEY not null	Student identification number
	F Name	STRING	100	null	 First name
	L Name	STRING	100	null	Last name
	Date of Birth	STRING	30	not null	Date of Birth
	Gender
	STRING	40	not null	Gender

	Email
	STRING	40	not null	Email



COURSES
	Course ID
	INTIGERS	20	PRIMARY KEY not null	Courses identification number
	Course Name	STRING	100	not null	Courses name
	Description
	STRING	100	not null	Description
	Credits
	INTIGERS	10	not null	Credits
	Duration	INTIGERS	10	not null	Duration


ENROLLMENTS

	Enrollment ID
	INTIGERS	11	PRIMARY KEY not null	Enrollment identification number
	Student ID
	INTIGERS	11	FOREIGN KEY not null	Student identification number
	Course ID	INTIGERS	11	FOREIGN KEY not null	Courses identification number
	Enrollment Date
	STRING	40	not null	Enrollment

RECORDS
	Record ID
	INTIGERS	100	PRIMARY KEY not null	Records identification
number
	Student ID
	INTIGERS	17	FOREIGN KEY Not null	Student identification number
	Courses ID
	INTIGERS	40	FOREIGN KEY Not null	Courses identification number
	Enrollment ID
	INTIGERS	12	FOREIGN KEY not null	Enrollment identification number
	Grade
	STRING	20	Not null	grade

