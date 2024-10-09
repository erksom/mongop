# MongoDB Playground

Easy MongoDB Docker playground. Get up and running with a disposable mongo instance.

## Perquisites

- Docker needs to be installed.

The `data` directory is used for data persistance. If you're not using the `connect.sh` script then you need to create this manually.

The `connect.sh` needs to be executable. Run the following command if it's not. `chmod +x connect.sh`

## Flow

If you just need the database running in the background without the shell then run `docker-compose up -d`. This is useful when you need a db for your application.

If you want the database running and connect with the mongo shell then run `sh connect.sh`. This is useful for inspecting your data, or for practicing commands.

To shutdown your container run `docker-compose down`
