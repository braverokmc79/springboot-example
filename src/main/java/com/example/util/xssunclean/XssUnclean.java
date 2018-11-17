package com.example.util.xssunclean;

public class XssUnclean{
		
	 public static String uncleanXSS(String value) {      
		 value = value.replaceAll("&lt;", "<").replaceAll("&gt;", ">");
		 value = value.replaceAll("&#40;", "\\\\(").replaceAll("&#41;", "\\\\)");
		 value = value.replaceAll("&quot;", "'");		 
		 return value;
	}
	 
}
