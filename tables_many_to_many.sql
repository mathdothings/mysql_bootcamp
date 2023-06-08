CREATE TABLE reviewers (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE series (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    released DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ratings (
    id INT NOT NULL AUTO_INCREMENT,
    score INT(5) NOT NULL,
    reviewers_id INT NOT NULL,
    series_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (reviewers_id)
        REFERENCES reviewers (id),
    FOREIGN KEY (series_id)
        REFERENCES series (id)
);