# Setup for azure

* posgres on web app --> permission error
* web app only exports port 80 and 443

## setup docker on vm: 
* https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
* https://docs.docker.com/compose/install/

## Problems
First the atempt was to mount the volumen vernemqconfig to the config directory for the vernemq image. But this was not working, permission issues, vernemq was not able to read the vernemq.conf ...,

The sollution was to write the configuration into the environment variables of docker.

## Run composers on boot
If the **restart: always** is present and the docker.service is running (sudo systemctl enable docker) than the containers will start up after boot if **docker-compose up -d** was executed once. (https://stackoverflow.com/questions/43671482/how-to-run-docker-compose-up-d-at-system-start-up/45193532)

## Authentication
The authentication pattern supports wildcards and template variables

There are three tempalte variables:
* %m ... mountpoint
* %u ... username
* %c ... client id 

Wildcards:
* \+ ... Single Level
* \# ... Multi Level (should only be used at the end)