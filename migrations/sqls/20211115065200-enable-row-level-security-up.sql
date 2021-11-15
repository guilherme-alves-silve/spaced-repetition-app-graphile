ALTER TABLE learn.card ENABLE ROW LEVEL SECURITY;

CREATE POLICY select_card ON learn.card FOR SELECT TO learn_person USING (
	person_id = NULLIF(current_setting('jwt.claims.person_id', TRUE), '')::INTEGER
);

CREATE POLICY update_card ON learn.card FOR UPDATE TO learn_person USING (
	person_id = NULLIF(current_setting('jwt.claims.person_id', TRUE), '')::INTEGER
);

CREATE POLICY delete_card ON learn.card FOR DELETE TO learn_person USING (
	person_id = NULLIF(current_setting('jwt.claims.person_id', TRUE), '')::INTEGER
);

CREATE POLICY insert_card ON learn.card FOR INSERT TO learn_person WITH CHECK (
	person_id = NULLIF(current_setting('jwt.claims.person_id', TRUE), '')::INTEGER
);
