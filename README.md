# Docker : Puppet tools

Docker to launch librarian-puppet or puppet-lint

# Default : Librarian Puppet

## Launch

```sh
docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet atolcd/puppet-tools:latest <args>
```

## Add to .bashrc or .zshrc

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
        atolcd/puppet-tools:latest "$@"
}
```

# Alternative : Puppet lint

## Launch

```sh
docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet --entrypoint puppet-lint atolcd/puppet-tools:latest <args>
```

## Add to .bashrc or .zshrc

```sh
puppet-lint () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/puppet \
        --endpoint='puppet-lint' \
        atolcd/puppet-tools:latest "$@"
}
```


