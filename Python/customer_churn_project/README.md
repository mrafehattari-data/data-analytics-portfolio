📊 Customer Churn Prediction — Machine Learning Project

A data-driven approach to identify customers at risk of leaving.

📌 Project Overview

Customer churn is a critical challenge for subscription-based businesses. In this project, I built a machine learning model to predict customer churn using the Telco Customer Churn dataset from Kaggle.

The goal: ➡️ Identify high-risk customers early so the business can take action and reduce churn.

This end-to-end project includes:

Data cleaning

Exploratory data analysis (EDA)

Feature engineering

Machine Learning (Logistic Regression & Random Forest)

Model evaluation (ROC, confusion matrix, F1, recall)

Business insights & recommendations

📂 Dataset

Source: Kaggle – Telco Customer Churn Rows: 7,043 Columns: 21 Includes customer demographics, account details, billing methods, service usage, and churn label.

🧹 Data Cleaning

Key steps:

Converted TotalCharges from text → numeric

Imputed missing values using median

Cleaned whitespace in categorical features

Verified dataset integrity (df.info(), df.isnull())

🔍 Exploratory Data Analysis (EDA) ⭐ Numerical Insights

Churners have shorter tenure

Higher MonthlyCharges

Lower TotalCharges

⭐ Categorical Insights

Month-to-month contracts = highest churn

Two-year contracts = lowest churn

Electronic check users churn the most

Fiber optic customers have higher churn

Visualizations include:

Histograms

Boxplots

Countplots

Correlation heatmap

🤖 Modeling Model Accuracy Churn Recall Logistic Regression ~0.82 ~0.60 Balanced Logistic Regression ~0.75 ~0.83 Random Forest ~0.79 ~0.46 Balanced Random Forest ~0.79 ~0.46 🏆 Final Model: Balanced Logistic Regression

Chosen because:

Highest recall for churn customers

Most effective for business retention

AUC ≈ 0.82

🔑 Feature Importance (Top Churn Drivers) 🚨 Increase Churn:

Fiber optic internet

Electronic check payments

Streaming services

Paperless billing

Multiple phone lines

Senior Citizens

🛡 Reduce Churn:

Two-year contracts (strongest)

One-year contracts

Online security

Technical support

Simpler plans

🧠 Business Recommendations

Target month-to-month customers with retention offers

Convert electronic check users to more stable payments

Offer incentives to fiber optic customers

Promote security & support add-ons

Monitor new customers early

🛠 Tech Stack

Python

Pandas

NumPy

Matplotlib / Seaborn

Scikit-learn

Jupyter Notebook

📁 Project Structure customer_churn_project/ │── churn.ipynb │── README.md │── data/ │ └── WA_Fn-UseC_-Telco-Customer-Churn.csv │── images/ ├── churn_distribution.png ├── confusion_matrix.png ├── roc_curve.png └── feature_importance.png

🎯 Summary

This project demonstrates:

An end-to-end ML workflow

Handling imbalanced classification

Delivering interpretable, business-ready insights

Strong Python, ML, and data analysis skills
