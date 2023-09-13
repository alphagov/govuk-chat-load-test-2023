# GOV.UK Chat Load Test

## Getting started

Install `jmeter`

```shell
brew install jmeter
```

## Running a test

Set the following environment variables in your terminal

```shell
JMETER_PROTOCOL=https
JMETER_HOST=URL_OF_THE_INSTANCE_BEING_TESTED
JMETER_ROUTE=WHATEVER_COMES_AFTER_THE_DOMAIN
JMETER_USERNAME=THE_BASIC_AUTH_USERNAME
JMETER_PASSWORD=THE_BASIC_AUTH_PASSWORD
JMETER_AUTH_URL=THE_BASIC_AUTH_URL
JMETER_PLAN=SELECTED_PLAN.JMX
JMETER_USERS=1
JMETER_RAMP_UP=1
JMETER_ITERATIONS=1
```

### Running on your local machine

Shell script (requires the above env vars to be exported first)

```shell
sh run.sh [chat_id]
```

Ruby convenience script

```shell
ruby run.rb
```

### Using Heroku local

```shell
heroku local
```
