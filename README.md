# golang-docker
Custom golang docker
Build from [this](https://github.com/majidettehadi/debian-docker) custom debian image.

# How to build
Set **REPO_NAME** and **GO_VERSION**in `build.properties` file. REPO_NAME used to tagging and pushing image and GO_VERSION used for installed go version.
run `build.sh` to build image.
run `push.sh` to push to docker hub.
