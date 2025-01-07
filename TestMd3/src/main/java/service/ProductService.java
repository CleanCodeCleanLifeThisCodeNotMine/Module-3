package service;

import model.Product;
import java.util.List;

public interface ProductService {
    List<Product> getAllProducts();
    boolean addProduct(Product product);
    List<Product> getTopSellingProducts(int top);
    List<Product> getProductsInTimeRange(String fromDate, String toDate);
}
