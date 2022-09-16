FROM evons/ruby

# Atualização do sistema
RUN apt-get update

# Set timezone
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" >  /etc/timezone

# Update CA Certificates
RUN update-ca-certificates

# Set rails env variable
ARG bundle_options_var='--without development test'

# Application path inside container
ENV APP_ROOT /src

# Set command execution path
WORKDIR $APP_ROOT

# Copy all project files to application folder inside container
COPY .$APP_ROOT $APP_ROOT