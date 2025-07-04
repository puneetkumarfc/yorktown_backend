package com.yorktown.yorktownpizza.exception;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.models.AuditLog;
import com.yorktown.yorktownpizza.repository.AuditLogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import jakarta.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@ControllerAdvice
public class GlobalExceptionHandler {
    @Autowired
    private AuditLogRepository auditLogRepository;

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<ApiResponse<Object>> handleValidationExceptions(MethodArgumentNotValidException ex, HttpServletRequest request) {
        List<String> errors = ex.getBindingResult().getFieldErrors().stream()
                .map(error -> error.getField() + ": " + error.getDefaultMessage())
                .collect(Collectors.toList());
        ApiResponse<Object> response = new ApiResponse<>(false, errors, "Validation failed", null);
        saveAuditLog("VALIDATION_ERROR", null, request, "FAILED", errors.toString());
        return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiResponse<Object>> handleAllExceptions(Exception ex, HttpServletRequest request) {
        ApiResponse<Object> response = new ApiResponse<>(false, Collections.singletonList(ex.getMessage()), "An error occurred", null);
        saveAuditLog("EXCEPTION", null, request, "FAILED", ex.getMessage());
        return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    private void saveAuditLog(String event, String username, HttpServletRequest request, String status, String errorMessage) {
        AuditLog log = new AuditLog();
        log.setEvent(event);
        log.setUsername(username); // You can enhance this to fetch the actual user if available
        log.setIpAddress(request.getRemoteAddr());
        log.setStatus(status);
        log.setErrorMessage(errorMessage);
        log.setDetails(request.getRequestURI());
        auditLogRepository.save(log);
    }
} 