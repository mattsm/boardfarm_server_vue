FROM node:8

WORKDIR /usr/src/boardfarm_server_vue
COPY . .
RUN npm install

# TODO: make arg
RUN sed 's,boardfarm.bluejam.net,192.168.1.6:5001,g' -i /usr/src/boardfarm_server_vue/src/store/store.js

EXPOSE 5001

CMD [ "npm", "run", "serve" ]
