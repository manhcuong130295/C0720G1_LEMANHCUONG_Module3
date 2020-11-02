import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountProductServlet", urlPatterns = "/compute")
public class DiscountProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String descriptionProduct = request.getParameter("description");
        float listPrice = Float.parseFloat(request.getParameter("list_price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount_percent"));
        float discountAmount = (float) (listPrice * discountPercent * 0.01);
        float discountPrice = (float) (listPrice - discountAmount);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Description Product:"+descriptionProduct);
        writer.println("<br>");
        writer.println("Discount Amount:" + discountAmount);
        writer.println("<br>");
        writer.println("Discount Price:" + discountPrice);
        writer.println("</html>");

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
