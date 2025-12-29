FROM nginx:alpine

COPY index.html /usr/share/nginx/html/

COPY certs/fullchain.pem /etc/ssl/certs/server.crt
COPY certs/privkey.pem /etc/ssl/private/server.key

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
