package com.yorktown.yorktownpizza.models;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;

@Entity
@Table(name = "order_item_addons")
@Data
public class OrderItemAddon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "order_item_id", nullable = false)
    private OrderItem orderItem;

    @ManyToOne
    @JoinColumn(name = "addon_id", nullable = false)
    private ItemAddon addon;

    @Column(name = "addon_price", nullable = false, precision = 6, scale = 2)
    private BigDecimal addonPrice;
} 