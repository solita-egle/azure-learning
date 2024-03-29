FROM ubuntu:20.04
#FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
&& apt-get upgrade \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        jq \
        git \
        iputils-ping \
        libicu-dev \
        libcurl4 \
        libunwind8 \
        netcat \
        wget \
        unzip \
        zip \
        apt-transport-https \
        gnupg-agent \
        software-properties-common \
        apt-utils \
        screen \
        nano \
        net-tools \
        cron \
        telnet 
        #php \
        #php-pgsql


#RUN apt-get install -y php7.4 php7.4-fpm php7.4-xml php7.4-pgsql

COPY ./data/index.php /opt/web/

#Install NGinx service
RUN apt-get install -y --no-install-recommends nginx

#Copy conf
WORKDIR /etc/nginx/

# NGINX image includes default NGINX configuration files 
# as /etc/nginx/nginx.conf and /etc/nginx/conf.d/default.conf. 
# Because we instead want to use the configuration files from the host, 
# we include a RUN command that deletes the default files:
RUN rm nginx.conf 
#RUN rm conf.d/default.conf
RUN rm ./sites-available/default

# Takes our local copy of the conf
ADD nginx.conf ./nginx.conf
RUN mkdir -p /opt/web
ADD ./data/index.php /opt/web/

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

