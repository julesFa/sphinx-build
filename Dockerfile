# Container image that runs your code
FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 pip python3-sphinx make python3-venv
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
