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
* Install docker-compose if you didn't already with `pip install docker-compose`
* Run `docker-compose up` from the folder containing this repo
it will run a webserver on the local interface, the DB will be
private in the virtual network.
* Play with Tiny Tiny RSS, from [http://localhost:1855](http://localhost:1855)
the default username and password is `admin`:`password`

### Various

#### Android sync

The news+ plugin is included in the build, activate it in your
user preferences to allow sync with News+ Android app.

#### Backup

It may be convienient to run a backup of the data volume from time to time,
using [docker-volume-backup script](https://github.com/kiview/docker-volume-backup)
is as simple as `./backup.sh` to do the backup
and `./restore.sh 2018-02-01` (replace with the date of your backup) to restore.

The backups are saved as tar in the `backup` subfolder.

#### Change self URL

If you want to serve TTR with an host different than localhost, you'll
have to specify an additional `SELF_URL_PATH` environment paramete to the web host.

Rember to keep the schema in the path, for example:

	SELF_URL_PATH: http://feed.yourhost.com

#### References

https://github.com/clue/docker-ttrss
https://github.com/kiview/docker-volume-backup
