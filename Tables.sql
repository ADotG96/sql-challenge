-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RipUju
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title text   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    sex varchar(5)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

COMMENT ON TABLE Employees is 'First table created in table creation process.';

CREATE TABLE Departments (
    dept_no text   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

COMMENT ON TABLE Departments is 'Second table created in table creation process.';

CREATE TABLE Dept_Manager (
    dept_no text   NOT NULL,
    emp_no int   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        dept_no,emp_no
     )
);

COMMENT ON TABLE Dept_Manager is 'Third table created in table creation process.';

CREATE TABLE Dept_Employees (
    emp_no int   NOT NULL,
    dept_no text   NOT NULL,
    CONSTRAINT pk_Dept_Employees PRIMARY KEY (
        emp_no,dept_no
     )
);

COMMENT ON TABLE Dept_Employees is 'Fourth table created in table creation process.';

CREATE TABLE Salaries (
    id serial   NOT NULL,
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        id
     )
);

COMMENT ON TABLE Salaries is 'Fifth table created in table creation process.';

CREATE TABLE Titles (
    title_id text   NOT NULL,
    title varchar(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

COMMENT ON TABLE Titles is 'Last table created in table creation process.';

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Employees ADD CONSTRAINT fk_Dept_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Employees ADD CONSTRAINT fk_Dept_Employees_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_employees_emp_title FOREIGN KEY(emp_title)
REFERENCES Titles (title_id);

