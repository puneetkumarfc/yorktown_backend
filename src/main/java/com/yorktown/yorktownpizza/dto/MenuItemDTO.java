package com.yorktown.yorktownpizza.dto;

import lombok.Data;
import java.io.Serializable;
import java.math.BigDecimal;

@Data
public class MenuItemDTO implements Serializable {
    private Integer id;
    private String name;
    private Integer categoryId;
    private String itemNote;
    private BigDecimal startingPrice;
} 