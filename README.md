## Setup a development environment from scratch

1. Take clone from git by using the below command.
    1. `git clone https://github.com/detailswes/hello-world-lamp-stack.git`
    2. `cd hello-world-lamp-stack`

2. Install docker and docker compose

3. Create .env file in root directory and make changes according to credential.

4. From the root of the project
   ` Run : docker-compose up -d --build`

5. Check docker container
   `docker-compose ps `
   
6. Run command inside the docker container
    1. `docker exec -it app /bin/bash (app is container, You need to run this command then run all command that is below)`
    2. `composer install`
    3. `php artisan migrate`
    4. `php artisan db:seed`
    5. `php artisan optimize`
