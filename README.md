# LMS Analytics — Students Performance & Engagement

## 📊 Project Overview

**LMS Analytics — Students Performance & Engagement** is an interactive Business Intelligence dashboard developed using **SQL Server and Microsoft Power BI** to monitor trainee enrollment, academic performance, attendance, and engagement.

The project transforms raw Learning Management System (LMS) data into an interactive dashboard that provides a clear overview of trainee performance and training activity across universities, courses, labs, academic years, and instructors.

## 🎯 Business Objective

The main objective of this project is to provide a centralized analytical view of trainee performance and engagement and help stakeholders answer key questions such as:

* How many trainees are enrolled?
* What is the average final score?
* What is the overall attendance rate?
* What is the failure rate?
* How are trainees distributed across universities and gender?
* How does academic performance vary by grade?
* What are the attendance patterns across different session topics?
* How do instructors compare based on average trainee scores?

## 🗄️ Data Preparation & SQL

The data was prepared using **SQL Server** by creating two analytical views that combine information from multiple LMS tables.

### 1. `v_TraineePerformance`

This view combines trainee, enrollment, course, instructor, lab, and grading information to create a dataset for analyzing academic performance.

It includes information such as:

* Trainee ID and name
* Gender
* University and Faculty
* Academic Year
* Active status
* Lab
* Course
* Course duration
* Instructor
* Enrollment and course dates
* Attendance score
* Assignment score
* Project score
* Midterm exam score
* Final exam score
* Total score
* Grade letter

### 2. `v_SessionAttendance`

This view provides session-level attendance information by combining trainee, session, course, and lab data.

It includes:

* Trainee information
* Gender
* University and Faculty
* Academic Year
* Lab
* Course
* Session date
* Session topic
* Attendance status

The views were then used as the main data sources for the Power BI analysis.

## 🧹 Data Cleaning & Transformation

After importing the SQL views into Power BI, the data was cleaned and prepared for analysis.

The preparation process included:

* Handling missing values
* Standardizing data
* Checking data types
* Preparing fields for analysis
* Structuring the data for visualization
* Ensuring consistency across analytical dimensions

## 🧮 DAX & Data Analysis

**DAX (Data Analysis Expressions)** was used in Power BI to create analytical measures and calculate the main performance indicators displayed in the dashboard.

Key KPIs include:

* **Total Trainees**
* **Average Final Score**
* **Overall Attendance**
* **Fail Rate**

## 📈 Dashboard Overview

The dashboard is designed around trainee performance and engagement and includes interactive filters for:

* University
* Course
* Lab
* Academic Year
* Instructor Name

### Key Performance Indicators

| KPI                 |  Value |
| ------------------- | -----: |
| Total Trainees      |    138 |
| Average Final Score | 24.49 |
| Overall Attendance  | 68.91% |
| Fail Rate           |  6.52% |

### Visualizations

#### Trainees Distribution by University & Gender

A horizontal bar chart showing the distribution of male and female trainees across different universities.

#### Academic Performance Tiering

A donut chart displaying the distribution of trainees across different grade letters, including B, C+, B+, A, and A-.

#### Session Attendance Status by Topic

A stacked bar chart showing attendance statuses such as **Present, Late, and Absent** across different training session topics.

#### Instructors by Average Score

A horizontal bar chart comparing instructors based on the average scores of their trainees.

## 💡 Key Insights

The dashboard provides a high-level view of the LMS training population and enables stakeholders to identify patterns in:

* Trainee academic performance
* Attendance and engagement
* University and gender distribution
* Grade distribution
* Session attendance by topic
* Instructor performance

The interactive filters allow users to drill down into specific universities, courses, labs, academic years, or instructors for more focused analysis.

## 🛠️ Tools & Technologies

* **SQL Server**
* **T-SQL**
* **Microsoft Power BI**
* **Power Query**
* **DAX**
* **Data Cleaning & Transformation**
* **Data Modeling**
* **Data Visualization**
* **Business Intelligence**

## 🚀 Project Outcome

This project demonstrates the end-to-end process of building a Business Intelligence solution, starting from **SQL-based data preparation** and analytical views, followed by **data cleaning, transformation, DAX calculations, and interactive Power BI visualization**.

The resulting dashboard provides stakeholders with an accessible way to monitor trainee performance and engagement and explore the factors contributing to overall training outcomes.

## 👩‍💻 Skills Demonstrated

**SQL | SQL Views | Power BI | Power Query | DAX | Data Cleaning | Data Transformation | Data Analysis | Data Modeling | Data Visualization | Business Intelligence**


