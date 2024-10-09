#!/bin/bash

data_dir_created=0

if [ ! -d "./data" ]; then

  echo "Creating data directory..."
  mkdir ./data
  data_dir_created=1

fi

if [ ! "$(docker ps -q -f name=my_mongodb)" ]; then

  docker-compose up -d

  # Need to wait for the mongodb to be available
  sleep 1

  if [ "$data_dir_created" -eq 1 ]; then
    # Need to wait longer for the database to initialize directories
    sleep 3
  fi

fi

docker exec -it my_mongodb mongosh -u "myuser" -p "mysecretpassword"
