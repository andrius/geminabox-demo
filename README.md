geminabox demo
==============

# What?

Gem in a box allow us to deploy our own ruby gems server (and a proxy server):

- https://github.com/geminabox/geminabox

- https://guides.rubygems.org/run-your-own-gem-server/


# Demo

We will be using a 'hola' gem, referenced
[here](https://guides.rubygems.org/make-your-own-gem).

I've created a domain name `gems.d.c0.lt` for this demo, if you would like to
give a try, update Dockerfile and Gemfile in demo folder (it works with just IP
address too).

[![asciicast](https://asciinema.org/a/EK9STFwBEpSBeBjLZ4HGvhHuB.svg)](https://asciinema.org/a/EK9STFwBEpSBeBjLZ4HGvhHuB)


## Start

- Build and start a geminabox server, then build and push hola-gem there

    ```bash
    docker-compise build server
    docker-compise up -d server

    cd demo/hola-gem
    docker build -t hola .
    ```


## Hola gem

- Testing gem server. Ruby gem that were build at previous stage will be used

    ```bash
    cd demo/app-hola
    docker build -t app .
    docker run -ti --rm app
    ```


## RubyGems proxy

- Geminabox can be configured to pull gems, it does not currently have,
from rubygems.org: https://github.com/geminabox/geminabox#rubygems-proxy.

- To get this working, `config.ru` should include following options:

    ```
    Geminabox.rubygems_proxy = true
    Geminabox.allow_remote_failure = true
    ```

- Demo:

    ```bash
    cd demo/app-cache
    docker build -t app .
    docker run -ti --rm app
    ```


## Authentication

Geminabox support authentication or could be configured to work behind proxy.
