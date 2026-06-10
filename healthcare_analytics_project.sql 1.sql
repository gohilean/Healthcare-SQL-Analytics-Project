-- Query 1: Total Billing by Insurance Provider
-- Business Question:
-- Which insurance providers generated the highest total billing revenue?

SELECT
    insurance_provider,
    ROUND(SUM(billing_amount), 2) AS total_billing
FROM healthcare_data
GROUP BY insurance_provider
ORDER BY total_billing DESC;

-- Query 2: Average Cost by Medical Condition
-- Business Question:
-- Which medical conditions have the highest average billing cost?

SELECT
    medical_condition,
    ROUND(AVG(billing_amount), 2) AS avg_cost
FROM healthcare_data
GROUP BY medical_condition
ORDER BY avg_cost DESC;

-- Query 3: Average Length of Stay
-- Business Question:
-- How long do patients stay in the hospital on average?

SELECT
    ROUND(AVG(discharge_date - date_of_admission), 2) AS avg_days_stayed
FROM healthcare_data;

-- Query 4: Average Billing by Admission Type
-- Business Question:
-- Which admission types generate the highest average billing cost?

SELECT
    admission_type,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM healthcare_data
GROUP BY admission_type
ORDER BY avg_billing DESC;

-- Query 5: Patient Count by Medical Condition
-- Business Question:
-- Which medical conditions occur most frequently?

SELECT
    medical_condition,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY medical_condition
ORDER BY patient_count DESC;

-- Query 6: Patient Count by Blood Type
-- Business Question:
-- Which blood types occur most frequently?

SELECT
    blood_type,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY blood_type
ORDER BY patient_count DESC;

-- Query 7: Patient Count by Insurance Provider
-- Business Question:
-- Which insurance providers serve the largest number of patients?

SELECT
    insurance_provider,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY insurance_provider
ORDER BY patient_count DESC;

-- Query 8: Total Revenue by Insurance Provider
-- Business Question:
-- Which insurance providers generate the most billing revenue?

SELECT
    insurance_provider,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM healthcare_data
GROUP BY insurance_provider
ORDER BY total_revenue DESC;

-- Query 9: Total Revenue by Admission Type
-- Business Question:
-- Which admission types generate the most total revenue?

SELECT
    admission_type,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM healthcare_data
GROUP BY admission_type
ORDER BY total_revenue DESC;

-- Query 10: Total Revenue by Medical Condition
-- Business Question:
-- Which medical conditions generate the most billing revenue?

SELECT
    medical_condition,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM healthcare_data
GROUP BY medical_condition
ORDER BY total_revenue DESC;

-- Query 11: Average Length of Stay by Medical Condition
-- Business Question:
-- Which medical conditions require the longest hospital stays?

SELECT
    medical_condition,
    ROUND(AVG(discharge_date - date_of_admission), 2) AS avg_days_stayed
FROM healthcare_data
GROUP BY medical_condition
ORDER BY avg_days_stayed DESC;

-- Query 12: Top 10 Doctors by Patient Volume
-- Business Question:
-- Which doctors handled the highest number of patients?

SELECT
    doctor,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY doctor
ORDER BY patient_count DESC
LIMIT 10;

-- Query 13: Revenue Per Day by Medical Condition
-- Business Question:
-- Which medical conditions generate the highest revenue per day of hospitalization?

SELECT
    medical_condition,
    ROUND(
        SUM(billing_amount) /
        SUM(discharge_date - date_of_admission),
    2) AS revenue_per_day
FROM healthcare_data
GROUP BY medical_condition
ORDER BY revenue_per_day DESC;

-- Query 14: Average Billing by Gender
-- Business Question:
-- Do male and female patients have different average healthcare costs?

SELECT
    gender,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM healthcare_data
GROUP BY gender
ORDER BY avg_billing DESC;

-- Query 15: Patient Count by Admission Type
-- Business Question:
-- Which admission type is most common?

SELECT
    admission_type,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY admission_type
ORDER BY patient_count DESC;
