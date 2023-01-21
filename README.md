# Experimental Docker File

When I read

> I like cgi because it was popular when I was born

in the comments of this forked project I turned into ancient dust and blew away.

Pardon the terseness but we're still trying to get this running.

## How To

Install Docker Desktop.

https://www.docker.com/products/docker-desktop/

Build the docker image, tagged/named as `gender-voice`

    % docker build -t gender-voice .

Run the docker container/process.

    % docker run --rm --name gender-voice-running -p 8080:80 -it gender-voice

Load the app at

    http://localhost:8080/

Debug errors while container is running

    % docker exec -it gender-voice-running bash
    root@05d447aa2ac5:/# cd /var/www/html

    root@05d447aa2ac5:/# ls
    gender-voice-visualization  index.html

    root@05d447aa2ac5:/# tail -f /var/log/apache2/error.log

