import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "Ass4bServlet")
public class Ass4bServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String processor = request.getParameter("processor");
        String monitor = request.getParameter("monitor");
        String[] accessories = request.getParameterValues("peripherals");

        System.out.println(processor);
        System.out.println(monitor);
        System.out.println(accessories);

        request.setAttribute("processor", processor);
        request.setAttribute("monitor",monitor);
        request.setAttribute("peripherals",accessories);

        String message="";
        if (processor == null){
            processor = "No processor selected";
        } else if (processor.equals("Pentium IV") || processor.equals("Celeron D"))
            message = "Have you considered a more powerful processor?";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Ass4/Process.jsp");
        dispatcher.forward(request, response);
    }
}
