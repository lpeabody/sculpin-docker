FROM composer:1.6.5

RUN composer global config minimum-stability dev && \
    composer global config prefer-stable true && \
    composer global require sculpin/sculpin:v2.1.1 && \
	composer clear-cache

ENV PATH="/tmp/vendor/bin:${PATH}"

CMD ["sculpin"]
