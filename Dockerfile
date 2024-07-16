# 使用官方的 OpenJDK 17 镜像作为基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制 resources 文件夹到容器中
COPY resources /app/resources

# 复制编译好的 JAR 文件到容器中
COPY LunarCore.jar /app/LunarCore.jar

# 暴露应用运行的端口（如果需要）
EXPOSE 8080

# 设置容器启动时的命令
CMD ["java", "-jar", "/app/LunarCore.jar"]
