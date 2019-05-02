An educational purpose Docker image for learning Linux https://www.udemy.com/complete-linux-training-course-to-get-your-dream-it-job

Commands for building and runing the container
```bash
docker image build -t learn-linux .
docker container run -it --name learn-linux --mount type=bind,source="$(pwd)"/playground,target=/root/playground learn-linux

# to start the container again
docker container start -ai learn-linux

# to connect another terminal to the running container
docker container exec -it learn-linux bash
```