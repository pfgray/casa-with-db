#casa-with-db

[![Docker image](http://dockeri.co/image/pfgray/casa-with-db)](https://registry.hub.docker.com/u/pfgray/casa-with-db/)

This image is useful for developing against the casa protocol. Note that when you kill the docker instance, all of your data will go with it.

pull the image, and then run it:

````
sudo docker pull pfgray/casa-with-db
sudo docker run -d -p <port>:9000 -t pfgray/casa-with-db
````

