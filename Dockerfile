FROM melashri/pandoc-nbconvert-docker:main-b6437a9

COPY entrypoint.sh /entrypoint.sh

# Execute the docker container at startup
ENTRYPOINT ["/entrypoint.sh"]
