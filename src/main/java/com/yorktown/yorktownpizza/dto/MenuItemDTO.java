package com.yorktown.yorktownpizza.dto;

import lombok.Data;
import java.math.BigDecimal;

@Data
public class MenuItemDTO {
    private Integer id;
    private String name;
    private Integer categoryId;
    private String itemNote;
    private BigDecimal startingPrice;
} 