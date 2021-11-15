ALTER DEFAULT PRIVILEGES GRANT EXECUTE ON functions TO public;

REVOKE USAGE ON SCHEMA learn FROM learn_anonymous, learn_person;

REVOKE EXECUTE ON FUNCTION learn.authenticate (TEXT, TEXT) FROM learn_anonymous, learn_person;
REVOKE EXECUTE ON FUNCTION learn.register_person (TEXT, TEXT, TEXT, TEXT) FROM learn_anonymous;
REVOKE EXECUTE ON FUNCTION learn.handle_score (INTEGER, INTEGER) FROM learn_person;

REVOKE ALL PRIVILEGES ON TABLE learn.person FROM learn_person;
REVOKE SELECT, DELETE ON TABLE learn.card FROM learn_person;
REVOKE INSERT, UPDATE (id, question, answer, archived) ON TABLE learn.card FROM learn_person;
REVOKE USAGE ON SEQUENCE learn.card_id_seq FROM learn_person;
REVOKE SELECT ON TABLE learn.response FROM learn_person;
REVOKE SELECT ON learn.next_card FROM learn_person;
