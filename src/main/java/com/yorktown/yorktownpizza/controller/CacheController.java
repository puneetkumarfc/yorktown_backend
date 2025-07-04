package com.yorktown.yorktownpizza.controller;

import com.yorktown.yorktownpizza.service.CacheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/cache")
public class CacheController {
    @Autowired
    private CacheService cacheService;

    @PostMapping("/clear-menu-items")
    public String clearMenuItemsCache() {
        cacheService.clearMenuItemsCache();
        return "menuItems cache cleared!";
    }
} 