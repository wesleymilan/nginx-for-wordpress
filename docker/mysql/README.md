# MySQL

This container uses MySQl 5.7.

When the image is compiled and created for the first time it will load the database data from 
`/www/api/database/sql/dev_wordpress.sql.gz`. Make sure this file is present. 

In case you need to fully reload the database data, delete the folder `/database/mysql` and run 
`/docker/rebuild.sh`.

# File structure

- `build.sh` : Compile only MySQL image (must be executed from root folder `./docker/mysql/build.sh`)
- `ssh.sh` : Put you inside container using ssh (must be executed from root folder `./docker/mysql/ssh.sh`)
- `Dockerfile` : Contains the Docker instruction for image compilation.


