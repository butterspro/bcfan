package com.BcFan.Listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.catalina.User;

import com.BcFan.entity.Users;

public class sessionListener implements HttpSessionAttributeListener{
	private Map<Integer, HttpSession> userMap=new HashMap<Integer, HttpSession>();//在线的人的map集合
	public void attributeAdded(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		if(event.getName().equals("loginUser")) {
			HttpSession session = event.getSession();//获取用户当前的session
			session.removeAttribute("error");
			int uid=((Users)event.getValue()).getUid();//获取当前用户的uid
			/*System.out.println("uid"+uid);*/
			if(userMap.containsKey(uid)) {//该用户已经在别处登录
				//将之前的session去掉
				HttpSession oldSession=userMap.get(uid);
				oldSession.setAttribute("sessionId",oldSession.getId());
				oldSession.setAttribute("error","你的账号在别处登录,您已被挤下线");
				oldSession.removeAttribute("loginUser");
				userMap.remove(uid);		
			}
			//新用户加入到map集合
			userMap.put(uid,session);
		}
		
	}

	public void attributeRemoved(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub

	}

	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}
	

}
