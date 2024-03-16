# Utilisez une image OpenJDK 17 comme base
FROM openjdk:17-jdk-slim

# Exposez le port sur lequel votre application s'exécute
EXPOSE 8088

# Ajouter le fichier JAR de votre application dans le conteneur
ADD target/springbootk8sdemo-0.0.1-SNAPSHOT.jar springbootk8sdemo.jar


# Commande pour démarrer votre application Spring Boot
ENTRYPOINT ["java", "-jar", "/springbootk8sdemo.jar"]
