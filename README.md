# GOV.UK Chat Load Test
The GOV.UK Chat Load Test is a tool that allows us to load test the application using Apache JMeter.

## Getting started
[JMeter](https://jmeter.apache.org/) is a software tool used for load testing applications to identify performance issues. It does this by assessing how well the application can handle multiple users or requests concurrently.


Install `jmeter`

```shell
brew install jmeter
```
## Default Properties
JMeter comes with their default threshold numbers that determine certain behaviours. These thresholds might not always be ideal for your load test.

To change these values, you can edit a file called ```user.properties```. You can usually find this fille in the:

```
/usr/local/Cellar/jmeter/5.6.2/libexec/bin/user.properties
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

Shell script

You will need to export the above env vars before running the shell script like so `export JMETER_PROTOCOL=https`

```shell
ruby run.rb
```

## Interpreting Results

JMeter provides several metrics and graphs in a [dashboard format](https://jmeter.apache.org/usermanual/generating-dashboard.html) to help you assess the performance of your load test.

You can access this file by going into your directory and view the results in your browser:
```
open index.html
```

### Over Time:
These category of tests focus on how performance metrics change over the course of the test, which helps identifies trends and potential issues.

### Throughout:
This displays the overall concurrency levels duing the test, helpful for identifying patterns and fluctuations.

### Response Times:
This category focuses on the detailed response times, helping to pinpoint specific performance-related problems.
