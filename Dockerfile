FROM node:18-alpine

# Instalar herramientas necesarias para compilar módulos nativos (sqlite3)
RUN apk add --no-cache python3 make g++ sqlite sqlite-dev

WORKDIR /app

# Crear app NocoBase con soporte SQLite
RUN yarn create nocobase-app my-app -d sqlite

WORKDIR /app/my-app

# Variables de entorno
ENV NODE_ENV=production
ENV PORT=8080
# Cambia esta clave por una cadena aleatoria (puedes dejarla así para pruebas)
ENV APP_KEY=tu_clave_aleatoria_12345_segura
ENV DB_DIALECT=sqlite
ENV DB_STORAGE=/app/my-app/storage/db.sqlite

# Instalar dependencias y construir la aplicación
RUN yarn install --production && yarn build

EXPOSE 8080

CMD ["yarn", "start"]
