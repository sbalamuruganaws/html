# Use the official Amazon Linux 2 image as the base image
FROM amazonlinux:2

# Install httpd (Apache) package
RUN yum -y update && \
    yum -y install httpd

# Copy website content to /var/www/html (optional)
# ADD ./my-website /var/www/html/
ADD index.html /var/www/html/
# Expose port 80 for the httpd service
EXPOSE 80

# Start httpd service when the container launches
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
