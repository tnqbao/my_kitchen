package test;

import java.util.Date;
import java.util.Random;

import DAO.UserDao;
import model.Encode;
import model.MailSender;
import model.User;

public class userTest {
    public static void main(String[] args) {
        MailSender sendmail  = new MailSender();
        sendmail.SendMail("", "testmail", new StringBuilder().append((new Random().nextInt(100)+1)).toString());
    }
}
