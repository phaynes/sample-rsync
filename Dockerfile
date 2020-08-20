FROM docker.pkg.github.com/phaynes/buster-slim-rsync/buster-slim-rsync:latest 

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
