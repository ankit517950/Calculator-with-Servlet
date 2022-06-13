package Ankit.java;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class register extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("Text/html");
        PrintWriter out = response.getWriter();
        String ami = request.getParameter("screen");
        out.println("<h2> " +ami+ "</h2>");
    }
}
