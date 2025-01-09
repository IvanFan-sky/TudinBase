-- 创建数据库
CREATE DATABASE IF NOT EXISTS `personal_knowledge_base` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personal_knowledge_base`;

-- 创建用户表
CREATE TABLE `users` (
    `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户ID',
    `username` VARCHAR(50) NOT NULL COMMENT '用户名',
    `password` VARCHAR(255) NOT NULL COMMENT '密码（加密存储）',
    `email` VARCHAR(100) COMMENT '邮箱',
    `phone` VARCHAR(15) COMMENT '电话号码',
    `role` VARCHAR(20) NOT NULL DEFAULT 'USER' COMMENT '用户角色',
    `status` TINYINT DEFAULT 1 COMMENT '账户状态（1：启用，0：禁用）',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    INDEX `idx_username` (`username`),
    INDEX `idx_email` (`email`)
) COMMENT '用户表';

-- 创建笔记表
CREATE TABLE `notes` (
    `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '笔记ID',
    `user_id` BIGINT NOT NULL COMMENT '用户ID',
    `title` VARCHAR(255) NOT NULL COMMENT '笔记标题',
    `content` TEXT COMMENT '笔记内容',
    `category` VARCHAR(50) COMMENT '分类',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    INDEX `idx_user_id` (`user_id`),
    INDEX `idx_title` (`title`)
) COMMENT '笔记表';

-- 创建文档表
CREATE TABLE `documents` (
    `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '文档ID',
    `user_id` BIGINT NOT NULL COMMENT '用户ID',
    `name` VARCHAR(255) NOT NULL COMMENT '文档名称',
    `url` VARCHAR(500) NOT NULL COMMENT '存储路径',
    `category` VARCHAR(50) COMMENT '分类',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    INDEX `idx_user_id` (`user_id`),
    INDEX `idx_name` (`name`)
) COMMENT '文档表';

-- 创建图片表
CREATE TABLE `photos` (
    `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '图片ID',
    `user_id` BIGINT NOT NULL COMMENT '用户ID',
    `album` VARCHAR(50) COMMENT '相册名称',
    `url` VARCHAR(500) NOT NULL COMMENT '图片路径',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    INDEX `idx_user_id` (`user_id`),
    INDEX `idx_album` (`album`)
) COMMENT '图片表';


INSERT INTO `users` (`username`, `password`, `email`, `phone`, `role`, `status`, `create_time`, `update_time`)
VALUES
    ('admin', 'password123', 'admin@example.com', '1234567890', 'ADMIN', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('user1', 'password123', 'user1@example.com', '1234567891', 'USER', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('user2', 'password123', 'user2@example.com', '1234567892', 'USER', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `notes` (`user_id`, `title`, `content`, `category`, `create_time`, `update_time`)
VALUES
    (1, 'My First Note', 'This is the content of the first note.', 'General', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Note for User1', 'Content for User1\'s note.', 'Work', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Note for User2', 'Content for User2\'s note.', 'Personal', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
