# Docker : librarian-puppet

Docker to launch librarian-puppet

# Launch librarian-puppet with docker

```sh
docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet atolcd/librarian-puppet:latest "$@"
```

# Add librarian-puppet to .bashrc or .zshrc

```sh
librarian-puppet () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/puppet \
        atolcd/librarian-puppet:latest "$@"
}
```

