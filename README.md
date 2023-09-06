# GOV.UK Chat Load Test

## Getting started

Install `jmeter`

```shell
brew install jmeter
```

## Running a test

Set the following environment variables in your terminal

```shell
PROTOCOL=https
HOST=URL_OF_THE_INSTANCE_BEING_TESTED
ROUTE=WHATEVER_COMES_AFTER_THE_DOMAIN
USERNAME=THE_BASIC_AUTH_USERNAME
PASSWORD=THE_BASIC_AUTH_PASSWORD
AUTH_URL=THE_BASIC_AUTH_URL
USERS=1
RAMP_UP=1
ITERATIONS=1
```

### Running on your local machine

Shell script (requires the above env vars to be exported first)

```shell
sh run.sh
```

Ruby convenience script

```shell
ruby run.rb
```

### Using Heroku local

```shell
heroku local
```
