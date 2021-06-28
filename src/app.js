/* eslint-disable indent */

const express = require('express');

const app = express();

const { PORT } = process.env.PORT;

app.get('/', (req, res) => {
  res.send('Welcome');
});

app.listen(PORT, () => {
  console.log(`Listening on port 3000`);
});
