FROM openjdk:11

WORKDIR /app

COPY . /app/

RUN chmod 777 gradlew

RUN ./gradlew clean build

RUN chmod 777 build/libs/*.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","build/libs/dockertes>

# -PLAIN 파일은 절대 쓰면 안됨
