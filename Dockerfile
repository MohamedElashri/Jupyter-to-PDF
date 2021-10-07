FROM jgoldfar/pandoc-nbconvert-docker

COPY entrypoint.sh /entrypoint.sh

# Execute the docker container at startup
ENTRYPOINT ["/entrypoint.sh"]
