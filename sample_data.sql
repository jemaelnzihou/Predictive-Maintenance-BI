
INSERT INTO departments VALUES 
(1, 'Operations', 'New York'),
(2, 'Engineering', 'Los Angeles'),
(3, 'Finance', 'Chicago');

INSERT INTO employees VALUES
(101, 'John Doe', 'Project Manager', 95000.00, 5000.00, '2020-05-01', 1),
(102, 'Jane Smith', 'Data Analyst', 85000.00, 2000.00, '2021-03-15', 2);

INSERT INTO projects VALUES
(1001, 'Defect Reduction', '2023-01-01', '2023-12-31', 101),
(1002, 'Energy Optimization', '2024-01-01', '2024-10-01', 101);

INSERT INTO kpi_tracking VALUES
(201, 1001, 'Defect Rate', 12.5, 3.5, '2023-11-01'),
(202, 1002, 'Energy Efficiency', 60.0, 85.0, '2024-05-15');

INSERT INTO cost_savings VALUES
(301, 1001, 500000.00, 650000.00, 30.0, '2023-12-31'),
(302, 1002, 300000.00, 400000.00, 33.3, '2024-10-01');

INSERT INTO interest_rates VALUES
(401, 2023, 6, 4.75, 'Federal Reserve'),
(402, 2024, 1, 4.25, 'Federal Reserve');

INSERT INTO hospitalization_rates VALUES
(501, 'North America', 2023, 6, 15000, 7000, 500),
(502, 'Europe', 2024, 1, 12000, 4000, 300);

INSERT INTO gdp_data VALUES
(601, 2023, 2, 21500000.00, 'USA'),
(602, 2024, 1, 21800000.00, 'USA');
