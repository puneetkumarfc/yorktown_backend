package com.yorktown.yorktownpizza.models;

import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Entity
@Table(name = "menu_items")
@Data
public class MenuItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private MenuCategory category;

    @Column(nullable = false, length = 150)
    private String name;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "is_special")
    private Boolean isSpecial = false;

    @Column(name = "display_on_home_page")
    private Boolean displayOnHomePage = false;

    @Column(name = "item_note", columnDefinition = "TEXT")
    private String itemNote;

    @OneToMany(mappedBy = "menuItem")
    private List<ItemPrice> prices;

    @OneToMany(mappedBy = "appliesToItem")
    private List<ItemAddon> addons;
} 