package models;

public class Product {
    int id;
    String productCode;
    String nameProduct;
    int Price;
    String description;

    public Product() {
    }

    public Product(int id, String productCode, String nameProduct, int price, String description) {
        this.id = id;
        this.productCode = productCode;
        this.nameProduct = nameProduct;
        Price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
