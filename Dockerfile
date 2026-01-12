# Sử dụng môi trường Java 17 nhẹ
FROM eclipse-temurin:17-jdk-alpine

# Thiết lập thư mục làm việc trong server
WORKDIR /app

# Copy 3 thư mục quan trọng vào server
COPY BOOT-INF ./BOOT-INF
COPY META-INF ./META-INF
COPY org ./org

# Mở cổng kết nối 8080
EXPOSE 8080

# Lệnh chạy ứng dụng từ các thư mục rời (Exploded archive)
ENTRYPOINT ["java", "-cp", ".:BOOT-INF/classes:BOOT-INF/lib/*", "org.springframework.boot.loader.JarLauncher"]