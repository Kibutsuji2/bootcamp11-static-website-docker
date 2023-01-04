FROM ubuntu:18.04
MAINTAINER geoffroy (hountondjigeoffroy2@gmail.com)
ENV NODE_ENV=production
WORKDIR /app
RUN apt-get update
RUN apt-get install -y nginx
COPY . /app
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]



