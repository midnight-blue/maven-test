# Use an official Tomcat base image (version 9 as an example)
FROM tomcat:9.0-jdk17

# Set the environment variable for the Tomcat webapps directory
ENV CATALINA_HOME /usr/local/tomcat
ENV DEPLOY_DIR $CATALINA_HOME/webapps

# Copy any WAR file from the build context to the Tomcat webapps directory
# Assuming the .war file will be available in the same directory as the Dockerfile
COPY *.war $DEPLOY_DIR/

# Expose Tomcat's default port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
