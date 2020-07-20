## Containerized Ansible

This allows you to run Ansible in a container with specific versions of Python and Ansible without affecting your local environment.
- It copies your user into the container and mounts your home directory as a volume attached to the container
- The Python version can be changed in the Dockerfile
- The Ansible version can be changed in the requirements.txt file

#### Usage:
```
# Build, start and attach to the container:
./start.sh

# To leave the container and clean up:
exit
```
