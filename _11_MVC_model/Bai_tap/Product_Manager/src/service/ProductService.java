package service;

import models.Product;

import java.util.List;
import java.util.regex.Pattern;

public interface ProductService {
    List<Product> findAll();
    void save(Product product);
    Product findById(int id);
    List<Product> findByNameProduct(String nameProduct);
    void remove(int id);
    void update(int id, Product product);
}
