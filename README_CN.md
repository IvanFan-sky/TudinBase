# 个人知识库系统

## 简介

本项目是一个个人知识库系统，用于管理个人笔记、文档和相册。功能包括安全登录、基于角色的权限控制以及高效的数据组织。

## 功能特点

- **个人笔记管理**：支持创建、编辑、删除和分类管理笔记。
- **文档管理**：支持上传、下载、预览和分类管理文档。
- **相册管理**：支持图片上传、预览、删除，并按专辑管理。
- **用户认证**：通过 Spring Security 和 JWT 实现安全登录和注册。
- **基于角色的权限控制**：不同角色拥有不同权限。
- **系统设置**：修改用户信息和密码。

## 技术栈

### 前端
- Vue 3
- Element Plus
- Axios
- Vue Router

### 后端
- JDK 17
- Spring Boot
- MyBatis-Plus
- Redis
- MySQL
- Spring Security
- JWT

## 快速开始

### 前置条件
1. 安装 MySQL 并创建数据库：
    ```sql
    CREATE DATABASE IF NOT EXISTS `personal_knowledge_base` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
    ```
2. 配置 `application.yml` 文件，填写正确的数据库和其他配置信息。

### 启动步骤
1. 克隆项目代码：
    ```bash
    git clone https://github.com/your-repo/personal-knowledge-base.git
    cd personal-knowledge-base
    ```
2. 启动后端服务：
    ```bash
    mvn spring-boot:run
    ```
3. 启动前端服务：
    ```bash
    cd frontend
    npm install
    npm run serve
    ```

## 配置说明

确保在 `application.yml` 文件中正确配置以下内容：
- MySQL 数据库信息
- Redis 服务器信息
- JWT 配置

## 许可证

本项目基于 MIT 许可证开源。
