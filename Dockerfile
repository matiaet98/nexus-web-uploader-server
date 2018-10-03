FROM nginx:1.15-alpine
COPY nginx.conf /etc/nginx/
COPY nginx.crt /etc/nginx/ssl/
COPY nginx.key /etc/nginx/ssl/
CMD ["nginx", "-g", "daemon off;"]