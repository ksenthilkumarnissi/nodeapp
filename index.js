'use strict';

const express = require('express');
const fs = require('fs')

// Constants
const PORT = 4000;
const HOST = '0.0.0.0';

const content = 'Server is Up.'


// App
const app = express();

app.get('/nodeapp', (req, res) => {
    res.send("Node App Running -by senthil");
  });

app.listen(PORT, HOST);

fs.writeFile('/usr/src/nodeapp.txt', content, err => {
  if (err) {
    console.error(err)
    return
  }
  //file written successfully
})

console.log(`Running on http://${HOST}:${PORT}`);
