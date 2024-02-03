package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.Formating;
import model.User;

/**
 * Servlet implementation class userController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public UserController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
			case "login":
				login(request, response);
				break;
			case "register":
				register(request, response);
				break;
			case "registerInformation":
				try {
					registerInformation(request, response);
				} catch (ServletException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} catch (ParseException e) {
					e.printStackTrace();
				}
				break;
			case "registerEmail":
				break;
			case "registerPhoneNumber":
				break;
			case "welcome":
				break;
			default:
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String checkbox = request.getParameter("checkbox");
		//
		// xu ly
		String url = "/index.jsp";

		User exitstUser = (User) session.getAttribute("user");
		if (exitstUser != null) {
			url = "/index.jsp";
		} else {
			if ((username.isBlank() || username.isEmpty()) || (password.isBlank() || password.isEmpty())) {
				if (username.isBlank() || username.isEmpty())
					session.setAttribute("error_username", "Please enter username!");
				if (password.isBlank() || password.isEmpty())
					session.setAttribute("error_password", "Please enter password!");
				url = "/user-view/login.jsp";
			} else {
				User user = UserDAO.getInstance().SelectByUsernameAndPassword(username, password);
				if (user != null) {
					session.setAttribute("save_password", "true".equalsIgnoreCase(checkbox) ? "true" : "false");
					session.setAttribute("password", "true".equalsIgnoreCase("true") ? password : "");
					session.setAttribute("user", user);
				} else {
					session.setAttribute("error_username", "Username or password not correctly!");
					session.setAttribute("error_password", "Username or password not correctly!");
					url = "/user-view/login.jsp";
				}
			}
		}

		// user = UserDao.getInstance();
		// Session
		session.setAttribute("username", username);
		// session.setAttribute("password", password);

		// xuly

		RequestDispatcher rd = request.getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		//
		// xu ly
		String action = request.getParameter("action");
		if (!action.equalsIgnoreCase("register")) {
			session.setAttribute("error_username", "");
			session.setAttribute("error_password", "");
		}
		String url = "/user-view/registerInformation.jsp";
		if ((username.isBlank() || username.isEmpty()) || (password.isBlank() || password.isEmpty())) {
			if (username.isBlank() || username.isEmpty())
				session.setAttribute("error_username", "Please enter username!");
			if (password.isBlank() || password.isEmpty())
				session.setAttribute("error_password", "Please enter password!");
			if (confirmPassword.isBlank() || confirmPassword.isEmpty())
				session.setAttribute("error_confirmPassword", "Please enter Confirm Password!");
			url = "/user-view/register.jsp";
		} else {
			if (UserDAO.getInstance().isAccountExitst(username)) {
				session.setAttribute("error_username", "Account already existed!");
				url = "/user-view/register.jsp";
			} else {
				if (!confirmPassword.equals(password)) {
					session.setAttribute("error_confirmPassword", "Your password doesn't match!");
					url = "/user-view/register.jsp";
				} else {
					User user = new User();
					user.setUserName(username);
					user.setPassword(password);
					session.setAttribute("user", user);
				}
			}
		}
		session.setAttribute("username", username);
		// session.setAttribute("password", password);

		RequestDispatcher rd = request.getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	private void registerInformation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		HttpSession session = request.getSession();
		String fullname = request.getParameter("fullname");
		String gender = request.getParameter("gender");
		String location = request.getParameter("location");
		String dateOfBirth = request.getParameter("dateOfBirth");
		User user = (User) session.getAttribute("user");
		String url = "/user-view/registerEmail.jsp";
		boolean fullnameEmpty = (fullname.isEmpty() || fullname.isBlank());
		boolean genderEmpty = (fullname.isEmpty() || fullname.isBlank());
		boolean locationEmpty = (fullname.isEmpty() || fullname.isBlank());
		boolean dateOfBirthEmpty = (fullname.isEmpty() || fullname.isBlank());
		if (fullnameEmpty || genderEmpty || locationEmpty || dateOfBirthEmpty) {
			url = "/user-view/registerInformation.jsp";
			session.setAttribute("error_fullname", fullnameEmpty ? "Please enter your name!" : "");
			session.setAttribute("error_gender", genderEmpty ? "Please enter your gender!" : "");
			session.setAttribute("error_location", locationEmpty ? "Please enter your address!" : "");
			session.setAttribute("error_dateOfBirth", dateOfBirthEmpty ? "Please enter your birthday!" : "");
		} else {
			if (user != null) {
				if (!Formating.Matcher("\"^\\\\d{2}/\\\\d{2}/\\\\d{4}$\" ", dateOfBirth)) {
					url = "/user-view/registerInformation";
					session.setAttribute("error_dateOfBirth", "DD/MM/YYYY");
				} else {
					SimpleDateFormat dateFormat = new SimpleDateFormat("DD/MM/YYYY");
					user.setFullName(fullname);
					user.setGender(("male".equalsIgnoreCase(gender) ? true : false));
					user.setLocation(location);
					user.setDateOfBirth(dateFormat.parse(dateOfBirth));
					user.setRegistedDate(new Date(System.currentTimeMillis()));
				}
			} else {
				System.err.println("Don't found user from request");
				session.setAttribute("fullname", fullname);
			}
		}
		session.setAttribute("fullname", fullname);
		session.setAttribute("gender", gender);
		session.setAttribute("location", location);
		session.setAttribute("dateofBirth", dateOfBirth);

		RequestDispatcher rd = request.getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	private void registerEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {

	}
}
