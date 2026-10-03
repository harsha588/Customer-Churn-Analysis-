# Customer-Churn-Analysis-
A data analysis project focused on understanding customer churn patterns, identifying churn drivers, and finding customer retention opportunities using SQL, Python, and Power BI.

## 📌 Problem Statement
Customer churn is an important challenge for telecommunications companies because customer loss can impact revenue and customer retention.

This project analyzes the IBM Telco Customer Churn dataset containing 7,043 customers of a fictional telecommunications company. During the initial exploration, 73% of customers were retained and 27% had churned.

Although churned customers represent a smaller proportion of the customer base, the 27% churn rate represents a significant group of customers to investigate. The project focuses on understanding who is churning, what factors are associated with churn, and why customers are leaving.

## 🎯 Objective

- Analyze overall customer churn.
- Identify customer segments 
- Analyze churn across tenure, contracts, services, and billing.
- Identify major churn reasons.
- Analyze high-value customers
- Provide insights/recommendations

## 📊 Dataset

**Dataset:** IBM Telco Customer Churn

**Source:** Kaggle

**Records:** 7,043 customers

The dataset contains information about:

- Customer demographics
- Tenure
- Phone and Internet services
- Contract type
- Payment methods
- Monthly and total charges
- Customer Lifetime Value (CLTV)
- Churn status
- Churn reasons


### Dataset Source

[Telco Customer Churn – IBM Dataset](https://www.kaggle.com/datasets/yeanzc/telco-customer-churn-ibm-dataset)

> **Note:** The dataset is sourced from Kaggle and is used for educational and analytical purposes. Please refer to the original dataset page for licensing and usage terms.

---


## 🛠️ Tools & Technologies

- **MySQL** — SQL analysis
- **SQL** — Business-question analysis
- **Python** — Exploratory Data Analysis (EDA)
- **Pandas** — Data manipulation
- **NumPy** — Numerical analysis
- **Matplotlib & Seaborn** — Data visualization
- **Power BI** — Interactive dashboard
- **Excel** — Initial dataset handling
- **GitHub** — Project documentation and version control

## 📋 Requirements

- Measure overall churn and retention
- Identify segments associated with higher churn
- Analyze customer behavior and subscription factors associated with churn
- Understand why customers leave
- Assess churn among high-value customers
- Translate findings into retention insights and recommendations


## 🔄 Project Workflow
```text 
Raw Dataset
     ↓
Data Cleaning
     ↓
MySQL
     ↓
SQL Business Analysis
     ↓
Python EDA
     ↓
Power BI Dashboard
     ↓
Key Insights & Recommendations
```

### Data Cleaning

The dataset was prepared before analysis by:

- Checking for missing values.
- Checking for duplicate customers.
- Validating customer records.
- Removing unnecessary geographic columns that were not required for the analysis.
- Checking numerical and categorical fields.
- Restoring/validating the Churn Value field.
- Validating churn labels and customer counts.
- Checking blank/null churn reasons.

The cleaned customer data was then used for SQL analysis, Python EDA, and Power BI visualization.



SQL analysis was organized around five major objectives.

### Objective 1 — Overall Churn & Retention

Questions analyzed:

1. What is the total number of customers?
2. How many customers have churned?
3. What is the overall churn rate?
4. What percentage of customers have been retained?

Key metrics:

Metric	          Value
Total Customers	7,043
Churned Customers	1,869
Churn Rate	     26.54%
Retention Rate 	73.46%


### Objective 2 — Customer Segments

Customer characteristics analyzed:

Gender
Senior Citizen status
Partner status
Dependents

The analysis compares customer counts and churn rates across these characteristics.


### Objective 3 — Tenure, Contract & Services

The analysis examined:

Tenure groups
Contract types
Internet Service
Tech Support
Online Security

The analysis was used to identify groups with different observed churn rates.


### Objective 4 — Charges, Billing & Customer Value

The analysis examined:

Average monthly charges
Monthly charges by churn status
Paperless billing
Customer value using CLTV
Average CLTV of churned customers
Churn rates among higher-value customer segments


### Objective 5 — Churn Reasons

The analysis examined:

Most common churn reasons
Proportion of churn associated with each reason
Characteristics associated with major churn reasons
CLTV across churn reasons

Churn reasons were analyzed only among customers whose Churn Label was Yes.


# 🐍 Python Exploratory Data Analysis

Python was used to perform exploratory data analysis and investigate patterns in the dataset.

The EDA included:

Dataset structure and overview
Data quality checks
Churn distribution
Categorical variable analysis
Numerical variable analysis
Customer tenure analysis
Charges analysis
Customer value analysis
Churn-related comparisons
Correlation analysis between numerical variables
Data visualization using Matplotlib and Seaborn

The Python analysis provided additional exploratory insights before building the final Power BI dashboard.

## 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to provide a business-level view of customer churn.

Dashboard Components
Total Customers
Churned Customers
Churn Rate
Retention Rate
Churn Rate by Contract
Churn Rate by Internet Service
Churn Rate by Tenure
Top Churn Reasons
Customer filtering using slicers
Dashboard Preview

![Customer Churn Dashboard](images/churn_dashboard.png)


## 🔎 Key Findings

The dashboard and analysis identified several notable churn patterns.

Contract

- Month-to-month customers had an observed churn rate of 42.71%, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.

Tenure

- Customers with 0–12 months of tenure had an observed churn rate of 47.44%, while customers with 49+ months of tenure had a churn rate of 9.51%.

Internet Service

- Fiber optic customers had an observed churn rate of 41.89%, compared with 18.96% for DSL customers and 7.40% for customers without internet service.

Overall Churn

The dataset contains:

- 7,043 customers
- 1,869 churned customers
- 26.54% churn rate
- 73.46% retention rate

These findings describe observed associations in the dataset and should not be interpreted as proof that a particular characteristic causes churn.


## 💡 Retention Insights & Recommendations

### 1. Focus on Early-Tenure Customers

Customers with 0–12 months of tenure show a higher observed churn rate.

**Recommendation:**  
Improve customer onboarding, early engagement, and support during the first year. Monitoring customer experience during the early stages of the relationship may help identify potential churn risks.

### 2. Investigate Month-to-Month Customers

Month-to-month customers show a substantially higher observed churn rate than customers with one-year and two-year contracts.

**Recommendation:**  
Investigate pricing, service experience, customer satisfaction, and contract-related factors for this segment. Consider opportunities to improve long-term customer engagement.

### 3. Investigate Fiber Optic Customer Churn

Fiber optic customers show a higher observed churn rate in this dataset.

**Recommendation:**  
Further investigate service quality, pricing, support experience, network reliability, and competitor offers among fiber optic customers.

### 4. Address Common Churn Reasons

Several reported churn reasons are related to competitors, service/support experience, pricing, and network or product dissatisfaction.

**Recommendation:**  
Use churn-reason data to prioritize areas for customer experience improvement and investigate recurring issues.

### 5. Monitor High-Value Customers

Customer Lifetime Value (CLTV) can help identify customers whose churn may have greater business significance.

**Recommendation:**  
Monitor churn among high-value customers and consider targeted retention strategies based on their service usage, tenure, and reported churn reasons.



## 📁 Project Structure

```text
Customer-Churn-Analysis-/
│
├── README.md
│
├── sql
│   ├── cleaning process(cc).sql
│   ├── 01_overall_churn_retention.sql
│   ├── 02_customer_segments.sql
│   ├── 03_tenure_contract_service_churn.sql
│   ├── 04_charges_billing_value_churn.sql
│   └── 05_churn_reasons.sql
│
├── python
│   └── customer_churn_eda.ipynb
│
├── power bi
│   └── churn_dashboard.pbix
│
└── images
    └── churn_dashboard_ss.png


---

# 14. 📌 Project Status

Since you have completed the project, keep this short:

```markdown
## 📌 Project Status

**Completed** ✅

- ✅ Data Cleaning
- ✅ SQL Analysis
- ✅ Python EDA
- ✅ Power BI Dashboard
- ✅ Key Findings
- ✅ Retention Insights & Recommendations
- ✅ GitHub Documentation



## 👤 Author

**Harsha R M**

Aspiring Data Analyst

- SQL
- Python
- Power BI
- Excel


### Connect with Me

- [LinkedIn](https://www.linkedin.com/in/harsha-r-m-645769249/)
- [GitHub](https://github.com/)
