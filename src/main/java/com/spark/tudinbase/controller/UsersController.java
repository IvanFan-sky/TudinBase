package com.spark.tudinbase.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Classname UsersController
 * @Description 用户控制器
 * @Date 2025/1/9 16:17
 * @Author spark
 */
@RestController
@RequestMapping("/users")
@Tag(name = "用户管理", description = "管理用户的增删改查")
public class UsersController {
    @GetMapping("/users")
    @Operation(summary = "获取用户列表", description = "返回所有用户的信息")
    public String getUsers() {
        return "用户列表";
    }
}
