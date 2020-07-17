import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdsServlet", urlPatterns = "/ads")
public class AdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       Ads ListAdsDao = DaoFactory.getAdsDao();
       String title = request.getParameter("title");
       String description = request.getParameter("description");
       Ad ad = new Ad(title, description);
       ListAdsDao.all();

    }
}
