package test;

import java.util.Date;
import java.util.Random;

import DAO.UserDAO;
import model.Encode;
import model.MailSender;
import model.User;

public class userTest {
    public static void main(String[] args) {
        User user = UserDAO.getInstance().SelectByUsernameAndPassword("usertest1", "1234567TK");
        System.out.println(user);
    }
}
