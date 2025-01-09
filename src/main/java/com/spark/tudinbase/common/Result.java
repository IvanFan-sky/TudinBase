package com.spark.tudinbase.common;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @Classname Response
 * @Description 统一响应类
 * @Version 1.0
 * @Date 2025/1/9 17:09
 * @Author spark
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Result<T> {

    // 状态码，200 表示成功，非 200 表示失败
    private int code;

    // 响应消息，通常用于提示
    private String message;

    // 响应数据，泛型类型 T，可以是任何类型的对象
    private T data;

    // 成功的响应

    public static <T> Result<T> success(T data) {
        return new Result<>(ResponseCode.SUCCESS.getCode(), ResponseCode.SUCCESS.getMessage(), data);
    }

    // 失败的响应
    public static <T> Result<T> failure(String message) {
        return new Result<>(ResponseCode.FAILURE.getCode(), message, null);
    }



}
