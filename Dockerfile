#getting latest version of node
FROM node as build

#changing working directory to app
WORKDIR /app

#getting the content of my app from GitHub
RUN wget https://github.com/SuellenLourrayne/mobdev_ca3/archive/main.tar.gz \
&& tar xf main.tar.gz \
&& rm main.tar.gz 

#changing working directory to app/mobdev_ca3-main
WORKDIR /app/mobdev_ca3-main/

#installing ionic
RUN npm install -g ionic

#installing dependencies
RUN npm install

#building application for deployment
RUN npm run build --prod

#fetching a nginx/alpine server to serve
FROM nginx:alpine

#exposing to the port 80
EXPOSE 80

#removing content of usr/share/nginx/html folder
RUN rm -rf /usr/share/nginx/html/*

#copying application files into usr/share/nginx/html
COPY --from=build /app/mobdev_ca3-main/www/ /usr/share/nginx/html/