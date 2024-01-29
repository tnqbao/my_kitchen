package model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Formating {
	public static boolean Matcher(String format, String content)
	{
		Pattern pattern = Pattern.compile(format);
		Matcher matcher = pattern.matcher(content); 
		return matcher.matches();
	}
}
