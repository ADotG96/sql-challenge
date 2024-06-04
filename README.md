# sql-challenge
_Background_

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

# ERD
![image](https://github.com/ADotG96/sql-challenge/assets/120142473/9d6fdde3-9072-42a8-94db-8b136d3f7d72)

# Table Creation

The tables were created in the the following order:
  1. Employees
  2. Departments
  3. Dept_Manager
  4. Dept_Employees
  5. Salaries
  6. Titles

_Note:_ Data for tables was also imported in the same order

# Table Alters

Once all tables were created & data was inserted, the following table alters were established:
  1. ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
  2. ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no) REFERENCES Departments (dept_no);
  3. ALTER TABLE Dept_Employees ADD CONSTRAINT fk_Dept_Employees_emp_no FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
  4. ALTER TABLE Dept_Employees ADD CONSTRAINT fk_Dept_Employees_dept_no FOREIGN KEY(dept_no) REFERENCES Departments (dept_no);
  5. ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
  6. ALTER TABLE Employees ADD CONSTRAINT fk_employees_emp_title FOREIGN KEY(emp_title) REFERENCES Titles (title_id);

