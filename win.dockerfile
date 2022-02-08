# escape=`
FROM stefanscherer/node-windows:latest

ONBUILD RUN mkdir c:\app
WORKDIR "c:\app"

ONBUILD COPY package*.json c:\app

ONBUILD RUN npm install
ONBUILD COPY . c:\app
EXPOSE 8080

CMD [ "node.exe", "server.js" ]