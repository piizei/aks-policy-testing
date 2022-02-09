# escape=`
FROM stefanscherer/node-windows:latest

ONBUILD RUN mkdir c:\app
WORKDIR "c:\app"
ADD . .
EXPOSE 8080

CMD [ "node.exe", "server.js" ]