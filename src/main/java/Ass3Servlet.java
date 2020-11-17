import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Ass3Servlet")
public class Ass3Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ""; // url to forward to
        // Get the parameter values from the request

        String para1="customerName";
        String para2="customerEmail";
        String para3="quantity";

        String name = request.getParameter(para1);
        String email = request.getParameter(para2);
        String quantity = request.getParameter(para3);

        System.out.println(name);
        System.out.println(email);
        System.out.println(quantity);

        // If any are empty, set the url to forward to the error page.
        // Ortherwise, forward to the normal receipt
        if (name.equals("") || email.equals("") || quantity.equals("")) {
            url = "/Ass3/Error.jsp";
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
                //Pattern PatternObject = Pattern.compile("\\w+@\\w+(.\\w+)*");
                //Matcher MatcherObject = PatternObject.matcher(email);
                if (pricePerUnit>0 && quantityNumber>0) {
                    totalCost = pricePerUnit * quantityNumber;
                    request.setAttribute("pricePerUnit", "" + pricePerUnit);
                    request.setAttribute("cost", "" + totalCost);
                    url = "/Ass3/Receipt.jsp";
                }
                else
                {
                    url = "/Ass3/Error.jsp";
                }

            }
            catch (NumberFormatException ex)
            {
                url = "/Ass3/Error.jsp";
            }
        }
        // Create the dispatcher from the url and perform the forward
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
