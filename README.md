An educational purpose Docker image for learning Linux https://www.udemy.com/complete-linux-training-course-to-get-your-dream-it-job

Commands for building and runing the container
```bash
# clone it locally to your host machine
git clone https://github.com/dvdvdmt/udemy-linux-training.git
cd udemy-linux-training

# build an image and run it
docker image build -t learn-linux .
docker container run -it --rm --name learn-linux --mount type=bind,source="$(pwd)"/playground,target=/root/playground learn-linux

# to stop the container
docker container stop learn-linux

# to start the container again
docker container start -ai learn-linux

# to connect another terminal to the running container
docker container exec -it learn-linux bash
```