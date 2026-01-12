# Sử dụng Image ổn định hơn để tránh lỗi build
FROM eclipse-temurin:17-jdk-alpine

# Copy file jar mà bạn vừa nén lại vào container
COPY ApiFinal.jar app.jar

# Thông báo port mặc định
EXPOSE 8080

# Chạy ứng dụng
ENTRYPOINT ["java", "-jar", "/app.jar"]