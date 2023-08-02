#!/bin/sh
#!/opt/homebrew/bin/pnpm

# To make the file executable run: chmod +x ./scripts/docker-development.sh

if [[ -z $1 ]];
then 
    echo "You must pass an `up` or `down` as an argument. For example: pnpm docker:dev up"
    exit;
else
  DOCKER_STATUS=$1
fi

if [ $DOCKER_STATUS = "down" ];
then
  echo -e 'Stopping docker containers...'

  docker-compose -f docker-compose-apple-silicon.dev.yml down
  
  echo -e 'Docker containers are stopped.'
else
  echo -e 'Starting docker containers...'

  docker-compose -f docker-compose-apple-silicon.dev.yml up -d

  echo -e 'Docker containers are running...'
fi

