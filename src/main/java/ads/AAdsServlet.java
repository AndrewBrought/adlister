package ads;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AAdsServlet", urlPatterns = "/aads")
public class AAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("ads", ADaoFactory.getAdsDao().all());
        req.getRequestDispatcher("/aindex.jsp").forward(req, resp);

    }
}
