package com.yorktown.yorktownpizza.repository;

import com.yorktown.yorktownpizza.models.MenuItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

public interface MenuRepository extends JpaRepository<MenuItem, Integer> {
    List<MenuItem> findByDisplayOnHomePageTrue();

    @Query("SELECT m FROM MenuItem m WHERE m.displayOnHomePage = true AND m.category.id = :categoryId")
    List<MenuItem> findHomePageItemsByCategoryId(@Param("categoryId") Integer categoryId);
} 