CREATE ROLE learn_postgraphile LOGIN PASSWORD 'secret_password';
CREATE ROLE learn_anonymous;
CREATE ROLE learn_person;

GRANT learn_anonymous TO learn_postgraphile;
GRANT learn_person TO learn_postgraphile;
