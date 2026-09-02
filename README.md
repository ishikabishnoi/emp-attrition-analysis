# 📊 Why Do Employees Quit? An HR Attrition Analysis

## 🎯 Project Overview

This project analyzes **1,470 employee records** from IBM's HR Analytics dataset to uncover **why people leave their jobs**. Instead of collecting opinions, I asked the data directly — through Python-powered exploratory data analysis and SQL queries that investigate real patterns in employee behavior.

The goal? Identify actionable factors driving attrition so HR teams can actually fix the problem.

**Dataset:** [IBM HR Analytics Employee Attrition & Performance](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) (Kaggle)  
**Overall Attrition Rate:** 16.1% (237 out of 1,470 employees left)

---

## 🔍 Key Findings

Here's what the data revealed:

### 💰 **Income Matters — Big Time**
- Employees earning **$1k-5k/month:** 21.76% attrition ⚠️
- Employees earning **$5k-20k/month:** 10.26% attrition ✅
- **Takeaway:** Low-income employees are 2x more likely to leave

### ✈️ **Frequent Travelers Burn Out**
- Frequent business travelers: **24.9% attrition**
- Rare travelers: **15.2% attrition**
- **Takeaway:** Travel culture = retention risk

### ⏰ **Young Employees Leave Fast**
- Age 18-25: **38.8% attrition** 🚨
- Age 46+: **7.7% attrition** ✅
- **Takeaway:** Early-career retention is critical

### 🏢 **Department Disparities**
- **Sales** (highest): 20.63% attrition
- HR (middle): 19.05% attrition
- Research & Development (lowest): 13.84% attrition

### 😔 **Environment Satisfaction = Deal Breaker**
- Low satisfaction: Much higher attrition
- High satisfaction: Significantly better retention
- **Takeaway:** Culture and work environment directly drive decisions

### 🎬 **Promotion Delays Cost Talent**
- Employees waiting 6-9 years without promotion: Higher attrition
- But surprisingly, those promoted recently (0-2 years ago) also show decent attrition
- **Takeaway:** Timing matters, but growth opportunities matter more

### 🏠 **Distance from Home**
- 21-29 km commute: Highest attrition
- **Takeaway:** Remote/flexible work could be a retention lever

### 💼 **Overtime = Attrition**
- Overtime workers: Higher attrition than non-overtime
- **Takeaway:** Work-life balance issues are real

---
## 📊 Dashboard
<img width="1319" height="723" alt="Screenshot (273)" src="https://github.com/user-attachments/assets/d5cc0f46-1d8d-4446-8581-8063448248b5" />


---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **Python** | Data cleaning, exploratory analysis |
| **Pandas** | Data manipulation & transformation |
| **Jupyter Notebook** | Interactive analysis environment |
| **SQLAlchemy** | ORM for database connection |
| **MySQL** | Data storage & SQL analysis |
| **Power BI** | Interactive dashboard |
| **Git/GitHub** | Version control & portfolio |

---

## 📊 What Each SQL Query Does

**Demographics:**
- `attrition-in-what-age.sql` — Age group breakdown
- `attrition-by-gender.sql` — Gender-based attrition patterns

**Compensation & Growth:**
- `attrition-bcz-of-income.sql` — Salary impact on retention
- `attrition-bcz-of-career-growth.sql` — Stock options & pay raises

**Work Conditions:**
- `attrition-bcz-of-travel.sql` — Business travel frequency
- `attrition-bcz-of-work-timings.sql` — Overtime & workload
- `attrition-bcz-of-distance-from-home.sql` — Commute distance

**Tenure & Career Development:**
- `attrition-bcz-of-time-spent-at-company.sql` — Company tenure, role tenure, promotion delays
- `attrition-based-on-emp-tenure.sql` — Comprehensive tenure analysis

**Work Environment:**
- `attrition-bcz-of-environment-satisfaction-job-role.sql` — Job satisfaction & role breakdown
- `attrition-bcz-of-WLB-n-marital-status.sql` — Work-life balance + marital status

**Department & Role:**
- `attrition-in-department.sql` — Department-level trends

---

## 💡 Data Analysis Thinking 🧠
- **Always validate edge cases:** Finding a group with 100% attrition but only 2 employees? Gotta flag it.
- **Sample size matters:** A 0% attrition rate among 8 people isn't the same as among 800 people.
- **Look for contradictions:** "R&D has more overtime but Sales has higher attrition" — dig deeper!
- **Bin strategically:** Group similar attrition rates together, not just uniform buckets.

### Common Traps ⚠️
- Ordering results by attrition rate can scramble logical bins (age groups appearing out of order)
- Not checking if patterns are statistically meaningful
- Mixing correlation with causation

---

## 📝 Learning Journey

I documented my daily progress here:
- **Blog:** https://izyink.blogspot.com/2026/07/employee-attrition-analysis-day-1.html

---

## 💻 How to Use This Project

### To explore the data:
1. Clone the repo
2. Load the CSV into your preferred SQL database
3. Run the `.sql` query files against your database
4. Review results and insights in the comments

### To build on this:
- Modify the `CASE WHEN` ranges to test different bucketing strategies
- Add `HAVING COUNT(*) > X` to filter out small groups
- Create JOINs if you have additional employee data
- Use window functions (`ROW_NUMBER()`, `RANK()`) for advanced analysis

---

## 📈 Dataset Summary

| Metric | Value |
|--------|-------|
| Total Employees | 1,470 |
| Employees Who Left | 237 |
| Overall Attrition Rate | 16.1% |
| Columns Analyzed | 35 |
| Age Range | 18-65 years |
| Monthly Income Range | $1,009 - $19,999 |
| Job Roles | 9 different roles |
| Departments | 3 (Sales, R&D, HR) |

---

## 🎓 Skills Demonstrated

- ✅ SQL: GROUP BY, aggregations, CASE statements, filtering
- ✅ Python: Pandas, data cleaning, exploratory analysis
- ✅ Data Analysis: Insight generation, pattern recognition, edge case handling
- ✅ Business Thinking: Asking "why" and connecting data to real HR decisions
- ✅ Communication: Documenting findings and methodology
- ✅ Version Control: Iterative commits showing learning progression

---
## 🤝 Questions or Suggestions?

Found a better approach? Spotted an insight? Open an issue or reach out. Happy to discuss.
