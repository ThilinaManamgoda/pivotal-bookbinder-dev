FROM ruby:2.3.0

ARG BOOK_DIR=/book
ARG CUSTOM_BUNDLE_PATH=/bundle-path

COPY docker-entrypoint.sh /scripts/

RUN mkdir ${CUSTOM_BUNDLE_PATH}

WORKDIR ${BOOK_DIR} 
ENV BOOK_DIR=${BOOK_DIR} \
    BUNDLE_PATH=${CUSTOM_BUNDLE_PATH}

ENTRYPOINT ["/scripts/docker-entrypoint.sh"]
EXPOSE 4567