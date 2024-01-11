
package com.ecommerce.entitites;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="EcommerceProducts")
public class addProductsEntities {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ProductID")
    private int id;
    
    @Column(name="ProductName", length = 100)
    private String ProductTile;
    
    @Column(name="ProductDescription", length = 300)
    private String ProductLabel;
    
    @Column(length = 100)
    private String imageOne; 
    
    @Column(length = 100)
    private String imageTwo; 
    
    @Column(length = 100)
    private String imageThree; 
    
    @Column(length = 100)
    private String imageFour; 
    
    @ManyToOne
    private productCategoryEntities categories;
    
    private double ProductPrice;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductTile() {
        return ProductTile;
    }

    public void setProductTile(String ProductTile) {
        this.ProductTile = ProductTile;
    }

    public String getProductLabel() {
        return ProductLabel;
    }

    public void setProductLabel(String ProductLabel) {
        this.ProductLabel = ProductLabel;
    }

    public String getImageOne() {
        return imageOne;
    }

    public void setImageOne(String imageOne) {
        this.imageOne = imageOne;
    }

    public String getImageTwo() {
        return imageTwo;
    }

    public void setImageTwo(String imageTwo) {
        this.imageTwo = imageTwo;
    }

    public String getImageThree() {
        return imageThree;
    }

    public void setImageThree(String imageThree) {
        this.imageThree = imageThree;
    }

    public String getImageFour() {
        return imageFour;
    }

    public void setImageFour(String imageFour) {
        this.imageFour = imageFour;
    }

    public productCategoryEntities getCategories() {
        return categories;
    }

    public void setCategories(productCategoryEntities categories) {
        this.categories = categories;
    }

    public double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(double ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public addProductsEntities(String ProductTile, String ProductLabel, String imageOne, String imageTwo, String imageThree, String imageFour, productCategoryEntities categories, double ProductPrice) {
        this.ProductTile = ProductTile;
        this.ProductLabel = ProductLabel;
        this.imageOne = imageOne;
        this.imageTwo = imageTwo;
        this.imageThree = imageThree;
        this.imageFour = imageFour;
        this.categories = categories;
        this.ProductPrice = ProductPrice;
    }

    public addProductsEntities(int id, String ProductTile, String ProductLabel, String imageOne, String imageTwo, String imageThree, String imageFour, productCategoryEntities categories, double ProductPrice) {
        this.id = id;
        this.ProductTile = ProductTile;
        this.ProductLabel = ProductLabel;
        this.imageOne = imageOne;
        this.imageTwo = imageTwo;
        this.imageThree = imageThree;
        this.imageFour = imageFour;
        this.categories = categories;
        this.ProductPrice = ProductPrice;
    }

    public addProductsEntities() {
    }
    
    

    @Override
    public String toString() {
        return "addProductsEntities{" + "id=" + id + ", ProductTile=" + ProductTile + ", ProductLabel=" + ProductLabel + ", imageOne=" + imageOne + ", imageTwo=" + imageTwo + ", imageThree=" + imageThree + ", imageFour=" + imageFour + ", categories=" + categories + ", ProductPrice=" + ProductPrice + '}';
    }

    
    
}
