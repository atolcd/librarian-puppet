# Docker : Puppet tools

Docker to launch librarian-puppet or puppet-lint

# Default : Librarian Puppet

## Launch

```sh
docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet atolcd/puppet-tools:latest librarian-puppet <args>
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
        --volume $(pwd):/puppet \
        atolcd/puppet-tools:latest "librarian-puppet $@"
}
```

# Alternative : Puppet lint

## Launch

```sh
docker run --tty --interactive --rm --user $(id -u):$(id -g) --volume $(pwd):/puppet atolcd/puppet-tools:latest puppet-lint <args>
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
        --volume $(pwd):/puppet \
        atolcd/puppet-tools:latest "puppet-lint $@"
}
```


