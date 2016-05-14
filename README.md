# exrm-build-docker
Docker image to build Elixir releases with exrm.  Useful on OSX.

## Why

If you need to make Elixir releases for Linux on another operating system, you need a build server with the same architecture.  Docker allows us to do that.  I use this with the latest Mac beta docker and it works well.

## Usage

```
docker pull danielfarrell/exrm-build
docker run -v `pwd`:/app --env-file ./.env danielfarrell/exrm-build mix compile
docker run -v `pwd`:/app --env-file ./.env danielfarrell/exrm-build mix release
```
