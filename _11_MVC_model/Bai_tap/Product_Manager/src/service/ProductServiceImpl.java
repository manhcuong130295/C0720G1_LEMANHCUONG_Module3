package service;

import models.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Sp-001", "Iphone", 5000, "new"));
        products.put(2, new Product(2, "Sp-002", "Iphone", 5000, "new"));
        products.put(3, new Product(3, "Sp-003", "Iphone", 5000, "new"));
        products.put(4, new Product(4, "Sp-004", "Iphone", 5000, "new"));
        products.put(5, new Product(5, "Sp-005", "Iphone", 5000, "new"));
        products.put(6, new Product(6, "Sp-006", "Iphone", 5000, "new"));
        products.put(7, new Product(7, "Sp-007", "Iphone", 5000, "new"));
        products.put(8, new Product(8, "Sp-008", "Iphone", 5000, "new"));
        products.put(9, new Product(9, "Sp-009", "Iphone", 5000, "new"));
        products.put(10, new Product(10, "Sp-0010", "Iphone", 5000, "new"));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByNameProduct(String nameProduct) {
        Product product = null;
        List<Product> productList = new ArrayList<>();
        for (Product product1 : products.values()) {
            if (product1.getNameProduct().contains(nameProduct)) {
                product = new Product(product1.getId(), product1.getProductCode(), product1.getNameProduct(), product1.getPrice(), product1.getDescription());
                productList.add(product);
            }
        }
        return productList;
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public void update(int id, Product product) {

    }
}
