#Nervios issues/complications
#Nagios is an interactve install, unable to get expect to act properly.  Created a container that runs

TO USE: <br>
docker pull jlmoldan/nervios<br>
docker run -d -p 1999:80 jlmoldan/nervious /usr/sbin/apache2ctl -D FOREGROUND<br>
<br>
#Initial container build:<br>
Create Dockerfile (see Dockerfile)<br>
<br>
docker build -t nervios .<br>
docker run -it nervios /bin/bash<br>
   (have to run installer inside the container)<br>
sh nagios2/naginstall.sh<br>
   (((Will ask 2-4 questions - time zone, no email, and password...))<br>
   <br>
exit<br>

docker commit %DOCKERID% nervios (where  %DOCKERID% is the container id just created)<br>

docker run -d -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND<br>

logon via your ip:1999/nagios3 with password entered on prompts<br>
  (this image configured with central time, no email, and password as the password)<br>


tag the image (here docker tag f1c5a5543686 jlmoldan/nervios)<br>
push to docker.io ::  docker push  jlmoldan/nerviosv
