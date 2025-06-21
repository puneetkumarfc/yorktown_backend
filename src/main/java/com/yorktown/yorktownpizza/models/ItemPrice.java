package com.yorktown.yorktownpizza.models;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;

@Entity
@Table(name = "item_prices")
@Data
public class ItemPrice {
    @EmbeddedId
    private ItemPriceId id;

    @ManyToOne
    @MapsId("itemId")
    @JoinColumn(name = "item_id")
    private MenuItem menuItem;

    @ManyToOne
    @MapsId("sizeId")
    @JoinColumn(name = "size_id")
    private ItemSize size;

    @Column(nullable = false, precision = 6, scale = 2)
    private BigDecimal price;
}

@Embeddable
@Data
class ItemPriceId implements java.io.Serializable {
    private Integer itemId;
    private Integer sizeId;
} 