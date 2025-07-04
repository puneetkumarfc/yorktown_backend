package com.yorktown.yorktownpizza.models;

import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Entity
@Table(name = "menu_categories")
@Data
public class MenuCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 100)
    private String name;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private MenuCategory parent;

    @OneToMany(mappedBy = "parent")
    private List<MenuCategory> subCategories;

    @OneToMany(mappedBy = "category")
    private List<MenuItem> menuItems;

    @Column(name = "display_on_home_page")
    private Boolean displayOnHomePage = false;
} 