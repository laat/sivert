FROM debian:testing

#NodeJs
RUN apt-get update && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g hubot coffee-script

RUN mkdir /src
WORKDIR /src
VOLUME /src
ADD . /src

RUN npm install

ENV HUBOT_IRC_SERVER irc.freenode.net
ENV HUBOT_IRC_ROOMS #cohesive
ENV HUBOT_IRC_NICK sivert
ENV HUBOT_IRC_UNFLOOD true
ENV HUBOT_URL_TITLE_IGNORE_URLS "github.com|twitter.com|imgur.com|youtube.com|spotify.com|instagram.com"

CMD ["/src/bin/hubot", "-a", "irc", "--name", "sivert"]
