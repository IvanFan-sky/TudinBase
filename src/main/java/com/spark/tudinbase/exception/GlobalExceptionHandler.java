package com.spark.tudinbase.exception;

import com.spark.tudinbase.common.Result;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @Classname GlobalExceptionHandler
 * @Description 全局异常处理器
 * @Date 2025/1/9 17:38
 * @Author spark
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 处理自定义异常
     */
    @ExceptionHandler(CustomException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Result<String> handleCustomException(CustomException e) {
        return Result.failure(e.getMessage());
    }

    /**
     * 处理其他所有未被捕获的异常
     */
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public Result<String> handleException(Exception e) {
        return Result.failure("系统异常，请稍后重试！");
    }
}