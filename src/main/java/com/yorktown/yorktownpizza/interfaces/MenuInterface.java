package com.yorktown.yorktownpizza.interfaces;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuCategoryDTO;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import com.yorktown.yorktownpizza.models.MenuCategory;
import org.springframework.http.ResponseEntity;
import java.util.List;

public interface MenuInterface {
    ApiResponse<List<MenuItemDTO>> getMenuItemsForHomePageByCategory(Integer categoryId, int displayHome);
    ApiResponse<List<MenuCategoryDTO>> getHomePageCategories(int displayHome);
}
