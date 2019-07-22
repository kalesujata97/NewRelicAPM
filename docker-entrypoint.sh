#!/bin/bash
sed -i "s/<%= license_key %>/680b1550968a62223bf9fec6cc267134d05a9cc5/g" ./newrelic.yml
sed -i "s/My Application/Payment_Service/g" ./newrelic.yml
java -javaagent:./newrelic.jar -cp app:app/lib/* com.littlepassports.paymentservice.PaymentServiceApplication
