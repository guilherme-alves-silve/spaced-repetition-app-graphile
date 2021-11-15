CREATE TABLE learn.person (
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	created_at TIMESTAMPTZ DEFAULT NOW()
);