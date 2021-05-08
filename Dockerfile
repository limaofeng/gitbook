FROM node:10.14.1

RUN npm install --g gitbook-cli &&\
	gitbook -V &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

EXPOSE 4000 35729

CMD gitbook serve /srv/gitbook
