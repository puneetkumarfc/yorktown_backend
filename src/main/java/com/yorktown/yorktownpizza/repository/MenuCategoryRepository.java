package com.yorktown.yorktownpizza.repository;

import com.yorktown.yorktownpizza.models.MenuCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MenuCategoryRepository extends JpaRepository<MenuCategory, Integer> {
    @Query("SELECT c FROM MenuCategory c LEFT JOIN FETCH c.subCategories WHERE c.id = :categoryId")
    MenuCategory findByIdWithSubCategories(@Param("categoryId") Integer categoryId);

    List<MenuCategory> findByDisplayOnHomePageTrue();
} 