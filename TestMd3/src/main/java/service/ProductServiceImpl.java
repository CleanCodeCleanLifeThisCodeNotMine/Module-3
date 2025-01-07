package service;

import dao.ProductDAO;
import model.Product;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    private ProductDAO productDAO;

    public ProductServiceImpl(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    @Override
    public List<Product> getAllProducts() {
        return productDAO.getAllProducts();
    }

    @Override
    public boolean addProduct(Product product) {
        return productDAO.addProduct(product);
    }

    @Override
    public List<Product> getTopSellingProducts(int top) {
        return productDAO.getTopSellingProducts(top);
    }

    @Override
    public List<Product> getProductsInTimeRange(String fromDate, String toDate) {
        return productDAO.getProductsInTimeRange(fromDate, toDate);
    }
}
