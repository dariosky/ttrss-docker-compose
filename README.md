Portable Tiny Tiny RSS via docker compose
===


### Intro

I wanted to play with [Tiny Tiny RSS](https://git.tt-rss.org/fox/tt-rss)
for quite a long time and this is my attempt to automate running it, and
make the life easier to who will try to do the same.

The idea is to have a portable version of the RSS aggregator so it can be
run in quickly.

### Installation

* Install Docker and Docker-compose, on my machine I do it via Ansible
with this [script](https://github.com/dariosky/ansible-mybox).
* Run `docker-compose up` from the folder containing this repo
it will run a webserver on the local interface, the DB will be
private in the virtual network.
* Play with Tiny Tiny RSS, from [http://localhost:1855](http://localhost:1855)
the default username and password is `admin`:`password`

#### References

https://github.com/clue/docker-ttrss
