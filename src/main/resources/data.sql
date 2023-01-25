-- NO ENCRYPTION SPRING SECURITY NOOP ID
--INSERT INTO users VALUES ('john', '{noop}test123', true);
--INSERT INTO users VALUES ('mary', '{noop}test123', true);
--INSERT INTO users VALUES ('susan', '{noop}test123', true);

-- BCRYPT ENC for passwords
INSERT INTO users VALUES ('john', '{bcrypt}$2a$10$huJMTQgnCh2a/Deee0P7sux7B/eroN8srvdf5AoY58d5aYUQxOKXa', true);
INSERT INTO users VALUES ('mary', '{bcrypt}$2a$10$FCIMEEJoLWO4i6z/EtWmSeMNuoqPCaif4yeiecnO1SxQlzcH9w2AK', true);
INSERT INTO users VALUES ('susan', '{bcrypt}$2a$10$mDg9/bUZtUlPJ4UeBHeljuOoraeoBquRX5htz/41qAn64DCxXRgMO', true);

INSERT INTO authorities VALUES ('john', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('mary', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('mary', 'ROLE_MANAGER');
INSERT INTO authorities VALUES ('susan', 'ROLE_EMPLOYEE');
INSERT INTO authorities VALUES ('susan', 'ROLE_ADMIN');

