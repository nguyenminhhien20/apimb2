FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# 1. Copy code Java (Đã đúng với cấu trúc hình 3 và 5)
COPY BOOT-INF ./BOOT-INF
COPY META-INF ./META-INF
COPY org ./org

# 2. Tạo folder uploads trống để tránh lỗi build nếu folder gốc mất
RUN mkdir -p ./uploads

# 3. Copy thư mục ảnh bạn vừa tạo ở Bước 1 vào container
COPY uploads/ ./uploads/

EXPOSE 8080

# Cấp quyền cho thư mục ảnh
RUN chmod -R 777 ./uploads

ENTRYPOINT ["java", "-cp", ".:BOOT-INF/classes:BOOT-INF/lib/*", "org.springframework.boot.loader.JarLauncher"]