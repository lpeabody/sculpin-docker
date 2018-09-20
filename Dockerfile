FROM composer:1.6.5

RUN composer global config minimum-stability dev && \
    composer global require sculpin/sculpin:v2.1.1 dflydev/dot-access-configuration:1.0.1 --prefer-stable && \
	composer clear-cache

ENV PATH="/tmp/vendor/bin:${PATH}"

CMD ["sculpin"]
