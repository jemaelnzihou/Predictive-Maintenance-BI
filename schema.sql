
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(12,2),
    commission DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    project_manager_id INT,
    FOREIGN KEY (project_manager_id) REFERENCES employees(emp_id)
);

CREATE TABLE kpi_tracking (
    kpi_id INT PRIMARY KEY,
    project_id INT,
    kpi_name VARCHAR(100),
    baseline_value DECIMAL(10,2),
    post_improvement_value DECIMAL(10,2),
    measurement_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE cost_savings (
    savings_id INT PRIMARY KEY,
    project_id INT,
    estimated_savings DECIMAL(12,2),
    actual_savings DECIMAL(12,2),
    roi_percent DECIMAL(5,2),
    recorded_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE interest_rates (
    rate_id INT PRIMARY KEY,
    year INT,
    month INT,
    interest_rate DECIMAL(5,2),
    source VARCHAR(100)
);

CREATE TABLE hospitalization_rates (
    hosp_id INT PRIMARY KEY,
    region VARCHAR(100),
    year INT,
    month INT,
    covid_cases INT,
    hospitalizations INT,
    deaths INT
);

CREATE TABLE gdp_data (
    gdp_id INT PRIMARY KEY,
    year INT,
    quarter INT,
    gdp_value DECIMAL(15,2),
    country VARCHAR(100)
);
