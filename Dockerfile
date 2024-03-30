# FROM openjdk:11-jre
# COPY build/libs/*.jar app.jar
# ENTRYPOINT ["java","-jar","app.jar"]

FROM openjdk:11

WORKDIR /app

COPY . /app/

RUN ./gradlew clean build

ENTRYPOINT ["java","-jar","build/libs/*.jar"]
# 파일이 하나뿐이라 *.jar 로 한건데, 
# 여러개의 jar 파일이 있다면, * 대신에 파일명을 적어주면 된다.