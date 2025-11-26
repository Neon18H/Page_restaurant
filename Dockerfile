FROM node:20-alpine

# Carpeta de trabajo
WORKDIR /app

# Copiamos todos los archivos (index.html, etc.)
COPY . .

# Servidor estático super simple
RUN npm install -g serve

# Railway pone la variable PORT automáticamente.
# Si por alguna razón no existe, usamos 3000 por defecto.
CMD ["sh", "-c", "serve -s . -l ${PORT:-3000}"]
