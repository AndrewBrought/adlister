import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SettingsServlet", urlPatterns = "/settings")
public class SettingsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/settings.jsp").forward(req,res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        HttpSession session = req.getSession();

        if(req.getParameter("reset") != null){
            session.removeAttribute("font-color");
            session.removeAttribute("background-color");

            res.sendRedirect("/profile");
        }else if(req.getParameter("theme").equals("dark")){
            session.setAttribute("font-color", "#fff");
            session.setAttribute("background-color", "#000");

            res.sendRedirect("/profile");
        } else {
            session.setAttribute("font-color", "#000");
            session.setAttribute("background-color", "#fff");

            res.sendRedirect("/profile");
        }
    }

}
