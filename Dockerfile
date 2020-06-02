FROM node:latest
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /project_lpefront
ADD ./build /project_lpefront
ADD ./.circleci/server.js /project_lpefront
ADD ./.circleci/package.json /project_lepfront
RUN npm install
RUN npm install express
RUN ls
CMD ["node","server.js"]
