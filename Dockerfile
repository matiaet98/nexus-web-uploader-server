FROM nginx:1.15-alpine
COPY nginx.conf /etc/nginx/
CMD ["nginx", "-g", "daemon off;"]