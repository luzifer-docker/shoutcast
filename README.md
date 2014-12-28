# luzifer/shoutcast Dockerfile

This repository contains **Dockerfile** of [ShoutCast DNAS](http://www.shoutcast.com/BroadcastNow) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/luzifer/shoutcast/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- [ubuntu](https://registry.hub.docker.com/_/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/luzifer/shoutcast/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull luzifer/shoutcast`

## Usage

To launch it, just type:

```
docker run -d -p 8001:8001 -p 8002:8002 luzifer/shoutcast
```
