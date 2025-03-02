gcloud compute firewall-rules create allow-http-https \
    --allow=tcp:80,443 \
    --direction=INGRESS \
    --priority=1000 \
    --network=default \
    --source-ranges=0.0.0.0/0

gcloud compute firewall-rules create allow-ssh-restricted \
    --direction=INGRESS \
    --priority=10000 \
    --network=default \
    --source-ranges=220.158.144.60/32
