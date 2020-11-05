package controller;

import models.Product;
import service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet",urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    ProductServiceImpl productService=new ProductServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                createNewProduct(request,response);
                break;
            case "edit":
                editProduct(request,response);
                break;
            default:
                break;
        }
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch=request.getParameter("name_search");
        List<Product> products=productService.findByNameProduct(nameSearch);
        request.setAttribute("productList",products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/listproduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }


    private void editProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String productCode=request.getParameter("product_code");
        String nameProduct = request.getParameter("product_name");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        Product product = new Product(id,productCode,nameProduct,price,description);
        productService.save(product);
        showAllProduct(request,response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/listproduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String productCode= request.getParameter("product_code");
        String nameProduct=request.getParameter("name_product");
        int price= Integer.parseInt(request.getParameter("price"));
        String description=request.getParameter("description");
        Product product = new Product(id,productCode,nameProduct,price,description);
        productService.save(product);
        showAllProduct(request,response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/listproduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreateProduct(request,response);
                break;
            case "edit":
                showEditProduct(request,response);
                break;
            case "delete":
                deleteProduct(request,response);
                break;
            case "search":
                searchByName(request,response);
                break;
            default:
                showAllProduct(request,response);
                break;
        }
    }
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.remove(id);
        showAllProduct(request,response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/listproduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showEditProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product =  productService.findById(id);

        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher =request.getRequestDispatcher("product/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAllProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = this.productService.findAll();
        request.setAttribute("productList", products);

        RequestDispatcher dispatcher = request.getRequestDispatcher("product/listproduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
