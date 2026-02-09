# Student Mental Health SQL Analysis 📊



## 📌 Conclusions & Key Insights

This project used SQL to explore patterns in student mental health data, focusing on stress, academic workload, and lifestyle factors.

Key findings from the analysis include:

- Gender distribution shows an uneven representation of students across genders, which may influence how mental health patterns appear in aggregate analyses.

- The overall average stress level indicates that a significant portion of students experience moderate to high stress.

- Stress levels differ by gender, with observable variation in average stress experience across gender groups.

- Concentration problems vary in frequency, suggesting that difficulty concentrating is a common issue among students and may be linked to stress and anxiety factors.

- Academic overload is associated with higher average concentration problems, indicating that increased workload may negatively affect students’ ability to focus.

- Higher levels of academic pressure correspond to higher average stress levels, reinforcing the role of academic demands in student stress.

- A subset of students falls into a high-stress category, identifying a group that may be particularly vulnerable to adverse mental health outcomes.

- Among high-stress students, average anxiety levels are elevated, suggesting a strong overlap between stress experience and anxiety tension.

- Sleep problems show a clear relationship with stress, where students reporting more sleep issues tend to exhibit higher average stress levels.

- Stress and anxiety levels vary across age groups, indicating that mental health experiences are not uniform throughout different stages of student life.

- When examining both stress and anxiety together, certain combinations occur more frequently, highlighting common mental health profiles within the dataset.

- An aggregated view of academic, social, and environmental factors (including academic overload, sleep problems, peer competition, relationship stress, and home/work environment) shows that combinations of these stressors are associated with higher average anxiety and stress levels.

- Academic workload levels with above-average anxiety and stress simultaneously were identified using aggregated filtering, isolating high-risk workload categories.

- Students with stress levels above the dataset average were identified, enabling relative risk segmentation rather than reliance on fixed thresholds.

Overall, the analysis demonstrates that academic pressure, sleep issues, and environmental factors are strongly associated with increased stress and anxiety among students. The findings emphasize the importance of academic balance and healthy sleep habits in supporting student mental health. The use of SQL aggregation, grouping, and subqueries enabled the identification of both population-level trends and higher-risk student groups. 

---



## 📌 Project Overview

This repository contains a **SQL-centric analysis** of student mental health data.  
The goal is to explore relationships between **stress, emotional well-being, academic pressure, and lifestyle factors**, using SQL queries to derive meaningful insights.

Dataset: *Stress Indicators Dataset for Mental Health Classification*  
Download: https://data.mendeley.com/datasets/2gsjv8m7ch/2 

---



## 🛠 Tools & Setup

- **Database**: SQLite (`.db` file)
- **IDE**: Visual Studio Code
- **Extensions**: SQLite (VS Code extension)
- **Languages**: SQL


---



## 💻 How to Use

1. Clone the repository  
2. Open the project folder in Visual Studio Code  
3. Open the SQLite database file (`.db`)  
4. Explore the `stress` table using SQL queries  
5. Run the analysis queries and interpret the results


---



📣 Conclusion
This project showcases SQL as an analytical tool for real-world data exploration. Insights drawn here may inform mental health support strategies or future research.
