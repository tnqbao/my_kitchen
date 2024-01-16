package model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encode {
    public static String toSHA1(String text) {
        String result = null;
        String salt = "enter your salt";
        text = text + salt;
        try {
            byte[] dataBytes = text.getBytes(); // String to Byte Array
            MessageDigest messeger = MessageDigest.getInstance("SHA-1"); // SHA-1 encode Algorithm
            result = org.apache.tomcat.util.codec.binary.Base64.encodeBase64String(messeger.digest(dataBytes)); // encoding
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
}
