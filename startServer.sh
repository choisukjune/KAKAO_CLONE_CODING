rm /etc/nginx/sites-enabled/default
service nginx start
service mysql restart
(cd /goormService/backend && gradle wrapper && ./gradlew clean build )
java -jar -Dspring.profiles.active=local /goormService/backend/build/libs/kakao-1.0.jar