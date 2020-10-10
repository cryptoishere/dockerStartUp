ARG APACHE_VERSION=""

FROM httpd:${APACHE_VERSION:+${APACHE_VERSION}-}alpine

RUN sed -i "s/#LoadModule\ rewrite_module/LoadModule\ rewrite_module/" /usr/local/apache2/conf/httpd.conf;

# Copy apache vhost file to proxy php requests to php-fpm container
COPY custom.apache.conf /usr/local/apache2/conf/custom.apache.conf
RUN echo "Include /usr/local/apache2/conf/custom.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf