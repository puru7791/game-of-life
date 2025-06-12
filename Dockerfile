FROM maven:3-jdk-8 as mvn
LABEL author='Puru'
LABEL ver="1.0"
COPY . .
RUN mvn clean package

FROM tomcat:8
LABEL author='Puru'
COPY --from=mvn /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
