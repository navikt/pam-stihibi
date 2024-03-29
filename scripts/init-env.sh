#!/bin/sh
# PUT all aiven KAFKA config into env variables, will be auto picked up by kafka
if test -r "${KAFKA_TRUSTSTORE_PATH}";then
  export KAFKA_SSL_TRUSTSTORE_LOCATION=${KAFKA_TRUSTSTORE_PATH}
  export KAFKA_SSL_TRUSTSTORE_PASSWORD=${KAFKA_CREDSTORE_PASSWORD}
  export KAFKA_SSL_KEYSTORE_LOCATION=${KAFKA_KEYSTORE_PATH}
  export KAFKA_SSL_KEYSTORE_PASSWORD=${KAFKA_CREDSTORE_PASSWORD}
  export KAFKA_SSL_KEY_PASSWORD=${KAFKA_CREDSTORE_PASSWORD}
  export KAFKA_SSL_TRUSTSTORE_TYPE=JKS
  export KAFKA_SSL_KEYSTORE_TYPE=PKCS12
  export KAFKA_SECURITY_PROTOCOL=SSL
  export KAFKA_HEALTH_ENABLED=false
  export KAFKA_BOOTSTRAP_SERVERS=${KAFKA_BROKERS}
fi
