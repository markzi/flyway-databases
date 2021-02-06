# Database Configuration

Contains the Flyway scripts to setup the database objects and populate reference data

# Running

## Locally

When running locally for development a docker compose file has been setup which contains a Postgres DB and Flyway. When
the cnotainers are run the you will have a localy accessable Postgres DB which has had all the flyway migrations
applied.

The Postgre DB should be accessible from _localhost_ on port _5432_. There is a .env file which contains all the other
connection details you would need if you wanted to connect a client to the DB.

To manage running the compose file there are 2 scripts

    docker-compose-up.sh
    docker-compose-down.sh
