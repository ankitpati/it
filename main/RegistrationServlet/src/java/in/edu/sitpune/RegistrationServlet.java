/* RegistrationServlet.java */
/* Date  : 18 October 2016
 * Author: Ankit Pati
 */

package in.edu.sitpune;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegistrationServlet extends HttpServlet {
    final static long serialVersionUID = 0l;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        try (
            PrintWriter out = response.getWriter();

            Connection con = DriverManager.getConnection(
                  "jdbc:mysql://localhost/java_test", "java_test", "java_test");

            PreparedStatement insert = con.prepareStatement(
                "insert into registered_users (name, password, email, country)"+
                "values(?, ?, ?, ?)");

            PreparedStatement select = con.prepareStatement(
                           "select name, email, country from registered_users");
        ) {
            insert.setString(1, request.getParameter("name"));
            insert.setString(2, request.getParameter("password"));
            insert.setString(3, request.getParameter("email"));
            insert.setString(4, request.getParameter("country"));
            insert.execute();

            try (ResultSet rs = select.executeQuery()) {
                out.println(
"<!DOCTYPE html>" +
"<html>" +
"    <head>" +
"        <title>Registered</title>" +
"    </head>" +
"    <body>" +
"        <h1>Registered Users</h1>" +
"        <table border='1'>"
                );

                while (rs.next()) {
                    out.println("<tr>");
                    for(int i = 1; i <= 3; ++i)
                        out.println("<td>" + rs.getString(i) + "</td>");
                    out.println("</tr>");
                }

                out.println(
"        </table>" +
"    </body>" +
"</html>"
                );
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
/* end of RegistrationServlet.java */
