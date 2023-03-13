CREATE TABLE users (
    userID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    emailAddress TEXT NOT NULL,
    password TEXT NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    isDeleted INT NOT NULL DEFAULT 0
);

INSERT INTO users (emailAddress, encryptedPassword)
VALUES (
    SHA2('user@example.com', 256),
    SHA2('password123', 256)
);

CREATE TABLE tasks (
    taskID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    assignedToID INT,
    createdByID INT NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    isDeleted BOOLEAN NOT NULL DEFAULT FALSE
);