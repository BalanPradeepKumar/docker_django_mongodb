# docker_django_mongodb
Dockerize Django-MongoDB Application with docker-compose 

## Introduction

A Quick Start Example to run Django-MongoDB Application in Docker.

## Requirements

This module requires the following modules/libraries:

* [Docker](https://www.docker.com/get-started)

## Installation

Install using the following the command,

```docker-compose up -d --build```

## What does this example teach us?

### Initializing a fresh instance with MongoDB dump data

When a container is started for the first time, it will execute files with extensions `.sh`, and `.js` that are found in `init_db`. `.js` files will be executed by mongo using the database specified by the MONGO_INITDB_DATABASE variable in `docker-compose.yml`, if it is present, or `test` otherwise. You may also switch databases within the .js script.

### Store MySql data on Host System.

Directory named `data_db` will serve as a MongoDB data directory on the host system (outside the container). It is easy for tools and applications on the host system to access the mongo files from this directory. The `data_db` directory from host system is mounted to `/data/db` inside the container, where MongoDB by default will write its data files.

## Troubleshooting/Issues

Known Issues:
* Docker volume mapping to local has shown issues if docker is running in Windows OS. As a quick work around comment volume mapping in `docker-compose.yml` if you are runnning in Windows OS.

## Support

Reach out to me at one of the following places!

- Twitter at <a href="https://twitter.com/writetopradeep" target="_blank">`@writetopradeep`</a>
- LinkedIn at <a href="https://www.linkedin.com/in/pradeep-kumar-41653817" target="_blank">`pradeep-kumar-41653817`</a>

## License

[GPLv3](http://www.gnu.org/licenses/gpl-3.0.txt)

