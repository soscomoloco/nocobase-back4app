FROM nocobase/nocobase:latest
WORKDIR /app/nocobase
ENV NODE_ENV=production
ENV PORT=8080
ENV APP_KEY=tu_clave_aleatoria_segura
ENV DB_DIALECT=sqlite
ENV DB_STORAGE=/app/nocobase/storage/db.sqlite
EXPOSE 8080
PORT=8080
APP_KEY=una_clave_aleatoria_bastante_larga
DB_DIALECT=sqlite
DB_STORAGE=/app/nocobase/storage/db.sqlite
