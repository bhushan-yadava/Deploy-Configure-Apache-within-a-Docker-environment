# Use official Apache image
FROM httpd:2.4

# Copy custom HTML into Apache document root
COPY ./public-html/ /usr/local/apache2/htdocs/

# Copy custom Apache config (optional)
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
