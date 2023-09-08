#! /bin/sh

rm -f jmeter.log

if [ -z "$1" ]; then
  echo "Please enter a chat_id, e.g. sh run.sh 123456789"
  exit 1
else
  chat_id="load_test-${1}-${USERS}-${RAMP_UP}-${ITERATIONS}"
  rm -rf results-${chat_id}

  jmeter -JPROTOCOL=${PROTOCOL} \
         -JHOST=${HOST} \
         -JROUTE=${ROUTE} \
         -JUSERNAME=${USERNAME} \
         -JPASSWORD=${PASSWORD} \
         -JAUTH_URL=${AUTH_URL} \
         -JUSERS=${USERS} \
         -JRAMP_UP=${RAMP_UP} \
         -JITERATIONS=${ITERATIONS} \
         -JCHAT_ID=${chat_id} \
         -n -t plan.jmx -l results-${chat_id}/results.log -e -o results-${chat_id}
fi
