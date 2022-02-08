'use strict';
const fetch = require('node-fetch')
const express = require('express');

// Constants
const PORT = process.env.PORT || 8080;
const HOST = process.env.HOST || '0.0.0.0';
const proxy = process.env.PROXY == "true" || false;

// App
let responseText = 'hello world';


const app = express();
app.get('/', async (req, res) => {
  if (proxy) {
    const response = await fetch(process.env.PROXY_TARGET);
    const body = await response.text();
    responseText += body;
}
  res.send(responseText);
});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);