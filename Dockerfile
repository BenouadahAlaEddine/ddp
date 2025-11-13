# Utilisation d'une image de base Node.js
FROM node:20-alpine

# Définition du répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copie des fichiers de configuration et installation des dépendances
COPY package*.json ./
RUN npm install --omit=dev

# Copie du reste du code source
COPY . .

# Exposition du port
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
