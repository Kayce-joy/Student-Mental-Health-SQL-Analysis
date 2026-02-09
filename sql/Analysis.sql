-- Gender distribution of students in the dataset
SELECT gender, COUNT(*) AS student_count
FROM stress
GROUP BY gender;

-- Average stress level among students
SELECT AVG(stress_experience) AS avg_stress
FROM stress;

-- How do stress levels differ by gender
SELECT gender, AVG(stress_experience) AS avg_stress
FROM stress
GROUP BY gender;

-- Distribution of concentration_problems
SELECT concentration_problems, COUNT(*) AS count_students
FROM stress
GROUP BY concentration_problems
ORDER BY concentration_problems;

-- Academic overload vs concentration_problems
SELECT academic_overload, AVG(concentration_problems) AS avg_depression
FROM stress
GROUP BY academic_overload
ORDER BY academic_overload;

-- Academic pressure vs stress
SELECT academic_overload, AVG(stress_experience) AS avg_stress
FROM stress
GROUP BY academic_overload
ORDER BY academic_overload;

-- High-stress students
SELECT age, gender, stress_experience
FROM stress
WHERE stress_experience >= 4;

-- Anxiety levels among high-stress students
SELECT AVG(anxiety_tension) AS avg_anxiety_high_stress
FROM stress
WHERE stress_experience >= 4;

--Sleep problems vs stress
SELECT sleep_problems, AVG(stress_experience) AS avg_stress
FROM stress
GROUP BY sleep_problems
ORDER BY sleep_problems;

-- Stress levels by age group
SELECT age, AVG(stress_experience) AS avg_stress
FROM stress
GROUP BY age
ORDER BY age;

-- Mental health indicators by age
SELECT age, AVG(stress_experience) AS avg_stress, AVG(anxiety_tension) AS avg_anxiety
FROM stress
GROUP BY age
ORDER BY age;  

-- Common stress–anxiety combinations
SELECT
  stress_experience,
  anxiety_tension,
  COUNT(*) AS frequency
FROM stress
GROUP BY
  stress_experience,
  anxiety_tension
ORDER BY frequency DESC;

--Factors associated with poor mental health (aggregated view)
SELECT
  academic_overload, sleep_problems, peer_competition, relationship_stress, work_environment, home_environment,
  AVG(stress_experience) AS avg_stress,
  AVG(anxiety_tension)  AS avg_anxiety
FROM stress
GROUP BY academic_overload, sleep_problems, peer_competition, relationship_stress, work_environment, home_environment
ORDER BY avg_anxiety DESC;

-- Which academic workload levels are associated with significantly above-average anxiety scores and stress experience?
SELECT
  academic_overload,
  AVG(anxiety_tension) AS avg_anxiety,
  AVG(stress_experience) AS avg_stress
FROM stress
GROUP BY academic_overload
HAVING
  AVG(anxiety_tension) > (SELECT AVG(anxiety_tension) FROM stress)
  AND
  AVG(stress_experience) > (SELECT AVG(stress_experience) FROM stress);

--Which students fall into the top stress group relative to the dataset?
SELECT
  age,
  gender,
  stress_experience
FROM stress
WHERE stress_experience >
      (SELECT AVG(stress_experience) FROM stress);












