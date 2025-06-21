package com.yorktown.yorktownpizza.service;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import com.yorktown.yorktownpizza.models.MenuItem;
import com.yorktown.yorktownpizza.models.ItemPrice;
import com.yorktown.yorktownpizza.repository.MenuRepository;
import com.yorktown.yorktownpizza.interfaces.MenuInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MenuService implements MenuInterface {
    @Autowired
    private MenuRepository menuRepository;

    @Override
    public ResponseEntity<ApiResponse<List<MenuItemDTO>>> getMenuItemsForHomePageByCategory(Integer categoryId) {
        if (categoryId == null) {
            ApiResponse<List<MenuItemDTO>> response = new ApiResponse<>(false, Collections.singletonList("categoryId is required"), "Category ID is missing", null);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
        }
        List<MenuItem> items = menuRepository.findHomePageItemsByCategoryId(categoryId);
        List<MenuItemDTO> dtos = items.stream().map(item -> {
            MenuItemDTO dto = new MenuItemDTO();
            dto.setId(item.getId());
            dto.setName(item.getName());
            dto.setCategoryId(item.getCategory().getId());
            dto.setItemNote(item.getItemNote());
            BigDecimal minPrice = item.getPrices() != null && !item.getPrices().isEmpty() ?
                item.getPrices().stream().map(ItemPrice::getPrice).min(BigDecimal::compareTo).orElse(BigDecimal.ZERO)
                : BigDecimal.ZERO;
            dto.setStartingPrice(minPrice);
            return dto;
        }).collect(Collectors.toList());
        ApiResponse<List<MenuItemDTO>> response = new ApiResponse<>(true, null, "Menu items fetched successfully", dtos);
        return ResponseEntity.ok(response);
    }
}
