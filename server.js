const express = require('express');
const app = express();
const PORT = 3000;

// Route principale
app.get('/', (req, res) => {
    res.send('Bienvenue sur mon application DevSecOps !');
});

// Démarrage du serveur
app.listen(PORT, () => {
    console.log(`Serveur démarré sur http://localhost:${PORT}`);
});
