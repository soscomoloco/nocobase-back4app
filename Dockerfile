FROM nocobase/nocobase:latest

ENV NODE_ENV=production
ENV PORT=8080
# Cambia esto por una clave aleatoria real
ENV APP_KEY=tu_clave_secreta_aleatoria
# Usamos SQLite para simplificar la primera prueba
ENV DB_DIALECT=sqlite
ENV DB_STORAGE=/app/nocobase/storage/db.sqlite

EXPOSE 8080

# Comando para iniciar NocoBase
CMD ["yarn", "start"]
