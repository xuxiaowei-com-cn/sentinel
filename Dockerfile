# 第一阶段：编译 git 源码

# 选择运行时基础镜像
FROM xuxiaoweicomcn/dragonwell8:8.13.14-Standard

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /home

# 查看文件
RUN ls

# 添加 sentinel
ADD sentinel-dashboard-1.8.6.jar .
# 重命名
RUN mv sentinel-dashboard-1.8.6.jar sentinel-dashboard.jar

# 查看文件
RUN ls

EXPOSE 8080

CMD java -jar sentinel-dashboard.jar
