package com.yorktown.yorktownpizza.dto;

import java.io.Serializable;
import java.util.List;

public class ApiResponse<T> implements Serializable {
    private boolean status;
    private List<String> errors;
    private String message;
    private T data;

    public ApiResponse() {}

    public ApiResponse(boolean status, List<String> errors, String message, T data) {
        this.status = status;
        this.errors = errors;
        this.message = message;
        this.data = data;
    }

    public boolean isStatus() { return status; }
    public void setStatus(boolean status) { this.status = status; }

    public List<String> getErrors() { return errors; }
    public void setErrors(List<String> errors) { this.errors = errors; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public T getData() { return data; }
    public void setData(T data) { this.data = data; }
} 