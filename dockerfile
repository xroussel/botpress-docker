FROM node
RUN apt-get update && apt-get upgrade -y
RUN npm install -g botpress
RUN mkdir /app/
WORKDIR /app/
VOLUME /app/
EXPOSE 3000
COPY entrypoint.sh /entrypoint.sh
RUN chmod 555 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
