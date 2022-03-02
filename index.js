'use strict';

const express = require('express');

// Constants
const PORT = 4000;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/nodeapp', (req, res) => {
  res.send("Node App Running -by senthil");
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
