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

@WebServlet(name = "Ass4cServlet")
public class Ass4cServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quantity = request.getParameter("quantity");
        String message = "Thank you for your order of " + quantity + " widgets!";
        Pattern PatternQuantity = Pattern.compile("\\d");
        Matcher MatcherQuantity = PatternQuantity.matcher(quantity);
        if (quantity.equals("")) {
            message = "You must fill in the number of widgets that you want!";
        } else if (!MatcherQuantity.matches()){
            message = "The number you entered is not valid format";
        } else {
            int quan = 0;
            try {
                quan = Integer.parseInt(quantity);
                if (quan<=0)
                    message = "The number of widget must be bigger than 0!";
            } catch (NumberFormatException e) {
                message = e.getMessage();
            }
        }
        request.setAttribute("message",message);
        RequestDispatcher dispatcherObject = getServletContext().getRequestDispatcher("/Ass4/Receipt.jsp");
        dispatcherObject.forward(request,response);
    }
}
