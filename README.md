# Docker : librarian-puppet

Docker to launch librarian-puppet

# Launch librarian-puppet with docker

```docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet atolcd/docker-librarian-puppet:latest "$@"```

# Add librarian-puppet to .bashrc or .zshrc

```librarian-puppet () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/puppet \
        atolcd/docker-librarian-puppet:latest "$@"
}```

