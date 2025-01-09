package com.spark.tudinbase.common;

/**
 * @Classname ResponseCodeEnum
 * @Description 管理所有的响应状态码和消息
 * @Date 2025/1/9 17:11
 * @Author spark
 */
public enum ResponseCode {

    SUCCESS(200, "操作成功"),
    FAILURE(500, "服务器错误"),
    UNAUTHORIZED(401, "未授权"),
    FORBIDDEN(403, "禁止访问"),
    NOT_FOUND(404, "资源未找到");

    private final int code;
    private final String message;

    ResponseCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
