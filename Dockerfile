# Get image "flyway" from Flyway's repository
FROM flyway/flyway

WORKDIR /flyway

# Database credentials
COPY src/main/resources/flyway.conf /flyway/conf

# Add migration scripts to the Docker image
ADD src/main/resources/release1.0/migrations /flyway/sql

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# Execute the command migrate
CMD [ "migrate" ]