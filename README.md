# HealthConnect – Hospital Appointment Scheduler

HealthConnect is a MySQL-based database project designed to streamline hospital appointment scheduling. It automates patient bookings, manages doctor availability, and ensures efficient healthcare operations.

⚙️ Features
📅 Appointment Scheduling – Handles patient bookings with doctor availability.

👨‍⚕️ Doctor Management – Tracks specialization, schedules, and workload.

🧾 Patient Records – Stores patient details and medical history.

🛠️ Stored Procedures – For inserting appointments, checking conflicts, and generating reports.

🔒 Triggers – To ensure data consistency (e.g., auto-updating appointment counts).

📊 Sample Reports – Queries for workload stats, upcoming appointments, and appointment history.

🧰 Technologies Used
MySQL 8+

MySQL Workbench

SQL Triggers, Procedures, and Joins
🚀 Getting Started
Clone the repository:

git clone https://github.com/yourusername/HealthConnect-Database.git
Open MySQL Workbench and execute the following files in order:

schema.sql

procedures.sql

sample_data.sql

Start querying or building a front-end interface!
## 📝 Example Query

```sql
-- Get upcoming appointments for a specific doctor
SELECT 
    a.appointment_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    a.appointment_date,
    a.appointment_time
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
WHERE a.doctor_id = 3 AND a.appointment_date >= CURDATE()
ORDER BY a.appointment_date, a.appointment_time;

