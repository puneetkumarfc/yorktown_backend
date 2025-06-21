package com.yorktown.yorktownpizza.interfaces;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import org.springframework.http.ResponseEntity;
import java.util.List;

public interface MenuInterface {
    ResponseEntity<ApiResponse<List<MenuItemDTO>>> getMenuItemsForHomePageByCategory(Integer categoryId);
}
