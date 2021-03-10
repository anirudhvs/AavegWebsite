FROM node:12

WORKDIR /usr/src/

COPY package.json .

#COPY package-lock.json /usr/src/app

RUN npm install

COPY . .

RUN npm install -g standard

RUN npm install -g node-mongo-seeds

RUN mkdir logs && touch logs/erros.log logs/warnings.log

EXPOSE 3000

CMD ["bash", "backend-init.sh"]