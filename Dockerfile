# Usamos la imagen oficial de NocoBase en su versión más reciente
FROM nocobase/nocobase:latest

# Variables de entorno que NocoBase necesita para arrancar
ENV NODE_ENV=production
# Define un puerto para que tu aplicación sea accesible
ENV PORT=8080
# Cambia esto por una clave secreta. Puedes usar una como "mi_super_clave_random_123", pero en producción debe ser más segura.
ENV APP_KEY=tu_clave_secreta_aleatoria
# Usaremos el potente sistema de base de datos PostgreSQL
ENV DB_DIALECT=postgres

# Le decimos a Docker que "exponga" este puerto al exterior
EXPOSE 8080
