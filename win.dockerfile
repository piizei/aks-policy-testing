FROM stefanscherer/node-windows:latest

ONBUILD COPY package*.json ./

ONBUILD RUN npm install
ONBUILD COPY . .
EXPOSE 8080

CMD [ "node.exe", "server.js" ]