CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE papers (
    title VARCHAR(255) NOT NULL,
    grade VARCHAR(255) NOT NULL,
    id INT NOT NULL,
    FOREIGN KEY (id)
        REFERENCES students (id)
);

INSERT INTO students(firstname)
VALUES('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers(id, title, grade)
VALUES(4, 'Borges and Magical Realism', 89);