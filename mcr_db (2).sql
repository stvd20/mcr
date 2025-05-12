CREATE DATABASE IF NOT EXISTS mcr_db;
USE mcr_db;

-- جدول المستخدمين
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role ENUM('coordinator', 'doctor', 'statistician', 'manager') NOT NULL
);

-- جدول الإحالات
CREATE TABLE IF NOT EXISTS referrals (
  id INT AUTO_INCREMENT PRIMARY KEY,
  patient_name VARCHAR(100) NOT NULL,
  patient_nationality VARCHAR(50),
  referral_type VARCHAR(100),
  specialty_requested VARCHAR(100),
  attachment_path VARCHAR(255),
  status ENUM('pending', 'approved', 'rejected') DEFAULT 'pending',
  reply TEXT
);

-- إضافة حسابات تجريبية
INSERT INTO users (username, password, role) VALUES
('coordinator1', '123456', 'coordinator'),
('doctor1', '123456', 'doctor'),
('statistician1', '123456', 'statistician'),
('manager1', '123456', 'manager');
