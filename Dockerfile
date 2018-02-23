FROM node:latest

RUN apt-get update && apt-get install -y \    
	vim \
	git

RUN yarn global add \
	vue-cli \
	firebase-tools

ADD yarn.lock /yarn.lock
ADD package.json /package.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
RUN yarn

WORKDIR /app
ADD . /app

EXPOSE 8080

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
CMD ["dev"]