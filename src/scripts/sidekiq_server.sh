#!/bin/bash

bundle update
yarn
bundle exec sidekiq -C config/sidekiq.yml