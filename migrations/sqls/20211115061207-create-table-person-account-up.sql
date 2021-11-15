CREATE TABLE learn_private.person_account (
  person_id INTEGER PRIMARY KEY REFERENCES learn.person(id) ON DELETE CASCADE,
  email TEXT NOT NULL UNIQUE CHECK (email ~* '^.+@.+\..+$'),
  password_hash TEXT NOT NULL
);

CREATE INDEX person_account_email_idx ON learn_private.person_account(email);
