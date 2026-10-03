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


# 🔄 Project Workflow

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

Data Cleaning

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

Objective 1 — Overall Churn & Retention

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
