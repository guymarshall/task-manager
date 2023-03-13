CREATE TABLE users (
    userID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    emailAddress VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    isDeleted INT NOT NULL DEFAULT 0
);

INSERT INTO users (emailAddress, encryptedPassword)
VALUES (
    SHA2('user@example.com', 256),
    SHA2('password123', 256)
);
