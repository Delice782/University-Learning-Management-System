 # University Students' Records Management System

## Project Description
The **University Students’ Records Management System** is a comprehensive software application designed to streamline various university operations, including student enrollment, faculty management, course registration, grades, and transcripts. Developed using **Visual C++** on the **Microsoft Visual Studio** platform, this system incorporates a **Multiple Document Interface (MDI)** with a dynamic toolbar and multiple child forms (SDI) interacting with a **MySQL** backend database.

The system supports three main user types: **students**, **faculty**, and **administrators**, each with specific roles and access levels. The application ensures secure user authentication and role-based access control, efficient enrollment and grade management, and scalability to handle peak registration periods.

## Key Features:
- **Student Enrollment & Records Management:** 
  - Students can enroll in courses, view grades, and manage their personal profiles.
  
- **Faculty & Staff Information Management:** 
  - Faculty can access class rosters, input grades, and manage course materials.

- **Course & Curriculum Management:** 
  - Administrators manage course offerings, curricula, and prerequisites, with support for online materials.

- **Grade & Transcript Management:** 
  - Faculty can input grades, students can view their academic records, and administrators can generate and print transcripts.

## Technologies Used:
- **Programming Language:** Visual C++
- **Development Platform:** Microsoft Visual Studio
- **Database:** MySQL (Backend Database)
- **Other Tools:** MySQL Workbench, Git (Version Control), and Visual Studio Code (for development)

## Key Classes and Data Structures:
- **User Class (abstract):** 
  - Manages user authentication and basic user details, including login/logout functionality.

- **Student Class:** 
  - Handles student-specific activities like course enrollment, viewing grades, and managing profiles.

- **Faculty Class:**
  - Manages faculty-specific tasks such as entering grades, viewing the class roster, and updating course materials.

- **Course Class:** 
  - Stores course details (e.g., course ID, name, credits), prerequisites, and includes methods for course registration and enrollment.

- **Enrollment Class:** 
  - Tracks student course registrations, including course enrollment records and grades.

## Sequence of Operations:
- **Course Enrollment:** 
  - A student initiates the **enrollment process**, checks course availability, and, if available, receives **confirmation** upon successful enrollment.

## Testing and Validation:
The system underwent a series of tests, including:
- **Unit Testing:** For validating individual class functionalities.
- **System Testing:** Ensuring the system operates as expected across different user types (student, faculty, administrator).
- **Performance Testing:** Ensuring the system can handle up to 10,000 concurrent users during peak registration times.

## System Requirements:
- **Operating System:** Windows 10 or higher
- **Microsoft Visual Studio:** 2019 or higher
- **MySQL:** Version 8.0 or higher
- **Hardware Requirements:** Minimum 2GB RAM, 500MB available disk space

## Future Enhancements:
- **Mobile Application:** A mobile version of the system for students and faculty.
- **Online Payment Integration:** Enable students to pay tuition and course fees directly from the platform.
- **Advanced Reporting:** Enhanced reporting features for administrators, including detailed analytics on student performance and faculty activity.

## Contributors:
- Delice Ishimwe - Project Lead, Developer
- Eunice Sayubu - Developer
- Steve Nsabimana - Developer

## YouTube Video Link:
Watch the demonstration of the project here: [YouTube Video Link](https://youtu.be/-hmTmQN7zQc)

## License:
This project is licensed under the Creative Commons Attribution-NonCommercial (CC BY-NC) 4.0 International License. You may use, share, and modify the code, but you may not use it for commercial purposes.
