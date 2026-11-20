# 📊 Job Market Analysis – Data Analytics Project

An end-to-end data analytics project exploring job market trends, salary patterns, hiring demand, company insights and in-demand technical skills using SQL, Python and Microsoft Power BI.

## 📌 Project Overview

This project analyses **742 job postings** to understand the US Data Analytics job market. It explores which states and industries have the highest hiring demand, how salaries vary across locations and job roles, which companies offer the most opportunities, and what technical skills employers frequently require.

The project combines SQL-based analysis, Python data cleaning and validation, and interactive Power BI dashboards to transform raw job-market data into actionable insights.

> **Dataset scope:** United States job postings. Salary figures are expressed in USD thousands (K).

## 🎯 Project Objectives

- Identify states with the highest number of job postings.
- Analyse average minimum, maximum and overall salaries by state.
- Identify industries with the highest job demand.
- Find companies with the most job openings.
- Analyse frequently occurring job titles and their salary patterns.
- Identify the most demanded technical skills.
- Explore the relationship between education and salary.
- Analyse company size, ownership, ratings and employee seniority.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | Database connectivity and SQL analysis |
| Python | Data inspection, cleaning and validation |
| Pandas | Data manipulation and preprocessing |
| Microsoft Power BI | Interactive dashboard development |
| Excel | Supporting data analysis |
| Git & GitHub | Version control and project hosting |

## 📂 Project Structure

```text
Job-Market-Analysis/
│
├── Data/
│   ├── raw data/
│   └── cleaned data/
│
├── SQL/
│   └── job_market_analysis.sql
│
├── Python/
│   ├── data_inspection.py
│   ├── data_cleaning.py
│   └── validate_cleaned_data.py
│
├── Power BI/
│   ├── Existing dashboard
│   └── PRDA04W/
│       └── Power BI Project files
│
├── Reports/
│   ├── PRDA04_Job_Market_Analysis_Report.pdf
│   └── PRDA04_Job_Market_Analysis_Presentation.pptx
│
├── Screenshots/
│   ├── 01_Job_Market_Overview.png
│   ├── 02_Salary_Analysis.png
│   ├── 03_Skills_Analysis.png
│   └── 04_Company_Market_Insights.png
│
└── README.md
```

## 📊 Power BI Dashboards

## 📊 Power BI Dashboards

This project includes four interactive dashboard pages developed using Power BI to explore job market trends, salary distributions, in-demand skills, and company insights.

## 📸 Dashboard Preview

### 1. Job Market Overview

![Job Market Overview](<Screenshots/Job Market Overview.png>)

### 2. Salary Analysis

![Salary Analysis](<Screenshots/Salary Analysis.png>)

### 3. Skills Analysis

![Skills Analysis](<Screenshots/Skills Analysis.png>)

### 4. Company & Market Insights

![Company & Market Insights](<Screenshots/Company & Market Insights.png>)


## 📈 Key Findings

| Metric | Result |
|---|---:|
| Total Job Postings | 742 |
| Companies | 343 |
| Valid Industries | 59 |
| Average Salary | $101.5K |
| Average Company Rating | 3.69 |
| Total Skill Mentions | 2,152 |
| Unique Skills Tracked | 16 |

### Top Hiring States

1. California – 152 postings
2. Massachusetts – 103 postings
3. New York – 72 postings
4. Virginia – 41 postings
5. Illinois – 40 postings

### Most Demanded Technical Skills

| Skill | Postings | Share |
|---|---:|---:|
| Python | 392 | 52.8% |
| Excel | 388 | 52.3% |
| SQL | 380 | 51.2% |
| AWS | 176 | 23.7% |
| Spark | 167 | 22.5% |
| Tableau | 148 | 19.9% |
| Hadoop | 124 | 16.7% |

## ⚙️ Project Workflow

1. **Data Extraction:** Retrieved job-market records from the provided MySQL database.
2. **Data Inspection:** Examined dataset structure, columns, missing values and data quality.
3. **Data Cleaning:** Used Python and Pandas to standardise values and prepare the cleaned dataset.
4. **Data Validation:** Checked record counts and salary calculations.
5. **SQL Analysis:** Used aggregation, grouping, filtering and ranking queries to identify market trends.
6. **Dashboard Development:** Built interactive Power BI reports to communicate findings.
7. **Insights & Recommendations:** Summarised hiring patterns, salary trends and skill requirements.

## 💡 Business Insights

- California has the highest job-posting volume in the analysed dataset.
- Python, Excel and SQL are the most frequently mentioned tracked technical skills.
- Salary levels vary across states, job titles, education levels and seniority categories.
- Company size and ownership provide additional context for understanding salary differences.
- Data-driven skill development can help job seekers align their capabilities with employer requirements.

## ⚠️ Data Limitations

- The dataset represents US job postings, not the Indian job market.
- Salary figures are expressed in USD thousands.
- The dataset includes hourly postings, which may not be directly comparable with annual salary estimates.
- Some company and education attributes contain missing or unknown values.
- The findings are descriptive and do not establish causal relationships.

## 📁 Project Deliverables

- SQL analysis scripts.
- Python data inspection, cleaning and validation scripts.
- Interactive Power BI dashboards.
- Analytical PDF report.
- PowerPoint presentation.
- Cleaned dataset and dashboard screenshots.

## 👨‍💻 Author

**Jayaranjan S.**

B.E. Computer Science and Engineering | 2026 Graduate

Interested in Data Analytics, Business Intelligence, SQL, Python and Power BI.

---

⭐ If you find this project interesting, feel free to explore the repository and share your feedback.

