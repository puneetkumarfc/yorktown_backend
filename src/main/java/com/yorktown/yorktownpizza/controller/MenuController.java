package com.yorktown.yorktownpizza.controller;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import com.yorktown.yorktownpizza.dto.MenuCategoryDTO;
import com.yorktown.yorktownpizza.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

import com.yorktown.yorktownpizza.models.MenuCategory;

@RestController
@RequestMapping("/api/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;

    @GetMapping("/home-items/{categoryId}")
    public ResponseEntity<ApiResponse<List<MenuItemDTO>>> getMenuItemsForHomePage(
            @PathVariable("categoryId") Integer categoryId,
            @RequestParam(name = "displayHome", defaultValue = "1") int displayHome) {
        ApiResponse<List<MenuItemDTO>> response = menuService.getMenuItemsForHomePageByCategory(categoryId, displayHome);
        if (response.isStatus()) {
            return ResponseEntity.ok(response);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }

    @GetMapping("/home-categories")
    public ResponseEntity<ApiResponse<List<MenuCategoryDTO>>> getHomePageCategories(
            @RequestParam(name = "displayHome", defaultValue = "1") int displayHome) {
        ApiResponse<List<MenuCategoryDTO>> response = menuService.getHomePageCategories(displayHome);
        if (response.isStatus()) {
            return ResponseEntity.ok(response);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }
}
