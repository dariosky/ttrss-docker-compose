FROM clue/ttrss

ENV DB_ENV_USER postgres
ENV DB_ENV_PASS pgpass
ENV DB_PORT 5432
ENV DB_TYPE pgsql
ENV DB_HOST postgre

WORKDIR /var/www/plugins
RUN apt-get update \
	&& apt-get install -y \
		wget \
	&& wget -q https://github.com/hrk/tt-rss-newsplus-plugin/archive/master.tar.gz \
	&& tar xzf master.tar.gz \
	&& rm master.tar.gz \
	&& mv tt-rss-newsplus-plugin-master/api_newsplus/ . \
	&& rm -rf tt-rss-newsplus-plugin-master \
	&& rm -rf /var/lib/apt/lists/*
