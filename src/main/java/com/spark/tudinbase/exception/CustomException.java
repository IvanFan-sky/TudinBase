package com.spark.tudinbase.exception;

/**
 * @Classname CustomException
 * @Description 自定义异常类
 * @Date 2025/1/9 17:38
 * @Author spark
 */
public class CustomException extends RuntimeException{
    public CustomException(String message) {
        super(message);
    }
}
