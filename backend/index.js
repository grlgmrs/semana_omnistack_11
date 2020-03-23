const express = require('express');

const app = express();

app.get('/', (request, response) => {
  return response.json({
    "event": "Dia 1 - Semana Omnistack",
    "student": {
      "name": "Gabriel Guimarães"
    }
  });
});

app.listen(3333);