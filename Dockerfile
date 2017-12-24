FROM node:9.3

COPY dashboard /home/node/app/dashboard
COPY lib /home/node/app/lib
COPY LICENSE /home/node/app/
COPY package.json /home/node/app/
COPY README.md /home/node/app/
COPY runner.js /home/node/app/

WORKDIR /home/node/app

RUN npm install

RUN ls /home/node/app

ENTRYPOINT ["node", "runner.js"]
