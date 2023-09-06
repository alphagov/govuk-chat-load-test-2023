#! /bin/sh

rm -rf results
rm jmeter.log

jmeter -JPROTOCOL=${PROTOCOL} \
       -JHOST=${HOST} \
       -JROUTE=${ROUTE} \
       -JUSERNAME=${USERNAME} \
       -JPASSWORD=${PASSWORD} \
       -JAUTH_URL=${AUTH_URL} \
       -JUSERS=${USERS} \
       -JRAMP_UP=${RAMP_UP} \
       -JITERATIONS=${ITERATIONS} \
       -n -t plan.jmx -l results/results.log -e -o results
