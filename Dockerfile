# Sử dụng JDK 17 (hoặc phiên bản phù hợp với dự án của bạn)
FROM openjdk:17-jdk-slim

# Copy file jar vào trong container
COPY ApiFinal.jar app.jar

# Thông báo port mà ứng dụng sẽ chạy (thường là 8080)
EXPOSE 8080

# Lệnh để chạy ứng dụng
ENTRYPOINT ["java", "-jar", "/app.jar"]