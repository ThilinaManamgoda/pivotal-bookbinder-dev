#!/bin/sh
cd ${BOOK_DIR}/docs-book
bundle install
bundle exec bookbinder watch