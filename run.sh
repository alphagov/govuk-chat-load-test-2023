#! /bin/sh

if [ -z "$1" ]; then
  echo "Please enter a chat_id, e.g. sh run.sh 123456789"
  exit 1
else
  chat_id="load-test-${1}"

  jmeter -JJMETER_PROTOCOL=${JMETER_PROTOCOL} \
         -JJMETER_HOST=${JMETER_HOST} \
         -JJMETER_ROUTE=${JMETER_ROUTE} \
         -JJMETER_USERNAME=${JMETER_USERNAME} \
         -JJMETER_PASSWORD=${JMETER_PASSWORD} \
         -JJMETER_AUTH_URL=${JMETER_AUTH_URL} \
         -JJMETER_PLANL=${JMETER_PLAN} \
         -JJMETER_USERS=${JMETER_USERS} \
         -JJMETER_RAMP_UP=${JMETER_RAMP_UP} \
         -JJMETER_ITERATIONS=${JMETER_ITERATIONS} \
         -JJMETER_CHAT_ID=${1} \
         -n -t plan.jmx -l ${chat_id}/results.log -e -o ${chat_id}
fi
