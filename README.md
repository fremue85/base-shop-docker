# Base-Shop Dockerfile

> Docker image used in GitLab CI/CD for Engravo's Webshop

## Usage

```bash
# Build docker image
docker build -t base-shop-docker .

# Run docker
docker run -it --name base-shop-docker base-shop-docker bash
```

The source code is hosted at GitHub, automated build are already being triggered when pushing to GitHub. See <https://docs.docker.com/docker-hub/builds/> for further information.
