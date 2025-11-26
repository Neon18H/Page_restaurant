FROM nginx:alpine

# Copia tu HTML estático a la carpeta pública de Nginx
COPY index.html /usr/share/nginx/html/index.html

# (Opcional) si luego tienes más archivos:
# COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
