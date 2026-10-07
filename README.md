# Customer Shopping Behavior Analysis

## Project Overview

This project analyzes customer shopping behavior using transactional data from 3,900 purchases across multiple product categories. The objective is to identify customer spending patterns, product preferences, subscription behavior, and key business insights through data analysis and visualization. :chatgpt-content-reference{index="0"}

## Objectives

- Analyze customer purchasing behavior
- Identify high-performing products
- Evaluate subscription impact on revenue
- Compare customer segments
- Create an interactive Power BI dashboard

## Tools & Technologies

- Python (Pandas)
- SQL
- Power BI
- GitHub

## Project Workflow

### 1. Data Cleaning & Preparation
- Handled missing values
- Standardized column names
- Created new features
- Performed data quality checks

### 2. SQL Business Analysis
- Revenue by Gender
- Top Rated Products
- Shipping Type Comparison
- Subscriber vs Non-Subscriber Analysis
- Customer Segmentation
- Revenue by Age Group

### 3. Power BI Dashboard
Interactive dashboard containing:
- Customer Overview
- Revenue Analysis
- Category Performance
- Subscription Insights
- Age Group Analysis

## Repository Structure

```text
customer-shopping-behavior-analysis/
│
├── README.md
├── dataset/
├── python/
├── sql/
├── powerbi/
├── presentation/
└── images/
```

## Key Insights

- Customer behavior patterns were analyzed using 3,900 transaction records.
- Subscribers and non-subscribers were compared to understand revenue contribution.
- Customer segments were classified into New, Returning, and Loyal customers. :chatgpt-content-reference{index="1"}

## Dataset
- [Customer_Shopping_Behavour](dataset/customer_shopping_behavour.csv)


### Dataset Information

- Records: 3,900 customer purchases
- Features: 18 columns
- Includes customer demographics, purchase details, and shopping behavior data
- Used for data cleaning, SQL analysis, and Power BI dashboard development

### Key Variables

- Age
- Gender
- Location
- Item Purchased
- Category
- Purchase Amount
- Review Rating
- Subscription Status
- Discount Applied
- Frequency of Purchases

### Data Loading and Initial Exploration

The dataset was imported into Python using the Pandas library. The first five records were displayed using the `head()` function to understand the dataset structure, column names, and sample customer purchase records.

#### Activities Performed
- Loaded the dataset using `pd.read_csv()`
- Verified successful data import
- Displayed the first five rows of the dataset
- Reviewed customer demographics, purchase details, subscription status, and shopping behavior variables

#### Python Code

```python
import pandas as pd

df = pd.read_csv("customer_shopping_behavior.csv")
df.head()
```

#### Output

![Dataset Preview](dataset%20preview.png)
