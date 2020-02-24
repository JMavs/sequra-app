# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Requirements
- Postgres
- Ruby
- Ruby on Rails

## Setup

Copy the CSV files inside the tmp folder of the project.

Exec on your terminal:
```sh
bundle install
SEQURA_IMPORT_DIR=tmp rails db:create db:migrate db:seeds
```

## Run the server
```sh
rails s
```
