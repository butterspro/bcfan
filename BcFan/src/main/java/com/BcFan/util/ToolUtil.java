package com.BcFan.util;

import java.util.UUID;

public class ToolUtil {
	public static String getNewFileName(String oldFileName){
		String s[]=oldFileName.split("\\.");
		String s1=UUID.randomUUID().toString()+"."+s[s.length-1];
		return s1;
	}
}
