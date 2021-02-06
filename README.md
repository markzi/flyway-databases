# Flyway Databases

Contains docker compose scripts to setup a number of differnet databases localy and also use Flyway to migrate SQL scripts into them.

Flyway only supports SQL databases so any NoSQL databases would need some other tooling perhaps

## Databases

- Postgres

## Databases to consider/still setup

### SQL
- CockroachDB
- DB2
- Derby
- Firebird
- H2
- HSQLDB
- Informix
- MariaDB
- MySQL
- Oracle
- Snowflake
- SQL Server
- SQLite
- Sybase ASE
- Redshift

### NoSQL
- Redis
- MongoDB
- ??

## Using

### Running

There are docker up, down and the compose script for each database. Simply running these will create an instance, or destory an instance. 

Databases will be running on their default port - this might change as more are added if there are port conflicts. There should be no reason why we cannot run them all at the same time ( resources permitting of course! )

```
./docker-compose-postgres-up.sh
./docker-compose-postgres-down.sh
```
### SQL

Each database has a folder under the root ```src``` folder. SQL files should be put in here and the versions incremented accordingly.

### Database

Flyway is configure to create a flyway db which is where all the SQL migrations take place.

### Flyway

In the root of the project there is a ```conf``` folder which should be used when running flyway from the command line. You specify the config flie with the ```-configFiles``` switch and also use the ```-locations``` switch to specify the SQL migrations folder

```
flyway -configFiles=conf/flyway-postgres.conf -locations=src/postgres/migrations info
flyway -configFiles=conf/flyway-postgres.conf -locations=src/postgres/migrations clean
flyway -configFiles=conf/flyway-postgres.conf -locations=src/postgres/migrations migrate
flyway -configFiles=conf/flyway-postgres.conf -locations=src/postgres/migrations repair
```
