package com.yorktown.yorktownpizza.repository;

import com.yorktown.yorktownpizza.models.AuditLog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuditLogRepository extends JpaRepository<AuditLog, Long> {
} 