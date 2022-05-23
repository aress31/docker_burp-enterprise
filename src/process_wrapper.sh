#!/bin/bash

service burpsuiteenterpriseedition_agent start
service burpsuiteenterpriseedition_enterpriseserver start
service burpsuiteenterpriseedition_webserver start
service burpsuiteenterpriseedition_db start

# Dirty trick to keep the container running forever and ever...
while true; do sleep 86400; done