
package com.ecommerce.entitites;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="ProductCategories")
public class productCategoryEntities {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int CategoryId;
    
    @Column(length = 100)
    private String CategoryTitle;
    
    @OneToMany(mappedBy = "categories")
    private List<addProductsEntities> products = new ArrayList<>();

    public int getCategoryId() {
        return CategoryId;
    }

    public void setCategoryId(int CategoryId) {
        this.CategoryId = CategoryId;
    }

    public String getCategoryTitle() {
        return CategoryTitle;
    }

    public void setCategoryTitle(String CategoryTitle) {
        this.CategoryTitle = CategoryTitle;
    }

    public List<addProductsEntities> getProducts() {
        return products;
    }

    public void setProducts(List<addProductsEntities> products) {
        this.products = products;
    }

    public productCategoryEntities(int CategoryId, String CategoryTitle) {
        this.CategoryId = CategoryId;
        this.CategoryTitle = CategoryTitle;
    }

    public productCategoryEntities(String CategoryTitle) {
        this.CategoryTitle = CategoryTitle;
    }

    public productCategoryEntities() {
    }

    @Override
    public String toString() {
        return "productCategoryEntities{" + "CategoryId=" + CategoryId + ", CategoryTitle=" + CategoryTitle + ", products=" + products + '}';
    }
    
    
    
    
}
