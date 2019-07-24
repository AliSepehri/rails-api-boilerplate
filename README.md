# README

## Docker
1. Go to `docker` folder and copy required files to the names which are ignored by `.gitignore` file in order to customize them:
    ```
    cd docker
    cp docker-compose.sample.yml docker-compose.yml
    cp docker.sample.env docker.env
    ```

2. Build image and run a container:
    ```
    docker-compose build
    docker-compose up
    ```

4. Check it out:
    ```
    curl localhost:3000
    # => {"app_name":"rails-api-boilerplate"}
    ```
