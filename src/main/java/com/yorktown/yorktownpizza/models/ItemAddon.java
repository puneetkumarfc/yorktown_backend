package com.yorktown.yorktownpizza.models;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "item_addons")
@Data
public class ItemAddon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false, precision = 6, scale = 2)
    private BigDecimal price = BigDecimal.ZERO;

    @ManyToOne
    @JoinColumn(name = "applies_to_category_id")
    private MenuCategory appliesToCategory;

    @ManyToOne
    @JoinColumn(name = "applies_to_item_id")
    private MenuItem appliesToItem;

    @OneToMany(mappedBy = "addon")
    private List<OrderItemAddon> orderItemAddons;
} 