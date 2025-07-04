package com.yorktown.yorktownpizza.dto;

import lombok.Data;
import java.io.Serializable;

@Data
public class MenuCategoryDTO implements Serializable {
    private Integer id;
    private String name;
    private Integer parentId;
} 