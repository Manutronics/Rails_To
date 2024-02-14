#!/usr/bin/env sh

./bin/rails db:prepare && ./bin/rails db:seed && bundle exec rake assets:precompile