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

@WebServlet(name = "Ass5sServlet")
public class Ass5sServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected  boolean check_valid_info(HttpServletRequest request)
    {
        HttpSession session1 = request.getSession();
        String name = request.getParameter("customerName").trim();
        String email = request.getParameter("customerEmail").trim();
        String quantity = request.getParameter("quantity").trim();
        String phone = request.getParameter("phone").trim();
        String credit = request.getParameter("CreditsNumber").trim();
        String credit_expmonth = request.getParameter("expMonth");
        String credit_expyear = request.getParameter("expYear");
        ServletConfig config = getServletConfig();
        String priceString = config.getInitParameter("pricePerUnit");
        if (priceString==null) priceString="";

        LocalDate currentdate = LocalDate.now();
        System.out.println("Current date: "+currentdate);
        int currentDay = currentdate.getDayOfMonth();
        int currentMonth = currentdate.getMonthValue();
        int currentYear = currentdate.getYear();
        int creditmonth = Integer.parseInt(credit_expmonth);
        int credityear = Integer.parseInt(credit_expyear);

        boolean quantityFlag=false, nameFlag=false, emailFlag=false, creditFlag=false, phoneFlag=false, priceFlag=false;
        if (name.equals(""))
            request.setAttribute("nameError","Must be fill in");
        else
        {
            Pattern PatternName = Pattern.compile("(\\D)*");
            Matcher MatcherName = PatternName.matcher(name);
            if (!MatcherName.matches())
                session1.setAttribute("nameError","Your name is not valid");
            else{
                session1.setAttribute("nameError","valid");
                nameFlag=true;
            }
        }
        if (priceString.equals("") )
            session1.setAttribute("priceError","So sorry! " +
                    "We can't contact to server to get the price of this book" +
                    "right now! please come back later!!");
        else {
            double price=0;
            try {
                price= Double.parseDouble(priceString);
            } catch (NumberFormatException e)
            {
                session1.setAttribute("priceError","So sorry! " +
                        "We can't contact to server to get the price of this book" +
                        "right now! please come back later!!");
            }
            if (price>0) priceFlag=true;
        }
        if (quantity.equals(""))
            request.setAttribute("quantityError","Must be fill in");
        else
        {
            Pattern PatternQuantity = Pattern.compile("(\\d)*");
            Matcher MatcherQuantity = PatternQuantity.matcher(quantity);
            int  quantityNumber=-1;
            if (MatcherQuantity.matches()) {
                try {
                    quantityNumber = Integer.parseInt(quantity);
                } catch (NumberFormatException e) {
                    session1.setAttribute("quantityError", e.getMessage());
                }
            } else
                session1.setAttribute("quantityError","The quantity must be input in decimal number format");
            if (quantityNumber==0)
                session1.setAttribute("quantityError","The quantity must be at least 1");
            else {
                session1.setAttribute("quantityError", "valid");
                quantityFlag=true;
            }
        }
        if (email.equals(""))
            request.setAttribute("emailError","Must be fill in");
        else
        {
            Pattern PatternEmail = Pattern.compile("\\w+@\\w+(.\\w+)*");
            Matcher MatcherEmail = PatternEmail.matcher(email);
            if (!MatcherEmail.matches())
                session1.setAttribute("emailError","Your Email is not valid");
            else {
                session1.setAttribute("emailError", "Valid");
                emailFlag=true;
            }
        }
        if (phone.equals(""))
            request.setAttribute("phoneError","Must be fill in");
        else
        {
            Pattern PatternPhone = Pattern.compile("\\d{3}-\\d{3}-\\d{4}");
            Matcher MatcherPhone = PatternPhone.matcher(phone);
            if (!MatcherPhone.matches())
                session1.setAttribute("phoneError","Your input phone number is not valid");
            else {
                session1.setAttribute("phoneError", "Valid");
                phoneFlag=true;
            }
        }
        if (credit.equals(""))
            request.setAttribute("creditError","Credit number ust be fill in");
        else if (credit_expmonth.equals(""))
            request.setAttribute("monthError","Expiration month must be fill in");
        else if (credit_expyear.equals(""))
            request.setAttribute("yearError","Expiration year must be fill in");
        else
        {
            Pattern PatternCredit = Pattern.compile("\\d{4}(-\\d{4}){3}");
            Matcher MatcherCredit = PatternCredit.matcher(credit);
            if (!MatcherCredit.matches())
                session1.setAttribute("creditError","Your input credit card is not valid");
            else{
                if (credityear < currentYear || (creditmonth<currentMonth && credityear == currentYear))
                    session1.setAttribute("creditError","Your credit card is Expired");
                else {
                    session1.setAttribute("creditError", "Valid");
                    creditFlag=true;
                }
            }
        }
        boolean ok = creditFlag && phoneFlag && emailFlag && quantityFlag && nameFlag && priceFlag;
        return ok;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        HttpSession session1 = request.getSession();
        String url="";

        String name = request.getParameter("customerName").trim();
        String email = request.getParameter("customerEmail").trim();
        String quantity = request.getParameter("quantity").trim();
        String phone = request.getParameter("phone").trim();
        String credit = request.getParameter("CreditsNumber").trim();
        String credit_expmonth = request.getParameter("expMonth");
        String credit_expyear = request.getParameter("expYear");

        session1.setAttribute("customerName", name);
        session1.setAttribute("customerEmail", email);
        session1.setAttribute("quantity", quantity);
        session1.setAttribute("phone", phone);
        session1.setAttribute("CreditsNumber", credit);
        session1.setAttribute("expMonth", credit_expmonth);
        session1.setAttribute("expYear", credit_expyear);
        session1.setAttribute("processor", request.getParameter("processor"));
        session1.setAttribute("monitor",request.getParameter("monitor"));
        session1.setAttribute("peripherals",request.getParameterValues("peripherals"));

        System.out.println(name);
        System.out.println(email);
        System.out.println(quantity);
        System.out.println(phone);
        System.out.println(credit);
        System.out.println(credit_expmonth);
        System.out.println(credit_expyear);

        if (check_valid_info(request)==true)
        {
            ServletConfig config = getServletConfig();
            String priceString = config.getInitParameter("pricePerUnit");
            System.out.println(priceString);
            double pricePerUnit = Double.parseDouble(priceString);
            int quantityNumber = Integer.parseInt(quantity);
            double totalCost;
            totalCost = pricePerUnit * quantityNumber;
            session1.setAttribute("pricePerUnit", "" + pricePerUnit);
            session1.setAttribute("cost", "" + totalCost);
            url = "/Ass5s/Receipt.jsp";
        }
        else
        {
            url = "/Ass5s/Ass5s.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
