#!/bin/bash
# vladimirfp
for p in $( gcloud projects list --format="get(PROJECT_ID)" );
do
 gcloud compute addresses --project=$p list --filter "NOT addressType:INTERNAL" >> GCP_EXTERNAL_IP-"$(date +"%d-%m-%Y")".txt -q 2> /dev/null;
done
