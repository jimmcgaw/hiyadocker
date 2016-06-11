FROM node:4.4.3

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/hiyadocker

COPY . $HOME/hiyadocker
RUN cd $HOME/hiyadocker; npm install

EXPOSE 8087

CMD ["node", "app.js"]
