# Spaced Repetition Backend with Postgraphile

## Course

* Based on the [Postgraphile For Beginners Mini Course](https://www.youtube.com/watch?v=eDZO8z1qw3k)

## Technologies

* [Postgres](https://www.postgresql.org/)
* [Postgraphile](https://www.graphile.org/postgraphile/)
* [NodeJS](https://nodejs.org/en/)
* [GraphQL](https://graphql.org/)
* [db-migrate](https://db-migrate.readthedocs.io/en/latest/)

## Create the database

* Local module: node node_modules/db-migrate/bin/db-migrate createdb
* Global: db-migrate createdb
* Create migration file: npx db-migrate create [file-name].sql
* Increase migration: npx db-migrate up
* Decrease migration: npx db-migrate down

## How to access the application

* Backend: http://localhost:5000/graphql
* Interactive: http://localhost:5000/graphiql

