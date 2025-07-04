package com.yorktown.yorktownpizza.service;

import com.yorktown.yorktownpizza.dto.ApiResponse;
import com.yorktown.yorktownpizza.dto.MenuItemDTO;
import com.yorktown.yorktownpizza.dto.MenuCategoryDTO;
import com.yorktown.yorktownpizza.models.ItemPrice;
import com.yorktown.yorktownpizza.models.MenuCategory;
import com.yorktown.yorktownpizza.models.MenuItem;
import com.yorktown.yorktownpizza.interfaces.MenuInterface;
import com.yorktown.yorktownpizza.repository.MenuCategoryRepository;
import com.yorktown.yorktownpizza.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MenuService implements MenuInterface {
    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private MenuCategoryRepository menuCategoryRepository;

    @Override
    @Cacheable(value = "menuItems", key = "#categoryId + '-' + #displayHome")
    @Transactional(readOnly = true)
    public ApiResponse<List<MenuItemDTO>> getMenuItemsForHomePageByCategory(Integer categoryId, int displayHome) {
        if (categoryId == null) {
            return new ApiResponse<>(false, Collections.singletonList("categoryId is required"), "Category ID is missing", null);
        }

        List<Integer> allCategoryIds = new ArrayList<>();
        allCategoryIds.add(categoryId);
        getAllDescendantCategoryIds(categoryId, allCategoryIds);

        List<MenuItem> items;
        if (displayHome == 1) {
            items = menuRepository.findHomePageItemsByCategoryIds(allCategoryIds);
        } else {
            items = menuRepository.findAll().stream()
                    .filter(item -> allCategoryIds.contains(item.getCategory().getId()))
                    .collect(Collectors.toList());
        }

        if (items.isEmpty()) {
            return new ApiResponse<>(false, null, "No menu items found for this category or its sub-categories", null);
        }
        
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
        return new ApiResponse<>(true, null, "Menu items fetched successfully", dtos);
    }

    private void getAllDescendantCategoryIds(Integer categoryId, List<Integer> allCategoryIds) {
        MenuCategory category = menuCategoryRepository.findByIdWithSubCategories(categoryId);
        if (category != null && category.getSubCategories() != null && !category.getSubCategories().isEmpty()) {
            for (MenuCategory subCategory : category.getSubCategories()) {
                allCategoryIds.add(subCategory.getId());
                getAllDescendantCategoryIds(subCategory.getId(), allCategoryIds);
            }
        }
    }

    @Override
    @Cacheable("homeCategories")
    @Transactional(readOnly = true)
    public ApiResponse<List<MenuCategoryDTO>> getHomePageCategories(int displayHome) {
        List<MenuCategory> categories;
        if (displayHome == 1) {
            categories = menuCategoryRepository.findByDisplayOnHomePageTrue();
        } else {
            categories = menuCategoryRepository.findAll();
        }
        if (categories.isEmpty()) {
            return new ApiResponse<>(false, null, "No categories found for home page", null);
        }

        List<MenuCategoryDTO> dtos = categories.stream().map(category -> {
            MenuCategoryDTO dto = new MenuCategoryDTO();
            dto.setId(category.getId());
            dto.setName(category.getName());
            if (category.getParent() != null) {
                dto.setParentId(category.getParent().getId());
            }
            return dto;
        }).collect(Collectors.toList());

        return new ApiResponse<>(true, null, "Home page categories fetched successfully", dtos);
    }
}
