#!/bin/sh

timestamp=$(date +%s)
result_file="result_${timestamp}.json"

porschecli  -e ${PORSCHE_EMAIL} \
            -p ${PORSCHE_PASSWORD} \
            -s ${PORSCHE_SESSION_FILE} \
            currentoverview -a