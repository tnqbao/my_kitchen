package test;

import java.util.Date;
import java.util.Random;

import dao.UserDAO;
import model.Encode;
import model.MailSender;
import model.User;

public class UserTest {
    public static void main(String[] args) {
        User user = new User();
        user.setUserName("usertest1");
        user.setPassword(Encode.toSHA1("1234567TK"));
        UserDAO.getInstance().insert(user);
        System.out.println(user);
    }
}
