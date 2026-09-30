# Docker + Nginx + MySQL 多容器项目
## 项目简介
基于 Docker Compose 编排的多容器Web服务，包含Nginx反向代理、后端服务，MySQL数据库，并实现自动化备份。
## 架构图
浏览器→Nginx(8080)→/→静态页面
                 →/api/→后端(5000)
                        ↓
                    MySQL(3306)→持久化储存
                        ↑
                  backup.sh(cron每天2:00)→备份文件
## 技术栈
-Docker / Docker Compose: 多容器编排
-Nginx: 反向代理,静态资源服务
-MySQL 8.0: 数据持久化
-Shell + cron: 自动化备份
## 部署步骤
1.克隆项目:'git clone <仓库地址>'
2.进入目录:'cd myproject'
3.启动服务:'docker-compose up -d'
4.访问页面:'http:/localhost:8080'
## 项目结构
```text
myproject/
├── docker-compose.yml    # 多容器编排
├── nginx.conf            # Nginx 配置（反向代理）
├── html/                 # 前端静态页面
├── backend/              # 后端服务
├── backend-html/         # 后端页面
├── backup.sh             # MySQL 备份脚本
└── .gitignore

```

