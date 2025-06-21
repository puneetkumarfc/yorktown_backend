package com.yorktown.yorktownpizza.controller;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import com.yorktown.yorktownpizza.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping("/api/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;

    @GetMapping("/home-items")
    public ResponseEntity<ApiResponse<List<MenuItemDTO>>> getMenuItemsForHomePage(@RequestParam(value = "categoryId", required = false) Integer categoryId) {
        return menuService.getMenuItemsForHomePageByCategory(categoryId);
    }
}
