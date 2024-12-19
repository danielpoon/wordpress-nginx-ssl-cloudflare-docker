# WordPress Dockerfile: Create container from official WordPress image, basic customizations.
# % docker build -t dpoon-wordpress:1.0 .
# p.s. don't forget the . at the end of the command

FROM wordpress:6.7.1-fpm-alpine

# Install WP-CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    php wp-cli.phar --info&& \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    # Remove old php.ini files (wihtout creating new image)
    rm /usr/local/etc/php/php.ini-development && \
    rm /usr/local/etc/php/php.ini-production

RUN set -eux; \
	apk add --no-cache \
		nano \
                vim \
                wget \
                curl \
