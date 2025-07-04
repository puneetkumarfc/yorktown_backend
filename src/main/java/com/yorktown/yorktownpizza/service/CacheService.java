package com.yorktown.yorktownpizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.CacheManager;
import org.springframework.stereotype.Service;

@Service
public class CacheService {
    @Autowired
    private CacheManager cacheManager;

    public void clearMenuItemsCache() {
        if (cacheManager.getCache("menuItems") != null) {
            cacheManager.getCache("menuItems").clear();
        }
    }
} 