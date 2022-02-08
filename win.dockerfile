FROM stefanscherer/node-windows:latest

ONBUILD COPY package*.json c:\\

ONBUILD RUN npm install
ONBUILD COPY . c:\\
EXPOSE 8080

CMD [ "node.exe", "server.js" ]