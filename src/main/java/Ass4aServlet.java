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

@WebServlet(name = "Ass4aServlet")
public class Ass4aServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        //response.setContentType("text/html");
        //response.setCharacterEncoding("UTF-8");

        String url = ""; // url to forward to

        // Get the parameter values from the request
        String name = request.getParameter("customerName").trim();
        String email = request.getParameter("customerEmail").trim();
        String quantity = request.getParameter("quantity").trim();

        System.out.println(name);
        System.out.println(email);
        System.out.println(quantity);
        // If any are empty, set the url to forward to the error page.
        // Ortherwise, forward to the normal receipt
        if (name.equals("") || email.equals("") || quantity.equals("")) {
            url = "/Ass4/Error.jsp";
            System.out.println("Going to error page");
        }
        else
        {
            ServletConfig config = getServletConfig();
            String priceString = config.getInitParameter("pricePerUnit");
            System.out.println(priceString);
            double pricePerUnit;
            int quantityNumber;
            double totalCost;
            try
            {
                pricePerUnit = Double.parseDouble(priceString);
                quantityNumber = Integer.parseInt(quantity);
                Pattern PatternObject = Pattern.compile("\\w+@\\w+(.\\w+)*");
                Matcher MatcherObject = PatternObject.matcher(email);
                if (pricePerUnit>0 && quantityNumber>0&& MatcherObject.matches()) {
                    totalCost = pricePerUnit * quantityNumber;
                    request.setAttribute("pricePerUnit", "" + pricePerUnit);
                    request.setAttribute("cost", "" + totalCost);
                    url = "/Ass4/Receipt.jsp";
                }
                else
                {
                    if (!MatcherObject.matches())
                        request.setAttribute("EmailError","Your Email is not valid");
                    else
                        request.setAttribute("EmailError","Valid");
                    url = "/Ass4/Error.jsp";
                }

            }
            catch (NumberFormatException ex)
            {
                url = "/Ass4/Error.jsp";
            }
        }

        // Create the dispatcher from the url and perform the forward
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
