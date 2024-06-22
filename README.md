# EduSchema

EduSchema is a simple educational management system that allows you to manage courses, students, and enrollments using a graphical user interface (GUI) built with Tkinter. The application also includes an SQLite database for data persistence.

## Features

- **Course Management**: Add, update, remove, search, and sort courses.
- **Student Management**: Add, remove, and see deleted students records.
- **Enrollment Management**: Enroll students in courses, view enrollments, and manage enrollments.
- **Grades and Assessments Management**: Add or remove assessments and grades
- **Instructors**: Add, delete or view deleted instruvtors

## Requirements

- Python 3.9.13
- Tkinter
- MySQL Workbench 8.0

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/TanviSSawant/EduSchema 
    cd EduSchema
    ```

2. Install the required packages:
    ```bash
    pip install tk
    ```

3. Run the application:
    ```bash
    EduSchema.ipynb
    ```

## Database Schema

The SQL file `EduSchema.sql` contains the database schema for the application. To set up the database, do the following steps
Execute the SQL commands in `EduSchema.sql` to create tables and populate initial data.

For connection of the MySQL database with python use the following commands initially:
 - Open `EduSchema.ipynb` file and update the MySQL connection details:
     ```python
     import mysql.connector

     db_connection = mysql.connector.connect(
         host="localhost",
         user="your_username",
         password="your_password",
         database="EduSchema"
     )
     ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

Tkinter documentation: https://docs.python.org/3/library/tkinter.html


---------




### Made By Tanvii
