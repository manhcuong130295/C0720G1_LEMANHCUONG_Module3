import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DictonaryServlet",urlPatterns = "/translate")
public class DictonaryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();

        dictionary.put("hello", "Xin chao");
        dictionary.put("how", "The nao");
        dictionary.put("book", "Quyen vo");
        dictionary.put("computer", "May tinh");

        String search_word=request.getParameter("txtSearch");

        String result_word=dictionary.get(search_word);
        PrintWriter printWriter=response.getWriter();
        boolean flag=false;
        printWriter.println("<html>");
        if (result_word!=null){
            printWriter.println("Search_word:"+search_word);
            printWriter.println("Result:"+result_word);

        } else {
            printWriter.println("Not found");
        }

        printWriter.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
