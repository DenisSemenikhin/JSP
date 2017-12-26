import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Currency;
import java.util.Set;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        if (isValidUser(login, password)) {
            HttpSession session = request.getSession(true);
            Set<Currency> cur = Currency.getAvailableCurrencies();
            Currency[] currency = cur.toArray(new Currency[cur.size()]);

            session.setAttribute("login", login);
            session.setAttribute("currency", currency);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
    private boolean isValidUser(String login, String password) {
        final String VALID_LOGIN = "admin";
        final String VALID_PASSWORD = "admin";

        if(login == null || password == null){
            return false;
        }

        return (VALID_LOGIN.equals(login) && VALID_PASSWORD.equals(password));
    }
}
