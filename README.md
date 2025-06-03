
# 📊 Predictive Maintenance in Chemical Engineering – BI Integration

A full-stack data science & business intelligence project that models cost savings, ROI, and KPI impacts using a MySQL database (3NF), Power BI dashboarding, and real-world engineering scenarios.

---

## 🛠️ Technologies
- MySQL Workbench
- Power BI
- CSV · SQL · Data Modeling

---

## 📂 Includes
- Normalized relational schema
- Data engineering DDL scripts
- Sample data & .csv
- Dashboard visuals
- Gamma App & GitHub Pages–ready setup

---

## 📊 Dashboard Preview

![Power BI Dashboard Preview](dashboard_preview.png)

---

## 🧠 Dashboard Insights

### 1️⃣ Estimated vs. Actual Savings
- **Defect Reduction** exceeded expectations with $150K more than estimated.
- **Energy Optimization** also outperformed with $100K in additional gains.

📌 _This insight supports funding toward high-yield project categories and validates forecasting methods._

### 2️⃣ ROI Percentage by Project
- Energy Optimization: **33.3%**
- Defect Reduction: **30%**

📌 _Both projects outpaced industry ROI benchmarks (~15–20%), empowering executive buy-in for similar initiatives._

### 3️⃣ Project Duration
- Projects span fiscal 2023–2024, aligning with strategic planning cycles.

📌 _Use this to better manage manpower, quarterly KPIs, and outcome predictability._

---

## 📥 Download the Power BI File

📥 [Download Predictive Maintenance Dashboard (.pbix)](./predictive_maintenance_Dashboard.pbix)

---

✅ **Analyze efficiency. Visualize ROI. Drive decisions.**

#zabatissuquality #stilldoinit #BIinAction #PredictiveMaintenance #DataDrivenROI

---
## 🗂️ Database Schema Overview (`schema.sql`)

This project follows a normalized database structure in **Third Normal Form (3NF)**. The schema is implemented via `schema.sql`, which defines all tables, relationships, and constraints for a predictive maintenance and business intelligence system.

---

### 📁 1. `departments`
Stores organizational departments.

| Column           | Type        | Description                      |
|------------------|-------------|----------------------------------|
| department_id    | INT (PK)    | Unique department ID             |
| department_name  | VARCHAR(50) | Department name                  |
| location         | VARCHAR(100)| Physical location                |

---

### 👥 2. `employees`
Holds employee data and links to departments.

| Column           | Type         | Description                         |
|------------------|--------------|-------------------------------------|
| emp_id           | INT (PK)     | Unique employee ID                  |
| emp_name         | VARCHAR(100) | Full name                           |
| position         | VARCHAR(100) | Job role                            |
| salary           | DECIMAL      | Base salary                         |
| commission       | DECIMAL      | Bonus/commission                    |
| hire_date        | DATE         | Hire date                           |
| department_id    | INT (FK)     | References `departments.department_id` |

---

### 🏗️ 3. `projects`
Contains project metadata.

| Column              | Type         | Description                              |
|---------------------|--------------|------------------------------------------|
| project_id          | INT (PK)     | Unique project ID                        |
| project_name        | VARCHAR(100) | Name of the project                      |
| start_date          | DATE         | Start of the project                     |
| end_date            | DATE         | Completion date                          |
| project_manager_id  | INT (FK)     | References `employees.emp_id`            |

---

### 📈 4. `kpi_tracking`
Tracks KPIs before and after project execution.

| Column                  | Type         | Description                              |
|-------------------------|--------------|------------------------------------------|
| kpi_id                  | INT (PK)     | Unique KPI ID                            |
| project_id              | INT (FK)     | References `projects.project_id`         |
| kpi_name                | VARCHAR(100) | KPI being measured                       |
| baseline_value          | DECIMAL      | Value before improvement                 |
| post_improvement_value  | DECIMAL      | Value after improvement                  |
| measurement_date        | DATE         | Date of measurement                      |

---

### 💰 5. `cost_savings`
Stores cost estimates and ROI results per project.

| Column            | Type        | Description                          |
|-------------------|-------------|--------------------------------------|
| savings_id        | INT (PK)    | Unique savings ID                    |
| project_id        | INT (FK)    | References `projects.project_id`     |
| estimated_savings | DECIMAL     | Forecasted cost savings              |
| actual_savings    | DECIMAL     | Realized cost savings                |
| roi_percent       | DECIMAL     | Return on investment (%)             |
| recorded_date     | DATE        | Entry timestamp                      |

---

### 📉 6. `interest_rates`
Houses macroeconomic interest rates.

| Column         | Type        | Description                     |
|----------------|-------------|---------------------------------|
| rate_id        | INT (PK)    | Unique rate entry               |
| year           | INT         | Year                            |
| month          | INT         | Month                           |
| interest_rate  | DECIMAL     | Interest rate value             |
| source         | VARCHAR(100)| Source of the data              |

---

### 🏥 7. `hospitalization_rates`
Stores health metrics such as COVID-related rates.

| Column          | Type        | Description                       |
|------------------|-------------|-----------------------------------|
| hosp_id          | INT (PK)    | Unique hospitalization ID         |
| region           | VARCHAR(100)| Region                            |
| year             | INT         | Year of record                    |
| month            | INT         | Month of record                   |
| covid_cases      | INT         | Total COVID-19 cases              |
| hospitalizations | INT         | Number hospitalized               |
| deaths           | INT         | Number of deaths                  |

---

### 🌍 8. `gdp_data`
Stores GDP information by country and quarter.

| Column       | Type        | Description                      |
|--------------|-------------|----------------------------------|
| gdp_id       | INT (PK)    | Unique GDP entry                 |
| year         | INT         | Year                             |
| quarter      | INT         | Quarter                          |
| gdp_value    | DECIMAL     | GDP in local currency            |
| country      | VARCHAR(100)| Country name                     |

---

👉 To create this schema in your database, simply run:

```bash
mysql -u username -p database_name < schema.sql
```

✅ **Normalized to 3NF** | 🔗 **Full foreign key relationships** | 🔍 **Ready for Power BI & data analysis**

