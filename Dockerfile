FROM nginx:latest

COPY app1/ /var/www/html/app1
RUN chown -R nginx:nginx /var/www/html/app1
COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]