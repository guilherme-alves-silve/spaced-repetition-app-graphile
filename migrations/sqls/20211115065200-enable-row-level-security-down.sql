ALTER TABLE learn.card DISABLE ROW LEVEL SECURITY;

DROP POLICY select_card ON learn.card;
DROP POLICY update_card ON learn.card;
DROP POLICY delete_card ON learn.card;
DROP POLICY insert_card ON learn.card;
