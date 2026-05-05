# Usa la imagen oficial de NocoBase directamente
FROM nocobase/nocobase:latest

# Variables de entorno que debe tener la aplicación
ENV NODE_ENV=production
ENV PORT=8080
ENV APP_KEY=tu_clave_aleatoria_segura
ENV DB_DIALECT=sqlite
ENV DB_STORAGE=/app/nocobase/storage/db.sqlite

# Exponer el puerto que usa Back4app
EXPOSE 8080

# El CMD de la imagen original ya es correcto; lo repetimos por claridad
CMD ["yarn", "start"]
