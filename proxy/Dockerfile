FROM nginx

ENV RAILS_ROOT /var/www
WORKDIR $RAILS_ROOT
RUN mkdir -p log

COPY proxy/app.conf /tmp/docker_example.nginx
COPY proxy/nginx_start.sh $RAILS_ROOT/nginx_start.sh

RUN envsubst '$RAILS_ROOT' < /tmp/docker_example.nginx > /etc/nginx/conf.d/default.conf
EXPOSE 80