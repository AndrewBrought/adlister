import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        } else {

            request.setAttribute("ads", DaoFactory.getAdsDao().all());
            request.getRequestDispatcher("/WEB-INF/partials/ads/index.jsp").forward(request, response);
        }
    }
}
