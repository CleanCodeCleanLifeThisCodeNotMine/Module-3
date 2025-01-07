package controller;

import dao.DatabaseConnection;
import dao.ProductDAOImpl;
import service.ProductService;
import service.ProductServiceImpl;
import model.Product;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() {
        productService = new ProductServiceImpl(new ProductDAOImpl(DatabaseConnection.getConnection()));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            request.getRequestDispatcher("/add.jsp").forward(request, response);
        } else if ("view".equals(action)) {
            List<Product> products = productService.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/list.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        Product newProduct = new Product(0, name, price, discount, stock);
        if (productService.addProduct(newProduct)) {
            response.sendRedirect("/products?action=view");
        } else {
            response.sendRedirect("/add.jsp");
        }
    }
}
