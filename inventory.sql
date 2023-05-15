CREATE TABLE inventory(
    id INT NOT NULL AUTO_INCREMENT,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(9, 2) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id)
);