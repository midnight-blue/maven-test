# Use an official Tomcat base image (version 9 as an example)
FROM tomcat:9.0-jdk17



# Start Tomcat server
CMD ["catalina.sh", "run"]
