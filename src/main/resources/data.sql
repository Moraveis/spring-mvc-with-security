INSERT INTO users VALUES ('john', '{noop}test123', true);
INSERT INTO users VALUES ('mary', '{noop}test123', true);
INSERT INTO users VALUES ('susan', '{noop}test123', true);

INSERT INTO authorities VALUES ('john', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('mary', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('mary', 'ROLE_MANAGER');
INSERT INTO authorities VALUES ('susan', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('susan', 'ROLE_ADMIN');

