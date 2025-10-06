# Stage 1: Build
FROM node:18-alpine AS builder
WORKDIR /app

# Copier les fichiers package.json et package-lock.json (si présent)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Stage 2: Production
FROM node:18-alpine
WORKDIR /app

# Copier l'application depuis le builder
COPY --from=builder /app .

# Exposer le port utilisé par l'application
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "server.js"]
