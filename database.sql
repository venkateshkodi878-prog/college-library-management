CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE IF NOT EXISTS books (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(50) NOT NULL UNIQUE,
    quantity INT NOT NULL
);

INSERT INTO books (title, author, isbn, quantity) VALUES
('Database System Concepts', 'Abraham Silberschatz', '9780073523323', 5),
('Clean Code', 'Robert C. Martin', '9780132350884', 3),
('Java: The Complete Reference', 'Herbert Schildt', '9781260440232', 4);

CREATE USER IF NOT EXISTS 'library_user'@'%' IDENTIFIED BY 'library_pass';
GRANT ALL PRIVILEGES ON library_db.* TO 'library_user'@'%';
FLUSH PRIVILEGES;
