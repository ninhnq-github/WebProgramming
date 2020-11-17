import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RedirectionServlet")
public class RedirectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dest = request.getParameter("DestinationPage");
        String url = "Index.jsp";
        switch (dest)
        {
            case "Ass1":
                url = "/Ass1/Ass1.jsp";
                break;
            case "Ass2a":
                url = "/Ass2/Ass2a.jsp";
                break;
            case "Ass2b":
                url = "/Ass2/Ass2b.jsp";
                break;
            case "Ass3":
                url = "/Ass3/Ass3.jsp";
                break;
            case "Ass4a":
                url = "/Ass4/Ass4a.jsp";
                break;
            case "Ass4b":
                url = "/Ass4/Ass4b.jsp";
                break;
            case "Ass4c":
                url = "/Ass4/Ass4c.jsp";
                break;
            case "Ass5":
                url = "/Ass5/Ass5.jsp";
                break;
            case "Ass5s":
                url = "/Ass5s/Ass5s.jsp";
                break;
        }
        RequestDispatcher dispatcherObject = getServletContext().getRequestDispatcher(url);
        dispatcherObject.forward(request,response);
    }
}
