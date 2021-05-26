# VerneMQ in docker composer
This example just shows how to run a verneMQ instance in a docker container.

For the authentication a postgres database is used. To access the data of this one from outer the docker compose contains the pgAdmin4.

The first atempt was to add the config of the vernemq by coppying it into the container. **This did not worke out.** The reason I do not know. 
For the second atempt I added the config to the composer file --> working. (**composeOnly**)

## Deploy container to azure
Because the vernemq and postgresql db need to be customized, docker-compose can not use the original images (at least I do not know how this works.)
Deploying it to azure means that the modified images need to be pushed to the azure container repository.

```
docker image build -t {imageName} .
az acr login --name {containerRegistryName}
docker tag {imageName} {containerRegistryName}.azurecr.io/{imageName}
docker push {containerRegistryName}.azurecr.io/{imageName}
```

## Run localy
Run the following commands in the directory of the docker-compose.yml
```
// start detached
docker-compose up -d

// stop
docker-compose down
```

