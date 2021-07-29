USE join_test_db;


CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);


CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

TRUNCATE roles;
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

TRUNCATE users;
INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null),
                                             ('cydnie', 'Cydnie@example.com', 2),
                                             ('sam', 'Sam@example.com', 2),
                                             ('evan', 'evan@example.com', 2),
                                             ('gary', 'gary@example.com', NULL);

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name as dept, COUNT(*) FROM roles
LEFT JOIN users u on roles.id = u.role_id
GROUP BY dept;