CREATE TABLE follow (
        id_event INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
       famous_id VARCHAR(255) NOT NULL,
          fan_id VARCHAR(255) NOT NULL,
  current_status VARCHAR(255)
);