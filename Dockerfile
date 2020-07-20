# This sets the Python version
FROM python:3.7-slim

# Arguments from the Compose (needs to be below the FROM)
ARG uid
ARG gid
ARG user

# Install SSH Client and requirements.txt
RUN apt-get update && apt-get install -y openssh-client
WORKDIR /tmp
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add your group and user to the image
RUN groupadd -g $gid $user
RUN useradd -u $uid -g $gid -m -s /bin/bash $user

# Drop into shell
ENTRYPOINT [ "/bin/bash" ]
