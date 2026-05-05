# Usa Node.js 20 como imagen base (la versión LTS más reciente)
FROM node:20-alpine

# Instalar herramientas necesarias para compilar módulos nativos
RUN apk add --no-cache python3 make g++ sqlite sqlite-dev

WORKDIR /app

# Crea la app de NocoBase en la carpeta 'my-app'
RUN yarn create nocobase-app my-app -d sqlite

WORKDIR /app/my-app

# Variables de entorno para la aplicación
ENV NODE_ENV=production
ENV PORT=8080
# Cambia esta clave por una cadena aleatoria y segura
ENV APP_KEY=tu_clave_aleatoria_12345_segura
ENV DB_DIALECT=sqlite
ENV DB_STORAGE=/app/my-app/storage/db.sqlite

# Instala dependencias y construye la app
RUN yarn install --production && yarn build

EXPOSE 8080

CMD ["yarn", "start"]
