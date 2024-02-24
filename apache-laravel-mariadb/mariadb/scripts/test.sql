-- SELECT '====== CREEATE USER ADMIN  ======';
-- CREATE USER admin@localhost IDENTIFIED BY 'pass';
-- GRANT ALL PRIVILEGES ON main_db.* TO admin@localhost;
-- FLUSH PRIVILEGES;

SELECT '====== INIT SCRIPT  ======';
CREATE TABLE IF NOT EXISTS init_test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    text VARCHAR(255)
);

INSERT INTO init_test (created_at, text) VALUES (NOW(), 'OK');