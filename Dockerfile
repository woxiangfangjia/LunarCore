FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到镜像中
COPY . .

# 修改gradlew脚本的权限，使其可执行
RUN chmod +x ./gradlew

# 运行gradlew构建jar文件
RUN ./gradlew jar

# 设置容器启动时执行的命令
ENTRYPOINT ["java", "-jar", "build/libs/LunarCore.jar"]
