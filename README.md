# Acquisition-Driven Growth: A Marketplace Yet to Build a Retention Engine

## Project Overview

This project analyzes customer growth and retention patterns in a Brazilian e-commerce marketplace using the **Olist Public Dataset**. The central finding is straightforward: revenue growth is being sustained almost entirely by new customer acquisition, while retention remains structurally absent across all observed cohorts.

The analysis is designed to answer one core question: **is this marketplace growing sustainably, or is it aqcuisition-driven?**

---

## Key Insights

- Revenue growth is almost entirely driven by new customer acquisition, with new customers contributing 97% of total revenue throughout the observed period, leaving the existing customer base with a marginal and stagnant share.
- Retention collapses immediately after the first purchase, with more than 99% of customers not returning in the following month. This pattern is consistent across all cohorts and shows no signs of improvement over time. It is worth noting that this marketplace is dominated by durable goods with medium to long usage cycles, meaning a portion of this pattern may reflect natural buying behavior rather than pure retention failure. Customers who purchased furniture, construction tools, or electronics may simply not need to repurchase within the two-year observation window.
- Nearly half of all existing customer transactions (49.94%) fall within the at-risk and churned zones. While this indicates that retention is not happening proactively, the durable goods context suggests that not all customers in these zones have genuinely disengaged, some may be operating within a natural buying cycle for their product category. What remains clear is that the business currently lacks the infrastructure to distinguish between the two.
- Existing customers spend less than new ones, with retained and resurrected customers generating an AOV 8–10% lower than new customers. Rather than confirming outright monetization failure, this gap may partly reflect a natural shift in purchase composition. New customers tend to make larger initial purchases such as furniture or electronics, while returning customers are more likely to buy complementary products at lower price points. Regardless of the cause, no upward movement in existing customer AOV has been observed over time.
- Revenue retention marginally outpaces customer retention, suggesting that returning customers spend more per visit than in the prior period. However, given the dominance of durable goods, this may partly reflect category-switching behavior rather than genuine loyalty-driven expansion. The base remains too small for this signal to generate meaningful business impact at scale.

---

## Dataset
**Brazilian E-Commerce Public Dataset by Olist**
- Source: [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- Coverage: 2016-2018
- Key tables used: `customers`, `orders`, `order_items`, `order_payments`

---

## Customer Segmentation

Customers are segmented into three groups based on interpurchase behavior:

| Segment | Definition |
|---|---|
| **New Customer** | First-time buyers with no prior transaction history |
| **Retained** | Returning customers within the normal purchase cycle (≤ 90 days) |
| **Resurrected** | Customers who return after an extended period of inactivity (> 90 days) |

---

## Tools & Methods

| Stage | Tool |
|---|---|
| Data Extraction | SQL |
| Exploratory Data Analysis | Python (Pandas, Matplotlib, Seaborn) |
| Analysis & Aggregation | Microsoft Excel |
| Reporting | PDF |

---

## Repository Structure

```
repository/
├── README.md
├── notebooks/
│   └── Olist_Growth_Performance_EDA.ipynb               ← exploratory data analysis
├── sql/
│   └── olist_growth_performance_queries.sql             ← data extraction queries
├── excel/
│   └── olist_growth_performance_analysis.xlxs           ← analysis & aggregation
└── reports/
    └── olist_growth_performance_analysis_report.pdf     ← full analysis report
```

---

## How to Navigate This Repository

1. Start with this README for project context and key findings.
2. Open `notebooks/Olist_Growth_Performance_EDA.ipynb` for a detailed walkthrough of the data exploration process, including missing value handling, distribution analysis, and outlier assessment.
3. Review `sql/olist_growth_performance_queries.sql` to understand how the data was extracted and structured before analysis.
4. Open `excel/olist_growth_performance_analysis.xlsx` to explore the analysis and aggregations that form the basis of the findings. The workbook is organized into separate sheets by business question, covering revenue contribution gap between new and existing customers, cohort decay after the first purchase, revenue retention vs. customer retention, behavioral expansion among existing customers, and structural churn leakage based on purchase inactivity.
5. Read `reports/olist_growth_performance_analysis_report.pdf` for the full analysis and business implications.
