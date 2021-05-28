# Base-Shop Dockerfile

> Docker image used in GitLab CI/CD for Engravo's Webshop

## Usage

```bash
# Build docker image
docker build - < Dockerfile

# Rename docker image
docker image tag <cf806a412b3b> base-shop-docker

# Run docker
docker run -it --name base-shop-docker base-shop-docker bash
```

The source code is hosted at GitHub, automated builds are already being triggered when pushing to GitHub. See <https://docs.docker.com/docker-hub/builds/> for further information.
