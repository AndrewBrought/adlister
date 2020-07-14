import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/counter")
public class CounterServlet extends HttpServlet {
    private int count = 0;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();


        String reset = request.getParameter("reset");
        if(reset == null){
            count += 1;
        } else {
            count = 1;
        }

//        Bobbie's code
//        String reset = request.getParameter("reset");
//        if (reset.equalsIgnoreCase("y") || reset.equalsIgnoreCase("yes") ) {
//            count = 1;
//            out.println("<h1> You have reset the counter to " + count + ". </h1>");
//        } else {
//            count += 1;

        out.println("<h1>The Page count is: " + count + "</h1>");

    }
}
