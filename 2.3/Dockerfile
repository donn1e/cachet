FROM wodby/php:7.1

ENV CACHET_VER 2.3.11
ENV CACHET_URL https://github.com/CachetHQ/Cachet/archive/v${CACHET_VER}.tar.gz

RUN set -ex && \
    mkdir -p /usr/src/cachet && \
    wget -qO- ${CACHET_URL} | tar xz --strip-components=1 -C /usr/src/cachet && \
    chown -R www-data:www-data /usr/src/cachet && \
    su-exec www-data composer install -d /usr/src/cachet --no-dev -o && \
    su-exec www-data composer clear-cache

COPY env.tpl /etc/gotpl/
COPY actions /usr/local/bin/
COPY init /docker-entrypoint-init.d/