const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Application Node.js V2.0 : Déploiement via Pull Request réussi !</h1>');
});

app.listen(port, () => {
  console.log(`Application en cours sur http://localhost:${port}`);
});
