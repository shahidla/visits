#use an existing docker image as a base
# C:\Users\c5271717\Desktop\My Blogs\NewTopic\visit

FROM node:alpine
#download and install a dependency
WORKDIR  /usr/visit 
COPY ./package.json ./
RUN npm install
COPY ./ ./
CMD ["npm","start"]